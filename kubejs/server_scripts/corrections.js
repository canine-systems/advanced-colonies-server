ServerEvents.recipes(recipes => {
    // Remove copper sheet => copper wire recipes
    recipes.remove({
        output: 'powergrid:wire',
        input: ['create:copper_sheet', 'immersiveengineering:wirecutter']
    });

    // Add 1x copper sheet => 4x copper wire
    recipes.shapeless('powergrid:wire',  ['#c:plates/copper', 'immersiveengineering:wirecutter'])
        .damageIngredient('immersiveengineering:wirecutter');
});
