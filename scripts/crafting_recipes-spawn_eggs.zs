import crafttweaker.api.ingredient.type.IIngredientEmpty;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.MirrorAxis;

craftingTable.addShaped("ctgui/new/crafting/armadillo_spawn_egg_0", <item:minecraft:armadillo_spawn_egg>, [
    [<item:minecraft:armadillo_scute>, <item:minecraft:armadillo_scute>, <item:minecraft:armadillo_scute>],
    [<item:minecraft:armadillo_scute>, <item:minecraft:egg>, <item:minecraft:armadillo_scute>],
    [<item:minecraft:armadillo_scute>, <item:minecraft:armadillo_scute>, <item:minecraft:armadillo_scute>]]);

craftingTable.addShaped("ctgui/new/crafting/bee_spawn_egg_0", <item:minecraft:bee_spawn_egg>, [
    [<item:minecraft:honeycomb>, IIngredientEmpty.getInstance(), <item:minecraft:honeycomb>],
    [IIngredientEmpty.getInstance(), <item:minecraft:egg>, IIngredientEmpty.getInstance()],
    [<item:minecraft:honeycomb>, IIngredientEmpty.getInstance(), <item:minecraft:honeycomb>]]);



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

// we don't have mynethersdelight anymore, so this recipe can't work.
/*
craftingTable.addShaped("ctgui/new/reliquary/reliquary.fragment_to_spawn_egg.item.minecraft.hoglin_spawn_egg_0", <item:minecraft:hoglin_spawn_egg>, [
    [IIngredientEmpty.getInstance(), <item:mynethersdelight:hoglin_hide>, IIngredientEmpty.getInstance()],
    [<item:mynethersdelight:hoglin_loin>, <item:minecraft:egg>, <item:mynethersdelight:hoglin_loin>]]);
*/

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

var egg = <item:minecraft:egg>;

craftingTable.addShaped("custom/spawn_egg/blaze", <item:minecraft:blaze_spawn_egg>, [
  [<item:minecraft:blaze_powder>, <item:minecraft:blaze_powder>, <item:minecraft:blaze_powder>],
  [<item:minecraft:blaze_rod>, egg, <item:minecraft:blaze_rod>],
  [<item:minecraft:blaze_powder>, <item:minecraft:blaze_powder>, <item:minecraft:blaze_powder>]]);

craftingTable.addShaped("custom/spawn_egg/bogged", <item:minecraft:bogged_spawn_egg>, [
    [<item:minecraft:tipped_arrow>, <item:minecraft:tipped_arrow>, <item:minecraft:tipped_arrow>],
    [<item:minecraft:tipped_arrow>, egg, <item:minecraft:bone>],
    [<item:minecraft:bone>, <item:minecraft:bone>, <item:minecraft:bone>]]);

craftingTable.addShapedMirrored("custom/spawn_egg/axolotl", MirrorAxis.ALL, <item:minecraft:axolotl_spawn_egg>, [
  [<item:minecraft:moss_block>, IIngredientEmpty.getInstance(), <item:minecraft:clay>],
  [<item:minecraft:cod_bucket>.transformReplace(<item:minecraft:bucket>), egg, <item:minecraft:salmon_bucket>.transformReplace(<item:minecraft:bucket>)],
  [<item:minecraft:clay>, IIngredientEmpty.getInstance(), <item:minecraft:moss_block>]]);

var breeze_rod = <item:minecraft:breeze_rod>;
var wind_charge = <item:minecraft:wind_charge>;
var breeze_powder = <item:create_compat_core:breeze_powder>;

craftingTable.addShaped("custom/spawn_egg/breeze", <item:minecraft:breeze_spawn_egg>, [
  [wind_charge, breeze_rod, wind_charge],
  [wind_charge, egg, wind_charge],
  [wind_charge, breeze_rod, wind_charge]]);

craftingTable.addShaped("custom/spawn_egg/breeze_alt", <item:minecraft:breeze_spawn_egg>, [
  [breeze_powder, breeze_rod, breeze_powder],
  [breeze_powder, egg, breeze_powder],
  [breeze_powder, breeze_rod, breeze_powder]]);

var gunpowder = <tag:item:c:gunpowders>;
var tnt = <item:minecraft:tnt>;
var emerald = <tag:item:c:gems/emerald>;
var rotten_flesh = <item:minecraft:rotten_flesh>;
var iron_ingot = <tag:item:c:ingots/iron>;
var gold_ingot = <tag:item:c:ingots/gold>;
var gold_nugget = <tag:item:c:nuggets/gold>;
var ender_pearl = <tag:item:c:ender_pearls>;
var fox_food = <tag:item:minecraft:fox_food>;
var rabbit_food = <tag:item:minecraft:rabbit_food>;
var golden_carrot = <item:minecraft:golden_carrot>;
var sand = <tag:item:c:sands>;
var crossbow = <item:minecraft:crossbow>;
var bow = <tag:item:c:tools/bow>;
var bone = <tag:item:c:bones>;
var arrow_slowness =
  <item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:slowness"}) |
  <item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:long_slowness"}) |
  <item:minecraft:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:strong_slowness"}) |
  <item:reliquary:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {custom_effects: [{duration: 62, id: "minecraft:slowness", show_icon: true, "neoforge:cures": ["protected_by_totem", "milk"]}]}) |
  <item:reliquary:tipped_arrow>.withJsonComponent(<componenttype:minecraft:potion_contents>, {custom_effects: [{duration: 125, amplifier: 1, id: "minecraft:slowness", show_icon: true, "neoforge:cures": ["protected_by_totem", "milk"]}]});
