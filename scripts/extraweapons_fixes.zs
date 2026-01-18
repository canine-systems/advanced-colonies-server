import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.ItemDefinition;

// Add the steel ingots into the steel ingot tag.
<tag:item:forge:ingots/steel>.add(<item:extraweapons:steel_ingot>);
<tag:item:forge:ingots/steel>.add(<item:immersiveengineering:ingot_steel>);

// extraweapons made a typo. we'll fix it here, since it's unmaintained.
<tag:item:c:ingonts/steel>.remove(<item:extraweapons:steel_ingot>);
<tag:item:c:ingots/steel>.remove(<item:extraweapons:steel_ingot>);
