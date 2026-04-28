ServerEvents.recipes(recipes => {
    recipes.shaped(
        Item.of('minecraft:armadillo_spawn_egg', 1),
        [
          "aaa",
          "aea",
          "aaa"
        ],
        {
          "a": "minecraft:armadillo_scute",
          "e": "minecraft:egg"
        }
    );


    recipes.shaped(
        Item.of('minecraft:bee_spawn_egg', 1),
        [
          "h h",
          " e ",
          "h h"
        ],
        {
          "h": "minecraft:honeycomb",
          "e": "minecraft:egg"
        }
    );


    

    recipes.shaped(
        Item.of('minecraft:drowned_spawn_egg', 1),
        [
          "p p",
          " z ",
          "pwp"
        ],
        {
          "p": 'minecraft:potion[potion_contents={potion:"minecraft:water"}]',
          "z": "minecraft:zombie_spawn_egg",
          "w": "minecraft:water_bucket"
        }
    );


    recipes.shaped(
        Item.of('minecraft:evoker_spawn_egg', 1),
        [
          "eee",
          "EZE",
          " t "
        ],
        {
          "e": "minecraft:emerald",
          "E": "minecraft:experience_bottle",
          "Z": "minecraft:egg",
          "t": "minecraft:totem_of_undying"
        }
    );


    recipes.shaped(
        Item.of('minecraft:guardian_spawn_egg', 1),
        [
          "pPp",
          "PeP",
          "pPp"
        ],
        {
          "p": "minecraft:prismarine_shard",
          "P": "minecraft:prismarine_crystals",
          "e": "minecraft:egg"
        }
    );


    // we don't have mynethersdelight anymore, so this recipe can't work.
    /*
    craftingTable.addShaped("ctgui/new/reliquary/reliquary.fragment_to_spawn_egg.item.minecraft.hoglin_spawn_egg_0", <item:minecraft:hoglin_spawn_egg>, [
        [IIngredientEmpty.getInstance(), <item:mynethersdelight:hoglin_hide>, IIngredientEmpty.getInstance()],
        [<item:mynethersdelight:hoglin_loin>, <item:minecraft:egg>, <item:mynethersdelight:hoglin_loin>]]);
    */

    recipes.shaped(
        Item.of('minecraft:vindicator_spawn_egg', 1),
        [
          "eie",
          "eEe",
          "eie"
        ],
        {
          "e": "minecraft:emerald",
          "i": "minecraft:iron_axe",
          "E": "minecraft:egg"
        }
    );


    recipes.shaped(
        Item.of('minecraft:witch_spawn_egg', 1),
        [
          "g G",
          "ser",
          "S p"
        ],
        {
          "g": "minecraft:gunpowder",
          "G": "minecraft:glowstone_dust",
          "s": "minecraft:spider_eye",
          "e": "minecraft:egg",
          "r": "minecraft:redstone",
          "S": "minecraft:sugar",
          "p": "minecraft:potion"
        }
    );


    recipes.shaped(
        Item.of('minecraft:wither_skeleton_spawn_egg', 1),
        [
          "bsb",
          "cec",
          "bcb"
        ],
        {
          "b": "minecraft:bone",
          "s": "minecraft:stone_sword",
          "c": "minecraft:coal",
          "e": "minecraft:egg"
        }
    );


    recipes.shaped(
        Item.of('minecraft:elder_guardian_spawn_egg', 1),
        [
          "dsd",
          "dgd",
          "ddd"
        ],
        {
          "d": "minecraft:dark_prismarine",
          "s": "minecraft:sponge",
          "g": "minecraft:guardian_spawn_egg"
        }
    );


    recipes.shapeless(
        Item.of('minecraft:piglin_brute_spawn_egg', 1),
        [
          "minecraft:piglin_spawn_egg",
          "minecraft:golden_axe"
        ]
    );


    recipes.shaped(
        Item.of('minecraft:enderman_spawn_egg', 1),
        [
          " e ",
          "eEe",
          " e "
        ],
        {
          "e": "minecraft:ender_pearl",
          "E": "minecraft:egg"
        }
    );


    

    recipes.shaped(
        Item.of('minecraft:blaze_spawn_egg', 1),
        [
          "bbb",
          "BeB",
          "bbb"
        ],
        {
          "b": "minecraft:blaze_powder",
          "B": "minecraft:blaze_rod",
          "e": "minecraft:egg"
        }
    );


    recipes.shaped(
        Item.of('minecraft:bogged_spawn_egg', 1),
        [
          "ttt",
          "teb",
          "bbb"
        ],
        {
          "t": [
              'minecraft:tipped_arrow[potion_contents={potion:"minecraft:poison"}]',
              'minecraft:tipped_arrow[potion_contents={potion:"minecraft:poison"}]',
              'minecraft:tipped_arrow[potion_contents={potion:"minecraft:strong_poison"}]',
          ],
          "e": "minecraft:egg",
          "b": "minecraft:bone"
        }
    );


    recipes.shaped(
        Item.of('minecraft:axolotl_spawn_egg', 1),
        [
          "m c",
          "Ces",
          "c m"
        ],
        {
          "m": "minecraft:moss_block",
          "c": "minecraft:clay",
          "C": "minecraft:cod_bucket",
          "e": "minecraft:egg",
          "s": "minecraft:salmon_bucket"
        }
    );


    

    recipes.shaped(
        Item.of('minecraft:breeze_spawn_egg', 1),
        [
          "wbw",
          "wew",
          "wbw"
        ],
        {
          "w": "minecraft:wind_charge",
          "b": "minecraft:breeze_rod",
          "e": "minecraft:egg"
        }
    );


    recipes.shaped(
        Item.of('minecraft:breeze_spawn_egg', 1),
        [
          "bBb",
          "beb",
          "bBb"
        ],
        {
          "b": "create_compat_core:breeze_powder",
          "B": "minecraft:breeze_rod",
          "e": "minecraft:egg"
        }
    );


    

    

    recipes.shaped(
        Item.of('minecraft:creeper_spawn_egg', 1),
        [
          "ggg",
          "tet",
          "ggg"
        ],
        {
          "g": "#c:gunpowders",
          "t": "minecraft:tnt",
          "e": "minecraft:egg"
        }
    );


    recipes.shaped(
        Item.of('minecraft:zombie_spawn_egg', 1),
        [
          "rrr",
          "iei",
          "rrr"
        ],
        {
          "r": "minecraft:rotten_flesh",
          "i": "#c:ingots/iron",
          "e": "minecraft:egg"
        }
    );


    recipes.shaped(
        Item.of('minecraft:zombie_villager_spawn_egg', 1),
        [
          "ggg",
          "gzg",
          "ggg"
        ],
        {
          "g": "#c:gems/emerald",
          "z": "minecraft:zombie_spawn_egg"
        }
    );


    recipes.shaped(
        Item.of('minecraft:husk_spawn_egg', 1),
        [
          "srs",
          "rzr",
          "srs"
        ],
        {
          "s": "#c:sands",
          "r": "minecraft:rotten_flesh",
          "z": "minecraft:zombie_spawn_egg"
        }
    );


    recipes.shaped(
        Item.of('minecraft:endermite_spawn_egg', 1),
        [
          "e  ",
          "E  ",
          "e  "
        ],
        {
          "e": "#c:ender_pearls",
          "E": "minecraft:egg"
        }
    );


    recipes.shaped(
        Item.of('minecraft:fox_spawn_egg', 1),
        [
          " f ",
          "fef",
          " f "
        ],
        {
          "f": "#minecraft:fox_food",
          "e": "minecraft:egg"
        }
    );


    recipes.shaped(
        Item.of('minecraft:piglin_spawn_egg', 1),
        [
          "ici",
          "nen",
          "igi"
        ],
        {
          "i": "#c:ingots/gold",
          "c": "minecraft:crossbow",
          "n": "#c:nuggets/gold",
          "e": "minecraft:egg",
          "g": "minecraft:golden_sword"
        }
    );


    recipes.shaped(
        Item.of('minecraft:pillager_spawn_egg', 1),
        [
          "ggg",
          "iec",
          "ggg"
        ],
        {
          "g": "#c:gems/emerald",
          "i": "minecraft:iron_axe",
          "e": "minecraft:egg",
          "c": "minecraft:crossbow"
        }
    );


    recipes.shaped(
        Item.of('minecraft:rabbit_spawn_egg', 1),
        [
          "rrr",
          "geg",
          "rrr"
        ],
        {
          "r": "#minecraft:rabbit_food",
          "g": "minecraft:golden_carrot",
          "e": "minecraft:egg"
        }
    );


    recipes.shaped(
        Item.of('minecraft:stray_spawn_egg', 1),
        [
          "bab",
          "teb",
          "bab"
        ],
        {
          "b": "#c:bones",
          "a": [
            "minecraft:tipped_arrow[potion_contents={potion: \"minecraft:slowness\"}]",
            "minecraft:tipped_arrow[potion_contents={potion: \"minecraft:long_slowness\"}]",
            "minecraft:tipped_arrow[potion_contents={potion: \"minecraft:strong_slowness\"}]",
            "reliquary:tipped_arrow[potion_contents={custom_effects: [{duration: 62, id: \"minecraft:slowness\", show_icon: true, \"neoforge:cures\": [\"protected_by_totem\", \"milk\"]}]}]",
            "reliquary:tipped_arrow[potion_contents={custom_effects: [{duration: 125, amplifier: 1, id: \"minecraft:slowness\", show_icon: true, \"neoforge:cures\": [\"protected_by_totem\", \"milk\"]}]}]"
          ],
          "t": "#c:tools/bow",
          "e": "minecraft:egg"
        }
    );


    recipes.shaped(
        Item.of('minecraft:wandering_trader_spawn_egg', 1),
        [
          "fff",
          "lel",
          "gfg"
        ],
        {
          "f": "#c:foods/bread",
          "l": "minecraft:lead",
          "e": "minecraft:egg",
          "g": "#c:gems/emerald"
        }
    );


    recipes.shaped(
        Item.of('artifacts:mimic_spawn_egg', 1),
        [
          "drd",
          "RcR",
          "drd"
        ],
        {
          "d": "#c:dusts/redstone",
          "r": "minecraft:rotten_flesh",
          "R": "minecraft:redstone_torch",
          "c": "#c:chests"
        }
    );


    recipes.shaped(
        Item.of('irons_spellbooks:dead_king_corpse_spawn_egg', 1),
        [
          "ena",
          "eEa",
          "eba"
        ],
        {
          "e": "irons_spellbooks:epic_ink",
          "n": "irons_spellbooks:necronomicon_spell_book",
          "a": "irons_spellbooks:arcane_essence",
          "E": "minecraft:egg",
          "b": "irons_spellbooks:blood_staff"
        }
    );


    recipes.shaped(
        Item.of('minecraft:warden_spawn_egg', 1),
        [
          "sss",
          "SeZ",
          "scs"
        ],
        {
          "s": "minecraft:sculk",
          "S": "minecraft:sculk_sensor",
          "e": "minecraft:egg",
          "Z": "minecraft:sculk_shrieker",
          "c": "minecraft:sculk_catalyst"
        }
    );


    recipes.shaped(
        Item.of('minecraft:squid_spawn_egg', 1),
        [
          "iii",
          "wew",
          "iii"
        ],
        {
          "i": "minecraft:ink_sac",
          "w": "minecraft:water_bucket",
          "e": "minecraft:egg"
        }
    );
});
