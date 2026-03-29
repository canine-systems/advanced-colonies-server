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

