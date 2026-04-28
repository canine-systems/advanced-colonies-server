ServerEvents.recipes(recipes => {
    recipes.shaped(
        Item.of('minecraft:totem_of_undying', 1),
        [
          "gde",
          "dEd",
          "eGg"
        ],
        {
          "g": "minecraft:gold_ingot",
          "d": "minecraft:diamond",
          "e": "minecraft:emerald",
          "E": "minecraft:enchanted_golden_apple",
          "G": "minecraft:gold_block"
        }
    );


    recipes.shaped(
        Item.of('irons_spellbooks:mana_ring', 1),
        [
          "gsg",
          "G G",
          "GGG"
        ],
        {
          "g": "minecraft:gold_nugget",
          "s": "ars_nouveau:source_gem",
          "G": "minecraft:gold_ingot"
        }
    );


    recipes.shaped(
        Item.of('minecraft:ominous_bottle', 1),
        [
          " e ",
          " w ",
          " W "
        ],
        {
          "e": "minecraft:emerald",
          "w": "minecraft:white_banner",
          "W": "minecraft:potion[potion_contents={potion: \"minecraft:water\"}]"
        }
    );


    /* FIXME: Not converted.
    craftingTable.addShaped("custom/ominous_bottle_amplifier/bad_omen_2", <item:minecraft:ominous_bottle>.withJsonComponent(<componenttype:minecraft:ominous_bottle_amplifier>,1), [
        [<item:minecraft:air>, <item:minecraft:emerald>],
        [<item:minecraft:air>, <item:minecraft:ominous_bottle>, <item:minecraft:air>],
        [<item:minecraft:air>, <item:minecraft:emerald>]
    ]);
    */


    /* FIXME: Not converted.
    craftingTable.addShaped("custom/ominous_bottle_amplifier/bad_omen_3", <item:minecraft:ominous_bottle>.withJsonComponent(<componenttype:minecraft:ominous_bottle_amplifier>,2), [
        [<item:minecraft:air>, <item:minecraft:emerald>],
        [<item:minecraft:white_banner>, <item:minecraft:ominous_bottle>.withJsonComponent(<componenttype:minecraft:ominous_bottle_amplifier>,1), <item:minecraft:air>],
        [<item:minecraft:air>, <item:minecraft:emerald>]
    ]);
    */


    /* FIXME: Not converted.
    craftingTable.addShaped("custom/ominous_bottle_amplifier/bad_omen_4", <item:minecraft:ominous_bottle>.withJsonComponent(<componenttype:minecraft:ominous_bottle_amplifier>,3), [
        [<item:minecraft:air>, <item:minecraft:emerald>],
        [<item:minecraft:white_banner>, <item:minecraft:ominous_bottle>.withJsonComponent(<componenttype:minecraft:ominous_bottle_amplifier>,2), <item:minecraft:emerald>],
        [<item:minecraft:air>, <item:minecraft:emerald>]
    ]);
    */


    /* FIXME: Not converted.
    craftingTable.addShaped("custom/ominous_bottle_amplifier/bad_omen_5", <item:minecraft:ominous_bottle>.withJsonComponent(<componenttype:minecraft:ominous_bottle_amplifier>,4), [
        [<item:minecraft:air>, <item:minecraft:emerald>, <item:minecraft:white_banner>],
        [<item:minecraft:white_banner>, <item:minecraft:ominous_bottle>.withJsonComponent(<componenttype:minecraft:ominous_bottle_amplifier>,3), <item:minecraft:emerald>],
        [<item:minecraft:white_banner>, <item:minecraft:emerald>]
    ]);
    */


    recipes.shaped(
        Item.of('minecraft:dragon_head', 1),
        [
          "d d",
          " s ",
          "dDd"
        ],
        {
          "d": "irons_spellbooks:dragonskin",
          "s": "minecraft:skeleton_skull",
          "D": "minecraft:dragon_breath"
        }
    );


    recipes.shaped(
        Item.of('minecraft:dragon_breath', 7),
        [
          "ggg",
          "dgd",
          "ggg"
        ],
        {
          "g": "minecraft:glass_bottle",
          "d": "irons_spellbooks:dragonskin"
        }
    );
});
