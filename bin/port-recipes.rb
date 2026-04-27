#!/usr/bin/env ruby

require 'io/console'
require 'json'

EMPTY_ITEMS = [
  'minecraft:air',
  'IIngredientEmpty.getInstance()',
]

CRAFTING_TABLE_SHAPED = %r{
craftingTable\.addShaped\("[^"]+",\s\<item:([^>]+)\>(?:\s\*\s(\d+))?,\s\[\n
(\s*\[(.+)\],\n
\s*\[(.+)\],\n
\s*\[(.+)\],?\n?)
\]\);
}x

CRAFTING_TABLE_SHAPELESS = %r{
craftingTable.addShapeless\("[^"]+",\s\<item:([^>]+)\>(?:\s\*\s(\d+))?,\n
(\s*\[(.+)\])\);
}x


def clear
  puts "\e[H\e[2J"
end

def getch
  char = STDIN.getch(intr: true)
  puts char
  char
rescue Interrupt
  puts "^C"
  exit 1
end

def item_to_name(item)
  item = item.strip

  if item =~ /^\<item:(.*)\>$/
    $1
  elsif item =~ /^\<tag:item:(.*)\>$/
    "#$1"
  else
    item
  end
end

def process_vars(part, vars)
  lines = part.split("\n").map(&:strip)
  lines.map { |line|
    if line =~ /^var\s+([^\s]+)\s+=\s+([^;]+);/
      vars[$1] = item_to_name($2);
      nil
    else
      "// #{line}"
    end
  }.reject(&:nil?).join("\n")
end

require 'pp'
def convert_part(part, vars)
  part = part.strip

  if part.empty?
    ''
  elsif (part.start_with?('/*') || part.start_with?('//')) && part.end_with?('*/')
    part
  elsif part =~ /^var .* = .*;/
    process_vars(part, vars)
  elsif part.start_with?('craftingTable.') && part.include?('.withJsonComponent')
    <<~EOF
    /* FIXME: Not converted because of .withJsonComponent()
    #{part}
    */
    EOF
  elsif part =~ CRAFTING_TABLE_SHAPELESS
    output = $1
    quantity = $2 || 1
    inputs = $3.
      split(",").
      map(&method(:item_to_name)).
      map { |item| vars.fetch(item, item) }.
      reject { |item| EMPTY_ITEMS.include?(item) }

      recipe = JSON.pretty_generate(inputs)

    <<~EOF
recipes.shapeless(
    Item.of('#{output}', #{quantity}),
    #{recipe.gsub("\n", "\n    ")}
);
    EOF

  elsif part =~ CRAFTING_TABLE_SHAPED
    output = $1
    quantity = $2 || 1
    input_lines = $3.split(",\n").map { |l|
      l.sub(/\[(.*)\]/, '\1').split(',').map(&method(:item_to_name))
    }

    inputs = input_lines.
      flatten.
      uniq.
      map { |item| vars.fetch(item, item) }.
      reject { |item| EMPTY_ITEMS.include?(item) }
    input_map = {}

    puts "# Recipe for #{quantity}x #{output}"

    input_map = {}
    inputs.each do |item|
      name = item.split(':').last
      name_chunks = name.split('_')

      candidates = [
        name[0],
        name[0].upcase,
        *name_chunks.map { |c| c[0] },
        *name_chunks.map { |c| c[0].upcase },
        *('A'..'Z').to_a.reverse,
      ]

      candidates.each do |candidate|
        if !input_map.keys.include?(candidate)
          input_map[candidate] = item
          break
        end
      end
    end

    if input_map.length != inputs.length
      puts "!!!! Couldn't find possible input map for recipe:"
      puts
      puts part
      abort
    end

    puts
    puts "Input items:"
    puts inputs.map {|x| "- #{x}"}
    puts

    puts "This is the proposed mapping:"
    puts input_map.map {|k, v| "  #{k}: #{v}"}

    recipe = input_lines.map { |line|
      line.map { |item|
        if EMPTY_ITEMS.include?(item)
          ' '
        else
          input_map.key(item)
        end
      }.join('')
    }

    recipe = JSON.pretty_generate(recipe)
    mapping = JSON.pretty_generate(input_map)

    <<~EOF
recipes.shaped(
    Item.of('#{output}', #{quantity}),
    #{recipe.gsub("\n", "\n    ")},
    #{mapping.gsub("\n", "\n    ")}
);
    EOF
  else
    <<~EOF
    /* FIXME: Not converted.
    #{part}
    */
    EOF
  end
end

def migrate(infile)
  clear

  outfile = infile
    .sub(%r[^scripts/], 'kubejs/server_scripts/')
    .sub(%r[\.zs$], '.js')

  puts "Converting"
  puts "  from: #{infile}"
  puts "    to: #{outfile}"
  puts

  print "Is that correct? [Y/n] "
  exit unless ['y', ''].include?(getch.strip.downcase)

  source = File.read(infile)
  source = source.
    split("\n").
    reject {|x| x.start_with?('import ') && x.end_with?(';') }.
    join("\n")

  parts = source.split("\n\n")

  vars = {}
  parts.map! do |part|
    clear
    convert_part(part, vars)
  end

  File.open(outfile, 'w') { |f|
    f.puts parts.join("\n\n")
  }
end

Dir['scripts/*.zs'].each(&method(:migrate))
