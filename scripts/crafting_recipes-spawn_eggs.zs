import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.ingredient.IIngredient;

craftingTable.addShaped("ctgui/new/crafting/armadillo_spawn_egg_0", <item:minecraft:armadillo_spawn_egg>, [
    [<item:minecraft:armadillo_scute>, <item:minecraft:armadillo_scute>, <item:minecraft:armadillo_scute>],
    [<item:minecraft:armadillo_scute>, <item:minecraft:egg>, <item:minecraft:armadillo_scute>],
    [<item:minecraft:armadillo_scute>, <item:minecraft:armadillo_scute>, <item:minecraft:armadillo_scute>]]);

craftingTable.addShaped("ctgui/new/crafting/bee_spawn_egg_0", <item:minecraft:bee_spawn_egg>, [
    [<item:minecraft:honeycomb>, IIngredientEmpty.getInstance(), <item:minecraft:honeycomb>],
    [IIngredientEmpty.getInstance(), <item:minecraft:egg>, IIngredientEmpty.getInstance()],
    [<item:minecraft:honeycomb>, IIngredientEmpty.getInstance(), <item:minecraft:honeycomb>]]);

craftingTable.addShaped("ctgui/new/reliquary/reliquary.fragment_to_spawn_egg.item.minecraft.bogged_spawn_egg_0", <item:minecraft:bogged_spawn_egg>, [
    [<item:minecraft:tipped_arrow>, <item:minecraft:tipped_arrow>, <item:minecraft:tipped_arrow>],
    [<item:minecraft:tipped_arrow>, <item:minecraft:egg>, <item:minecraft:bone>],
    [<item:minecraft:bone>, <item:minecraft:bone>, <item:minecraft:bone>]]);

craftingTable.addShaped("ctgui/new/reliquary/reliquary.fragment_to_spawn_egg.item.minecraft.breeze_spawn_egg_0", <item:minecraft:breeze_spawn_egg>, [
    [<item:create_compat_core:breeze_powder>, <item:minecraft:breeze_rod>, <item:create_compat_core:breeze_powder>],
    [<item:create_compat_core:breeze_powder>, <item:minecraft:egg>, <item:create_compat_core:breeze_powder>],
    [<item:create_compat_core:breeze_powder>, <item:minecraft:breeze_rod>, <item:create_compat_core:breeze_powder>]]);

craftingTable.addShaped("ctgui/new/crafting/drowned_spawn_egg_0", <item:minecraft:drowned_spawn_egg>, [
    [<item:minecraft:potion>, IIngredientEmpty.getInstance(), <item:minecraft:potion>],
    [IIngredientEmpty.getInstance(), <item:minecraft:zombie_spawn_egg>, IIngredientEmpty.getInstance()],
    [<item:minecraft:potion>, <item:minecraft:water_bucket>, <item:minecraft:potion>]]);

craftingTable.addShaped("ctgui/new/reliquary/reliquary.fragment_to_spawn_egg.item.minecraft.evoker_spawn_egg_0", <item:minecraft:evoker_spawn_egg>, [
    [<item:minecraft:emerald>, <item:minecraft:emerald>, <item:minecraft:emerald>],
    [<item:minecraft:experience_bottle>, <item:minecraft:egg>, <item:minecraft:experience_bottle>],
    [IIngredientEmpty.getInstance(), <item:minecraft:totem_of_undying>, IIngredientEmpty.getInstance()]]);

craftingTable.addShaped("ctgui/new/reliquary/reliquary.fragment_to_spawn_egg.item.minecraft.guardian_spawn_egg_0", <item:minecraft:guardian_spawn_egg>, [
    [<item:minecraft:prismarine_shard>, <item:minecraft:prismarine_crystals>, <item:minecraft:prismarine_shard>],
    [<item:minecraft:prismarine_crystals>, <item:minecraft:egg>, <item:minecraft:prismarine_crystals>],
    [<item:minecraft:prismarine_shard>, <item:minecraft:prismarine_crystals>, <item:minecraft:prismarine_shard>]]);

craftingTable.addShaped("ctgui/new/reliquary/reliquary.fragment_to_spawn_egg.item.minecraft.hoglin_spawn_egg_0", <item:minecraft:hoglin_spawn_egg>, [
    [IIngredientEmpty.getInstance(), <item:mynethersdelight:hoglin_hide>, IIngredientEmpty.getInstance()],
    [<item:mynethersdelight:hoglin_loin>, <item:minecraft:egg>, <item:mynethersdelight:hoglin_loin>]]);

craftingTable.addShaped("ctgui/new/reliquary/reliquary.fragment_to_spawn_egg.item.minecraft.vindicator_spawn_egg_0", <item:minecraft:vindicator_spawn_egg>, [
    [<item:minecraft:emerald>, <item:minecraft:iron_axe>, <item:minecraft:emerald>],
    [<item:minecraft:emerald>, <item:minecraft:egg>, <item:minecraft:emerald>],
    [<item:minecraft:emerald>, <item:minecraft:iron_axe>, <item:minecraft:emerald>]]);

craftingTable.addShaped("ctgui/new/reliquary/reliquary.fragment_to_spawn_egg.item.minecraft.witch_spawn_egg_0", <item:minecraft:witch_spawn_egg>, [
    [<item:minecraft:gunpowder>, IIngredientEmpty.getInstance(), <item:minecraft:glowstone_dust>],
    [<item:minecraft:spider_eye>, <item:minecraft:egg>, <item:minecraft:redstone>],
    [<item:minecraft:sugar>, IIngredientEmpty.getInstance(), <item:minecraft:potion>]]);

craftingTable.addShaped("ctgui/new/reliquary/reliquary.fragment_to_spawn_egg.item.minecraft.wither_skeleton_spawn_egg_0", <item:minecraft:wither_skeleton_spawn_egg>, [
    [<item:minecraft:bone>, <item:minecraft:stone_sword>, <item:minecraft:bone>],
    [<item:minecraft:coal>, <item:minecraft:egg>, <item:minecraft:coal>],
    [<item:minecraft:bone>, <item:minecraft:coal>, <item:minecraft:bone>]]);

craftingTable.addShaped("ctgui/new/craftable_spawner/elder_guardian_spawn_egg_0", <item:minecraft:elder_guardian_spawn_egg>, [
    [<item:minecraft:dark_prismarine>, <item:minecraft:sponge>, <item:minecraft:dark_prismarine>],
    [<item:minecraft:dark_prismarine>, <item:minecraft:guardian_spawn_egg>, <item:minecraft:dark_prismarine>],
    [<item:minecraft:dark_prismarine>, <item:minecraft:dark_prismarine>, <item:minecraft:dark_prismarine>]]);

craftingTable.addShapeless("ctgui/new/craftable_spawner/piglin_brute_spawn_egg_0", <item:minecraft:piglin_brute_spawn_egg>,
    [<item:minecraft:piglin_spawn_egg>, <item:minecraft:golden_axe>]);

craftingTable.addShaped("ctgui/new/reliquary/reliquary.fragment_to_spawn_egg.item.minecraft.enderman_spawn_egg_0", <item:minecraft:enderman_spawn_egg>, [
    [IIngredientEmpty.getInstance(), <item:minecraft:ender_pearl>, IIngredientEmpty.getInstance()],
    [<item:minecraft:ender_pearl>, <item:minecraft:egg>, <item:minecraft:ender_pearl>],
    [IIngredientEmpty.getInstance(), <item:minecraft:ender_pearl>, IIngredientEmpty.getInstance()]]);
