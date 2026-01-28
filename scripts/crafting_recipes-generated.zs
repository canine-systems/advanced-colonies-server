craftingTable.addShaped("custom/totem_of_undying", <item:minecraft:totem_of_undying>, [
    [<item:minecraft:gold_ingot>, <item:minecraft:diamond>, <item:minecraft:emerald>],
    [<item:minecraft:diamond>, <item:minecraft:enchanted_golden_apple>, <item:minecraft:diamond>],
    [<item:minecraft:emerald>, <item:minecraft:gold_block>, <item:minecraft:gold_ingot>]
]);

craftingTable.addShaped("custom/mana_ring", <item:irons_spellbooks:mana_ring>, [
    [<item:minecraft:gold_nugget>, <item:ars_nouveau:source_gem>, <item:minecraft:gold_nugget>],
    [<item:minecraft:gold_ingot>, <item:minecraft:air>, <item:minecraft:gold_ingot>],
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]
]);

craftingTable.addShaped("custom/ring_of_thrift", <item:reliquified_ars_nouveau:ring_of_thrift>, [
    [<item:minecraft:gold_ingot>, <item:ars_nouveau:source_gem>, <item:minecraft:gold_ingot>],
    [<item:ars_nouveau:source_gem>, <item:minecraft:air>, <item:ars_nouveau:source_gem>],
    [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]
]);

craftingTable.addShaped("custom/ballistarian_bracer", <item:reliquified_ars_nouveau:ballistarian_bracer>, [
    [<item:minecraft:gold_block>, <item:minecraft:crossbow>],
    [<item:ars_nouveau:source_gem>, <item:minecraft:bow>],
    [<item:minecraft:bow>, <item:minecraft:gold_ingot>]
]);

craftingTable.addShaped("custom/horn_of_the_wild_hunter", <item:reliquified_ars_nouveau:horn_of_the_wild_hunter>, [
    [<item:ars_nouveau:wilden_horn>, <item:ars_nouveau:wilden_horn>, <item:ars_nouveau:wilden_horn>],
    [<item:ars_nouveau:wilden_horn>, <item:ars_nouveau:source_gem>, <item:ars_nouveau:wilden_horn>],
    [<item:ars_nouveau:wilden_horn>, <item:ars_nouveau:wilden_horn>, <item:ars_nouveau:wilden_horn>]
]);

craftingTable.addShaped("custom/wing_of_the_wild_stalker", <item:reliquified_ars_nouveau:wing_of_the_wild_stalker>, [
    [<item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>],
    [<item:minecraft:phantom_membrane>, <item:ars_nouveau:source_gem_block>, <item:minecraft:phantom_membrane>],
    [<item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>, <item:minecraft:phantom_membrane>]
]);

craftingTable.addShaped("custom/whirling_broom", <item:reliquified_ars_nouveau:whirling_broom>, [
    [<item:ars_nouveau:source_gem>, <item:minecraft:stick>, <item:ars_nouveau:source_gem>],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>],
    [<item:ars_nouveau:source_gem>, <item:minecraft:brush>, <item:ars_nouveau:source_gem>]
]);

craftingTable.addShaped("custom/archmage_glove", <item:reliquified_ars_nouveau:archmage_glove>, [
    [<item:minecraft:leather>, <item:ars_nouveau:source_gem_block>, <item:minecraft:leather>],
    [<item:minecraft:leather>, <item:ars_nouveau:source_gem_block>, <item:minecraft:leather>],
    [<item:minecraft:leather>, <item:minecraft:leather>, <item:minecraft:leather>]
]);

craftingTable.addShaped("custom/ominous_bottle", <item:minecraft:ominous_bottle>, [
    [<item:minecraft:air>, <item:minecraft:emerald>],
    [<item:minecraft:air>, <item:minecraft:white_banner>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:potion>.withJsonComponent(<componenttype:minecraft:potion_contents>, {potion: "minecraft:water"})]
]);

craftingTable.addShaped("custom/ominous_bottle_amplifier/bad_omen_2", <item:minecraft:ominous_bottle>.withJsonComponent(<componenttype:minecraft:ominous_bottle_amplifier>, 1), [
    [<item:minecraft:air>, <item:minecraft:emerald>],
    [<item:minecraft:air>, <item:minecraft:ominous_bottle>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:emerald>]
]);

craftingTable.addShaped("custom/ominous_bottle_amplifier/bad_omen_3", <item:minecraft:ominous_bottle>.withJsonComponent(<componenttype:minecraft:ominous_bottle_amplifier>, 2), [
    [<item:minecraft:air>, <item:minecraft:emerald>],
    [<item:minecraft:white_banner>, <item:minecraft:ominous_bottle>.withJsonComponent(<componenttype:minecraft:ominous_bottle_amplifier>, 1), <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:emerald>]
]);

craftingTable.addShaped("custom/ominous_bottle_amplifier/bad_omen_4", <item:minecraft:ominous_bottle>.withJsonComponent(<componenttype:minecraft:ominous_bottle_amplifier>, 3), [
    [<item:minecraft:air>, <item:minecraft:emerald>],
    [<item:minecraft:white_banner>, <item:minecraft:ominous_bottle>.withJsonComponent(<componenttype:minecraft:ominous_bottle_amplifier>, 2), <item:minecraft:emerald>],
    [<item:minecraft:air>, <item:minecraft:emerald>]
]);

craftingTable.addShaped("custom/ominous_bottle_amplifier/bad_omen_5", <item:minecraft:ominous_bottle>.withJsonComponent(<componenttype:minecraft:ominous_bottle_amplifier>, 4), [
    [<item:minecraft:air>, <item:minecraft:emerald>, <item:minecraft:white_banner>],
    [<item:minecraft:white_banner>, <item:minecraft:ominous_bottle>.withJsonComponent(<componenttype:minecraft:ominous_bottle_amplifier>, 3), <item:minecraft:emerald>],
    [<item:minecraft:white_banner>, <item:minecraft:emerald>]
]);

craftingTable.addShaped("custom/dragon_head", <item:minecraft:dragon_head>, [
    [<item:irons_spellbooks:dragonskin>, <item:minecraft:air>, <item:irons_spellbooks:dragonskin>],
    [<item:minecraft:air>, <item:minecraft:skeleton_skull>, <item:minecraft:air>],
    [<item:irons_spellbooks:dragonskin>, <item:minecraft:dragon_breath>, <item:irons_spellbooks:dragonskin>]
]);

craftingTable.addShaped("custom/dragon_breath", <item:minecraft:dragon_breath> * 7, [
    [<item:minecraft:glass_bottle>, <item:minecraft:glass_bottle>, <item:minecraft:glass_bottle>],
    [<item:irons_spellbooks:dragonskin>, <item:minecraft:glass_bottle>, <item:irons_spellbooks:dragonskin>],
    [<item:minecraft:glass_bottle>, <item:minecraft:glass_bottle>, <item:minecraft:glass_bottle>]
]);

