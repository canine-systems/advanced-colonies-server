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

    // Bad Omen
    recipes.shaped(
        Item.of('minecraft:ominous_bottle', 1),
        [
          " e ",
          " w ",
          " W "
        ],
        {
          "e": "minecraft:emerald",
          "w": "minecraft:white_banner[banner_patterns=[{color:\"cyan\",pattern:\"minecraft:rhombus\"},{color:\"light_gray\",pattern:\"minecraft:stripe_bottom\"},{color:\"gray\",pattern:\"minecraft:stripe_center\"},{color:\"light_gray\",pattern:\"minecraft:border\"},{color:\"black\",pattern:\"minecraft:stripe_middle\"},{color:\"light_gray\",pattern:\"minecraft:half_horizontal\"},{color:\"light_gray\",pattern:\"minecraft:circle\"},{color:\"black\",pattern:\"minecraft:border\"}],hide_additional_tooltip={},item_name='{\"color\":\"gold\",\"translate\":\"block.minecraft.ominous_banner\"}']",
          "W": "minecraft:potion[potion_contents={potion: \"minecraft:water\"}]"
        }
    );

    // Bad Omen II
    recipes.shaped(
        Item.of('minecraft:ominous_bottle[ominous_bottle_amplifier=1]', 1),
        [
            " e ",
            " b ",
            " e "
        ],
        {
            "e": "minecraft:emerald",
            "b": "minecraft:ominous_bottle"
        }
    );

    // Bad Omen III
    recipes.shaped(
    Item.of('minecraft:ominous_bottle[ominous_bottle_amplifier=2]', 1),
        [
            " e ",
            "wb ",
            " e "
        ],
        {
            "e": "minecraft:emerald",
            "b": "minecraft:ominous_bottle[ominous_bottle_amplifier=1]"
            "w": "minecraft:white_banner[banner_patterns=[{color:\"cyan\",pattern:\"minecraft:rhombus\"},{color:\"light_gray\",pattern:\"minecraft:stripe_bottom\"},{color:\"gray\",pattern:\"minecraft:stripe_center\"},{color:\"light_gray\",pattern:\"minecraft:border\"},{color:\"black\",pattern:\"minecraft:stripe_middle\"},{color:\"light_gray\",pattern:\"minecraft:half_horizontal\"},{color:\"light_gray\",pattern:\"minecraft:circle\"},{color:\"black\",pattern:\"minecraft:border\"}],hide_additional_tooltip={},item_name='{\"color\":\"gold\",\"translate\":\"block.minecraft.ominous_banner\"}']",
        }
    );

    // Bad Omen IV
    recipes.shaped(
        Item.of('minecraft:ominous_bottle[ominous_bottle_amplifier=3]', 1),
        [
            " e ",
            "wbe",
            " e "
        ],
        {
            "e": "minecraft:emerald",
            "b": "minecraft:ominous_bottle[ominous_bottle_amplifier=2]"
            "w": "minecraft:white_banner[banner_patterns=[{color:\"cyan\",pattern:\"minecraft:rhombus\"},{color:\"light_gray\",pattern:\"minecraft:stripe_bottom\"},{color:\"gray\",pattern:\"minecraft:stripe_center\"},{color:\"light_gray\",pattern:\"minecraft:border\"},{color:\"black\",pattern:\"minecraft:stripe_middle\"},{color:\"light_gray\",pattern:\"minecraft:half_horizontal\"},{color:\"light_gray\",pattern:\"minecraft:circle\"},{color:\"black\",pattern:\"minecraft:border\"}],hide_additional_tooltip={},item_name='{\"color\":\"gold\",\"translate\":\"block.minecraft.ominous_banner\"}']",
        }
    );

    // Bad Omen V
    recipes.shaped(
        Item.of('minecraft:ominous_bottle[ominous_bottle_amplifier=4]', 1),
        [
            " ew",
            "wbe",
            "we "
        ],
        {
            "e": "minecraft:emerald",
            "b": "minecraft:ominous_bottle[ominous_bottle_amplifier=3]"
            "w": "minecraft:white_banner[banner_patterns=[{color:\"cyan\",pattern:\"minecraft:rhombus\"},{color:\"light_gray\",pattern:\"minecraft:stripe_bottom\"},{color:\"gray\",pattern:\"minecraft:stripe_center\"},{color:\"light_gray\",pattern:\"minecraft:border\"},{color:\"black\",pattern:\"minecraft:stripe_middle\"},{color:\"light_gray\",pattern:\"minecraft:half_horizontal\"},{color:\"light_gray\",pattern:\"minecraft:circle\"},{color:\"black\",pattern:\"minecraft:border\"}],hide_additional_tooltip={},item_name='{\"color\":\"gold\",\"translate\":\"block.minecraft.ominous_banner\"}']",
        }
    );

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
