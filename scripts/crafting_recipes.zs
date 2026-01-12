// Add a shaped crafting recipe for a minecolonies ancient tome
craftingTable.addShaped("minecolonies_ancient_tome_without_raiders", <item:minecolonies:ancienttome>, [
    [<item:minecraft:experience_bottle>, <item:minecraft:air>, <item:minecraft:experience_bottle>],
    [<item:minecraft:experience_bottle>, <item:minecraft:book>, <item:minecraft:experience_bottle>],
    [<item:minecraft:experience_bottle>, <item:minecraft:air>, <item:minecraft:experience_bottle>]
]);

// paper + paper + string => nametag
craftingTable.addShaped("custom/name_tag", <item:minecraft:name_tag>, [
    [<item:minecraft:air>, <item:minecraft:air>, <item:miencraft:string>],
    [<item:miencraft:air>, <item:minecraft:paper>, <item:minecraft:air>],
    [<item:minecraft:paper>, <item:minecraft:air>, <item:minecraft:air>]
]);

/*
craftingTable.addShaped("ctgui/new/create_compat_core/crafting_totem_of_undying_0", <item:minecraft:totem_of_undying>, [
    [<item:minecraft:emerald>, <item:minecraft:diamond>, <item:minecraft:emerald>],
    [<item:minecraft:diamond>, <item:minecraft:enchanted_golden_apple>, <item:minecraft:diamond>],
    [<item:minecraft:emerald>, <item:minecraft:diamond>, <item:minecraft:emerald>]]);
*/
craftingTable.addShaped("ctgui/new/bhc/enchanted_golden_apple_0", <item:minecraft:enchanted_golden_apple>, [
    [<item:minecraft:book>, <item:minecraft:experience_bottle>, <item:minecraft:book>],
    [<item:minecraft:experience_bottle>, <item:minecraft:golden_apple>, <item:minecraft:experience_bottle>],
    [<item:minecraft:book>, <item:minecraft:experience_bottle>, <item:minecraft:book>]]);

craftingTable.addShaped("ctgui/new/crafting/experience_bottle_0", <item:minecraft:experience_bottle> * 16, [
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>],
    [<item:minecraft:gold_ingot>, <item:minecraft:glass_bottle>, <item:minecraft:gold_ingot>],
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]]);

furnace.addRecipe("ctgui/new/smelting/leather_0", <item:minecraft:leather>, <item:minecraft:rotten_flesh>, 0.0, 200);

furnace.addRecipe("ctgui/new/smelting/coal_0", <item:minecraft:coal>, <item:minecraft:charcoal>, 0.0, 200);

blastFurnace.addRecipe("ctgui/new/blasting/diamond_0", <item:minecraft:diamond>, <item:minecraft:coal_block>, 0.0, 100);

craftingTable.addShaped("ctgui/new/crafting/netherite_ingot_0", <item:minecraft:netherite_ingot>, [
    [<item:minecraft:diamond>, <item:minecraft:coal_block>, <item:minecraft:diamond>],
    [<item:minecraft:emerald_block>, <item:minecraft:diamond>, <item:minecraft:emerald_block>],
    [<item:minecraft:diamond>, <item:minecraft:coal_block>, <item:minecraft:diamond>]]);

craftingTable.addShaped("ctgui/new/crafting/neptunium_ingot_0", <item:aquaculture:neptunium_ingot>, [
    [<item:minecraft:prismarine_shard>, <item:minecraft:diamond>, <item:minecraft:prismarine_shard>],
    [<item:minecraft:prismarine_crystals>, <item:minecraft:prismarine_shard>, <item:minecraft:prismarine_crystals>],
    [<item:minecraft:prismarine_shard>, <item:minecraft:iron_ingot>, <item:minecraft:prismarine_shard>]]);

craftingTable.addShaped("ctgui/new/crafting/prismarine_shard_0", <item:minecraft:prismarine_shard> * 4, [
    [<item:minecraft:iron_nugget>, <item:minecraft:gold_nugget>, <item:minecraft:iron_nugget>],
    [<item:minecraft:potion>, <item:minecraft:gold_nugget>, <item:minecraft:potion>],
    [<item:minecraft:iron_nugget>, <item:minecraft:gold_nugget>, <item:minecraft:iron_nugget>]]);

craftingTable.addShaped("ctgui/new/crafting/prismarine_crystals_0", <item:minecraft:prismarine_crystals> * 4, [
    [<item:minecraft:gold_nugget>, <item:minecraft:glowstone_dust>, <item:minecraft:gold_nugget>],
    [<item:minecraft:potion>, <item:minecraft:glowstone_dust>, <item:minecraft:potion>],
    [<item:minecraft:gold_nugget>, <item:minecraft:glowstone_dust>, <item:minecraft:gold_nugget>]]);

craftingTable.addShaped("ctgui/new/crafting/nether_star_0", <item:minecraft:nether_star>, [
    [<item:minecraft:gold_block>, <item:minecraft:lapis_block>, <item:minecraft:gold_block>],
    [<item:minecraft:netherite_ingot>, <item:minecraft:diamond_block>, <item:minecraft:netherite_ingot>],
    [<item:minecraft:quartz_block>, <item:minecraft:lapis_block>, <item:minecraft:quartz_block>]]);

ccraftingTable.addShaped("custom/gilded_blackstone", <item:minecraft:gilded_blackstone>, [
    [<item:minecraft:air>, <item:minecraft:gold_nugget>, <item:minecraft:air>],
    [<item:minecraft:gold_nugget>, <item:minecraft:blackstone>, <item:minecraft:gold_nugget>],
    [<item:minecraft:air>, <item:minecraft:gold_nugget>, <item:minecraft:air>]]);
