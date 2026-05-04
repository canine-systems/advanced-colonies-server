ServerEvents.recipes(event => {
    // "Re-smelt" things to turn them back to their base form.
    event.smelting('minecraft:copper_block', 'minecraft:cut_copper');
});
