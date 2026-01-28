#!/usr/bin/env ruby

def normalize(name)
  name = name.strip.gsub("'", '')
  multiplier = ""
  modifier = ""

  if name =~ /(.*) \(X(\d)\)$/
    name = $1
    multiplier = " * #$2"
  end

  if name =~ /(ominous bottle) \(bad omen (\d)\)$/
    name = $1
    amplifier = $2.to_i
    if amplifier > 1
      modifier = ".withJsonComponent(<componenttype:minecraft:ominous_bottle_amplifier>, #{amplifier - 1})"
    end
  end

  if name == 'water bottle'
    name = "potion"
    modifier = ".withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: \"minecraft:water\"})"
  end

  name =
    case name
    when ""
      "air"
    when "bucket of water"
      "water bucket"
    when "whirlsprig broom"
      "whirling broom"
    when "dragons breath"
      "dragon breath"
    when "ominous banner"
      "white banner"
    when /whirlsprig/
      name.sub('whirlsprig', 'whirlisprig')
    when /block of (.*)/
      "#{$1} block"
    else
      name
    end

  category =
    case name
    when "ring of thrift", "ballistarian bracer", "archmage glove", "whirling broom", /wild hunter/, /wild stalker/
      "reliquified_ars_nouveau"
    when /^source /, /^wilden /, /whirlisprig/, /archmage/
      "ars_nouveau"
    when "mana ring", /dragonskin/
      "irons_spellbooks"
    else
      "minecraft"
    end

  name = name.gsub(' ', '_')

  "<item:#{category}:#{name}>#{modifier}#{multiplier}"
end

def parse_line(line)
  line.split("\t").map(&method(:normalize))
end

def extract_output(parts)
  output = parts.pop
  parts.pop if parts.last.include?('=')

  [parts, output]
end

def parse_chunk(chunk)
  parts = chunk.split("\n").map(&method(:parse_line))
  parts[1], output = extract_output(parts[1])
  { recipe: parts, output: output }
end

chunks = DATA.read.split("\n\n")

File.open(File.join(__dir__, "..", "scripts", "crafting_recipes-generated.zs"), "w") do |f|
  chunks.each do |chunk|
    chunk = parse_chunk(chunk)
    recipe = chunk[:recipe]
    output = chunk[:output]

    recipe = recipe.map {|parts| "  [#{parts.join(", ")}]" }

    output_name = output.split(":").last.split(">").first
    if output =~ /.withJsonComponent\(<componenttype:minecraft:ominous_bottle_amplifier>, (\d)\)/
      output_name += "/bad_omen_#{$1.to_i + 1}"
    end

    comment = output_name.include?('bad_omen')

    f.puts <<~EOF
  craftingTable.addShaped("custom/#{output_name}", #{output}, [
    #{recipe.join(",\n  ")}
  ]);

    EOF
  end
end


__END__
gold ingot	diamond	emerald 		
diamond	enchanted golden apple	diamond	 =	totem of undying
emerald	block of gold	gold ingot

gold nugget	source gem	gold nugget		
gold ingot		gold ingot	 =	mana ring
gold ingot	gold ingot	gold ingot

gold ingot	source gem	gold ingot		
source gem		source gem	 =	ring of thrift
gold ingot	gold ingot	gold ingot

block of gold	crossbow		
source gem	bow 	 =	ballistarian bracer
bow	gold ingot

wilden horn	wilden horn	wilden horn		
wilden horn	source gem	wilden horn	 =	horn of the wild hunter
wilden horn	wilden horn	wilden horn

phantom membrane	phantom membrane	phantom membrane		
phantom membrane	source gem block	phantom membrane	 =	wing of the wild stalker
phantom membrane	phantom membrane	phantom membrane

source gem	stick	source gem		
	stick		 =	whirlsprig broom
source gem	brush	source gem

leather	source gem block	leather		
leather	source gem block	leather	 =	archmage glove
leather	leather	leather

	emerald			
	ominous banner		 =	ominous bottle (bad omen 1)
	water bottle

	emerald			
	ominous bottle (bad omen 1)		 =	ominous bottle (bad omen 2)
	emerald			

	emerald			
ominous banner	ominous bottle (bad omen 2)		 =	ominous bottle (bad omen 3)
	emerald			

	emerald			
ominous banner	ominous bottle (bad omen 3)	emerald	 =	ominous bottle (bad omen 4)
	emerald			

	emerald 	ominous banner		
ominous banner	ominous bottle (bad omen 4)	emerald	 =	ominous bottle (bad omen 5)
ominous banner	emerald 			

dragonskin		dragonskin		
	skeleton skull		 =	dragon head
dragonskin	dragon's breath	dragonskin

glass bottle	glass bottle	glass bottle		
dragonskin	glass bottle	dragonskin	 =	dragons breath (X7)
glass bottle	glass bottle	glass bottle
