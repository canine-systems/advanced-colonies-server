ServerEvents.recipes(event => {
    // using mechanical press + basin:
    //  1 cobbled deepslate
    //  1 cobblestone
    //  100mb lava
    // =>
    //  1 tuff
    event.recipes.create.compacting('minecraft:tuff',
        [
            'minecraft:cobbled_deepslate',
            'minecraft:cobblestone',
            Fluid.of('minecraft:lava', 100)
        ]
    );

    // using mechanical press + basin:
    //  111mb molten steel => 1 steel ingot
    // (111mb chosen because that's what 1 steel ingot becomes.)
    event.recipes.create.compacting('immersiveengineering:ingot_steel',
        [
            Fluid.of('createmetalwork:molten_steel', 111)
        ]
    );
});
