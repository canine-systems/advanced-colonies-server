ServerEvents.recipes(recipes => {
    //// SMELTING ////

    // cook 1x rotten flesh => 1x leather, no XP, 20 ticks (1 sescond)
    recipes.smelting('minecraft:leather', 'minecraft:rotten_flesh', 0.0, 20);


    //// BLASTING ////

    // blast 1x graphite block => 1x diamond, no XP, 100 ticks (5 seconds)
    recipes.blasting('minecraft:diamond', 'bigreactors:graphite_block', 0.0, 100);


    //// SHAPELESS CRAFTING ////

    // 1x charcoal => 1x coal
    recipe.shapeless(
        Item.of('minecraft:coal', 1),
        ['minecraft:charcoal']
    );

    // 1x wilden wing => 2x miners delight bat wing
    recipes.shapeless(
        Item.of('minersdelight:bat_wing', 2),
        ['ars_nouveau:wilden_wing']
    );
    // 1x miner's delight bat wing => 1x reliquary bat wing
    recipes.shapeless(
        Item.of('reliquary:bat_wing', 1),
        ['minersdelight:bat_wing']
    );
    // 1x reliquary bat wing => 1x miners delight bat wing
    recipes.shapeless(
        Item.of('minersdelight:bat_wing', 1),
        ['reliquary:bat_wing']
    );


    //// SHAPED CRAFTING ////

    // Shaped crafting recipe for MineColonies Ancient Tome
    recipes.shaped(
        Item.of('minecolonies:ancienttome', 1),
        [
            'E E',
            'EBE',
            'E E',
        ],
        {
            E: 'minecraft:experience_bottle',
            B: 'minecraft:book',
        }
    );

    // paper + paper + string => nametag
    recipes.shaped(
        Item.of('minecraft:name_tag', 1),
        [
            '  S',
            ' P ',
            'P  ',
        ],
        {
            S: 'minecraft:string',
            P: 'minecraft:paper',
        }
    );

    // saddle recipe added in 1.21.6
    recipes.shaped(
        Item.of('minecraft:saddle', 1),
        [
            ' L ',
            'LIL',
            '   ',
        ],
        {
            L: 'minecraft:leather',
            I: 'minecraft:iron_ingot',
        }
    );

    // custom saddle recipe that doesn't use iron for no reason
    recipes.shaped(
        Item.of('minecraft:saddle>', 1),
        [
            ' L ',
            'L L',
            'L L',
        ],
        {
            L: 'minecraft:leather',
        }
    );

/*
    recipes.shaped(
        Item.of('minecraft:totem_of_undying', 1),
        [
            'EDE',
            'DAD',
            'EDE',
        ],
        {
            E: 'minecraft:emerald',
            D: 'minecraft:diamond',
            A: 'minecraft:enchanted_golden_apple',
        }
    );
*/

    recipes.shaped(
        Item.of('minecraft:enchanted_golden_apple', 1),
        [
            'BEB',
            'EAE',
            'BEB',
        ],
        {
            B: 'minecraft:book',
            E: 'minecraft:experience_bottle',
            A: 'minecraft:golden_apple',
        }
    );

    recipes.shaped(
        Item.of('minecraft:experience_bottle', 16),
        [
            'GGG',
            'GBG',
            'GGG',
        ],
        {
            G: 'minecraft:gold_ingot',
            B: 'minecraft:glass_bottle',
        }
    );

    recipes.shaped(
        Item.of('minecraft:netherite_ingot', 1),
        [
            'DCD',
            'EDE',
            'DCD',
        ],
        {
            D: 'minecraft:diamond',
            C: 'minecraft:coal_block',
            E: 'minecraft:emerald_block',
        }
    );

    recipes.shaped(
        Item.of('aquaculture:neptunium_ingot', 1),
        [
            'SDS',
            'CSC',
            'SIS',
        ],
        {
            S: 'minecraft:prismarine_shard',
            D: 'minecraft:diamond',
            C: 'minecraft:prismarine_crystals',
        }
    );

    recipes.shaped(
        Item.of('minecraft:prismarine_shard', 4),
        [
            'IGI',
            'PGP',
            'IGI',
        ],
        {
            I: 'minecraft:iron_nugget',
            G: 'minecraft:gold_nugget',
            P: 'minecraft:potion',
        }
    );

    recipes.shaped(
        Item.of('minecraft:prismarine_crystals>', 4),
        [
            'NDN',
            'PDP',
            'NDN',
        ],
        {
            N: 'minecraft:gold_nugget',
            D: 'minecraft:glowstone_dust',
            P: 'minecraft:potion',
        }
    );

    recipes.shaped(
        Item.of('minecraft:nether_star', 1),
        [
            'GLG',
            'NDN',
            'QLQ',
        ],
        {
            G: 'minecraft:gold_block',
            L: 'minecraft:lapis_block',
            Q: 'minecraft:quartz_block',
        }
    );

    recipes.shaped(
        Item.of('minecraft:gilded_blackstone', 1),
        [
            ' G ',
            'GBG',
            ' G ',
        ],
        {
            G: 'minecraft:gold_nugget',
            B: 'minecraft:blackstone',
            G: 'minecraft:gold_nugget',
        }
    );

    recipes.shaped(
        Item.of('minecraft:budding_amethyst', 1),
        [
            'aCa',
            'CAC',
            'BBB',
        ],
        {
            a: 'minecraft:amethyst_shard',
            C: 'minecraft:calcite',
            B: 'minecraft:smooth_basalt',
        }
    );

    recipes.shaped(
        Item.of('minecraft:echo_shard', 1),
        [
            'SSS',
            'SAS',
            'SSS',
        ],
        {
            S: 'minecraft:sculk',
            A: 'minecraft:amethyst_shard',
        }
    );

    recipes.shaped(
        Item.of('irons_spellbooks:ancient_knowledge_fragment', 1),
        [
            'iEA',
            'EPE',
            'CEI',
        ],
        {
            i: 'irons_spellbooks:epic_ink',
            E: 'minecraft:echo_shard',
            A: 'irons_spellbooks:arcane_ingot',
            P: 'minecraft:paper',
            C: 'irons_spellbooks:magic_cloth',
            I: 'irons_spellbooks:legendary_ink',
        }
    );

    // This recipe works, but doesn't show up in EMI for some reason.
    recipes.shaped(
        Item.of('minecraft:bundle', 1),
        [
            ' S ',
            'L L',
            ' L ',
        ],
        {
            S: 'minecraft:string',
            L: 'minecraft:leather',
        }
    );

    recipes.shaped(
        Item.of('minecraft:spawner', 1),
        [
            'BIB',
            'IDI',
            'BIB',
        ],
        {
            B: 'minecraft:iron_bars',
            I: 'minecraft:iron_ingot',
            D: 'minecraft:diamond',
        }
    );

    recipes.shaped(
        Item.of('minecraft:trial_spawner', 1),
        [
            'CIC',
            'ISI',
            'CIC',
        ],
        {
            C: 'minecraft:copper_block',
            I: 'minecraft:iron_ingot',
            S: 'minecraft:spawner',
        }
    );

    recipes.shaped(
        Item.of('minecraft:crying_obsidian', 4),
        [
            'OOO',
            'OWO',
            'OOO',
        ],
        {
            O: 'minecraft:obsidian',
            W: 'minecraft:water_bucket',
        }
    );
});
