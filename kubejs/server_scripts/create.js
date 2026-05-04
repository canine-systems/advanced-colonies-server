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
});