var bread = <tag:item:c:foods/bread>;
var lead = <item:minecraft:lead>;
var redstone_dust = <tag:item:c:dusts/redstone>;
var redstone_torch = <item:minecraft:redstone_torch>;
var chest = <tag:item:c:chests>;
var ink_epic = <item:irons_spellbooks:epic_ink>;
var necronomicon = <item:irons_spellbooks:necronomicon_spell_book>;
var arcane_essence = <item:irons_spellbooks:arcane_essence>;
var blood_staff = <item:irons_spellbooks:blood_staff>;
var sculk = <item:minecraft:sculk>;
var sculk_shrieker = <item:minecraft:sculk_shrieker>;
var sculk_sensor = <item:minecraft:sculk_sensor>;
var sculk_catalyst = <item:minecraft:sculk_catalyst>;

var zombie_spawn_egg = <item:minecraft:zombie_spawn_egg>;

craftingTable.addShaped("custom/spawn_egg/creeper", <item:minecraft:creeper_spawn_egg>, [
  [gunpowder, gunpowder, gunpowder],
  [tnt, egg, tnt],
  [gunpowder, gunpowder, gunpowder]]);

craftingTable.addShaped("custom/spawn_egg/zombie", zombie_spawn_egg, [
  [rotten_flesh, rotten_flesh, rotten_flesh],
  [iron_ingot, egg, iron_ingot],
  [rotten_flesh, rotten_flesh, rotten_flesh]]);

craftingTable.addShaped("custom/spawn_egg/zombie_villager", <item:minecraft:zombie_villager_spawn_egg>, [
  [emerald, emerald, emerald],
  [emerald, zombie_spawn_egg, emerald],
  [emerald, emerald, emerald]]);

craftingTable.addShaped("custom/spawn_egg/zombie_husk", <item:minecraft:husk_spawn_egg>, [
  [sand, rotten_flesh, sand],
  [rotten_flesh, zombie_spawn_egg, rotten_flesh],
  [sand, rotten_flesh, sand]]);

craftingTable.addShapedMirrored("custom/spawn_egg/endermite", MirrorAxis.ALL, <item:minecraft:endermite_spawn_egg>, [
  [ender_pearl],
  [egg],
  [ender_pearl]]);

craftingTable.addShaped("custom/spawn_egg/fox", <item:minecraft:fox_spawn_egg>, [
  [IIngredientEmpty.getInstance(), fox_food, IIngredientEmpty.getInstance()],
  [fox_food, egg, fox_food],
  [IIngredientEmpty.getInstance(), fox_food, IIngredientEmpty.getInstance()]]);

craftingTable.addShaped("custom/spawn_egg/piglin", <item:minecraft:piglin_spawn_egg>, [
  [gold_ingot, crossbow, gold_ingot],
  [gold_nugget, egg, gold_nugget],
  [gold_ingot, <item:minecraft:golden_sword>, gold_ingot]]);

craftingTable.addShaped("custom/spawn_egg/pillager", <item:minecraft:pillager_spawn_egg>, [
  [emerald, emerald, emerald],
  [<item:minecraft:iron_axe>, egg, crossbow],
  [emerald, emerald, emerald]]);

craftingTable.addShaped("custom/spawn_egg/rabbit", <item:minecraft:rabbit_spawn_egg>, [
  [rabbit_food, rabbit_food, rabbit_food],
  [golden_carrot, egg, golden_carrot],
  [rabbit_food, rabbit_food, rabbit_food]]);

craftingTable.addShaped("custom/spawn_egg/skeleton_stray", <item:minecraft:stray_spawn_egg>, [
  [bone, arrow_slowness, bone],
  [bow, egg, bone],
  [bone, arrow_slowness, bone]]);

craftingTable.addShaped("custom/spawn_egg/villager_trader", <item:minecraft:wandering_trader_spawn_egg>, [
  [bread, bread, bread],
  [lead, egg, lead],
  [emerald, bread, emerald]]);

craftingTable.addShaped("custom/spawn_egg/mimic", <item:artifacts:mimic_spawn_egg>, [
  [redstone_dust, rotten_flesh, redstone_dust],
  [redstone_torch, chest, redstone_torch],
  [redstone_dust, rotten_flesh, redstone_dust]]);

craftingTable.addShaped("custom/spawn_egg/dead_king_corpse", <item:irons_spellbooks:dead_king_corpse_spawn_egg>, [
  [ink_epic, necronomicon, arcane_essence],
  [ink_epic, egg, arcane_essence],
  [ink_epic, blood_staff, arcane_essence]]);

craftingTable.addShaped("custom/spawn_egg/warden", <item:minecraft:warden_spawn_egg>, [
  [sculk, sculk, sculk],
  [sculk_sensor, egg, sculk_shrieker],
  [sculk, sculk_catalyst, sculk]]);

craftingTable.addShaped("custom/spawn_egg/squid", <item:minecraft:squid_spawn_egg>, [
  [<item:minecraft:ink_sac>, <item:minecraft:ink_sac>, <item:minecraft:ink_sac>],
  [<item:minecraft:water_bucket>, <item:minecraft:egg>, <item:minecraft:water_bucket>],
  [<item:minecraft:ink_sac>, <item:minecraft:ink_sac>, <item:minecraft:ink_sac>],
]);
