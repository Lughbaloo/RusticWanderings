import crafttweaker.api.BlastFurnaceManager;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.BracketHandlers;

var air = <item:minecraft:air>;

# ----------------------------------- Misc ----------------------------------- #

//Allows crafting of enhancedvanilla's salt to HarvestCraft's
craftingTable.addShapeless("salt2salt", <item:pamhc2foodcore:saltitem>, [<item:enhancedvanilla:salt>]);

//Makes the good feeding trough require the less good one
craftingTable.removeRecipe(<item:farmingforblockheads:feeding_trough>);
craftingTable.addShaped("trough2trough", <item:farmingforblockheads:feeding_trough>, [[<item:enhancedvanilla:dried_wheat>, <item:minecraft:golden_carrot>,<item:enhancedvanilla:dried_wheat>], [air, <item:quark:feeding_trough>, air]]);


# ------------------------- Ingot Conversion Recipes ------------------------- #

//Platinum, Wyrmroost > Silent's Mechanisms
craftingTable.addShaped("platinum_wy2sm", <item:silents_mechanisms:platinum_ingot> * 3,[[<item:wyrmroost:platinum_ingot>], [<item:wyrmroost:platinum_ingot>], [<item:wyrmroost:platinum_ingot>]]);

//Platinum, Silent's Mechanisms > Wyrmroost
craftingTable.addShaped("platinum_sm2wy", <item:wyrmroost:platinum_ingot> * 3, [[<item:silents_mechanisms:platinum_ingot>], [<item:silents_mechanisms:platinum_ingot>], [<item:silents_mechanisms:platinum_ingot>]]);


# ------------------------------ Recipe Removal ------------------------------ #

//<item:mapperbase:steel_ingot>
blastFurnace.removeRecipe(<item:mapperbase:steel_ingot>);

//Gems N Jewels stuff
craftingTable.removeByRegex("gemsnjewels:.*set_.*ring");
craftingTable.removeByRegex("gemsnjewels:.*set_.*axe");
craftingTable.removeByRegex("gemsnjewels:.*emerald.*");

# ------------------------------ Hiding from JEI ----------------------------- #

var hidey = [
    <item:mapperbase:steel_ingot>,
    <item:create:copper_ingot>,
    <item:silents_mechanisms:zinc_ingot>,
    <item:gemsnjewels:emerald>,
    <item:gemsnjewels:amethyst>,
    <item:gemsnjewels:silver_ingot>,
    <item:gemsnjewels:platinum_ingot>,
    <item:gemsnjewels:emerald_nether_ore_block>,
    <item:gemsnjewels:emerald_ore_block>,
    <item:gemsnjewels:emerald_block>,
    <item:gemsnjewels:emerald>,
    <item:gemsnjewels:amethyst_nether_ore_block>,
    <item:gemsnjewels:amethyst_ore_block>,
    <item:gemsnjewels:amethyst_block>,
    <item:gemsnjewels:amethyst>,
    <item:gemsnjewels:diamond_set_gold_ring>,
    <item:gemsnjewels:emerald_set_gold_ring>,
    <item:gemsnjewels:ruby_set_gold_ring>,
    <item:gemsnjewels:sapphire_set_gold_ring>,
    <item:gemsnjewels:amethyst_set_gold_ring>,
    <item:gemsnjewels:opal_set_gold_ring>,
    <item:gemsnjewels:garnet_set_gold_ring>,
    <item:gemsnjewels:topaz_set_gold_ring>,
    <item:gemsnjewels:peridot_set_gold_ring>,
    <item:gemsnjewels:aquamarine_set_gold_ring>,
    <item:gemsnjewels:zircon_set_gold_ring>,
    <item:gemsnjewels:alexandrite_set_gold_ring>,
    <item:gemsnjewels:tanzanite_set_gold_ring>,
    <item:gemsnjewels:tourmaline_set_gold_ring>,
    <item:gemsnjewels:spinel_set_gold_ring>,
    <item:gemsnjewels:black_opal_set_gold_ring>,
    <item:gemsnjewels:citrine_set_gold_ring>,
    <item:gemsnjewels:morganite_set_gold_ring>,
    <item:gemsnjewels:ametrine_set_gold_ring>,
    <item:gemsnjewels:kunzite_set_gold_ring>,
    <item:gemsnjewels:iolite_set_gold_ring>,
    <item:gemsnjewels:alexandrite_set_diamond_pickaxe>,
    <item:gemsnjewels:peridot_set_gold_pickaxe>,
    <item:gemsnjewels:tanzanite_set_diamond_pickaxe>,
    <item:gemsnjewels:alexandrite_set_iron_pickaxe>,
    <item:gemsnjewels:ametrine_set_gold_pickaxe>,
    <item:gemsnjewels:garnet_set_gold_pickaxe>,
    <item:gemsnjewels:kunzite_set_diamond_pickaxe>,
    <item:gemsnjewels:sapphire_set_diamond_pickaxe>,
    <item:gemsnjewels:black_opal_set_gold_pickaxe>,
    <item:gemsnjewels:opal_set_iron_pickaxe>,
    <item:gemsnjewels:morganite_set_iron_pickaxe>,
    <item:gemsnjewels:morganite_set_diamond_pickaxe>,
    <item:gemsnjewels:amethyst_set_diamond_pickaxe>,
    <item:gemsnjewels:emerald_set_iron_pickaxe>,
    <item:gemsnjewels:zircon_set_iron_pickaxe>,
    <item:gemsnjewels:spinel_set_diamond_pickaxe>,
    <item:gemsnjewels:ametrine_set_iron_pickaxe>,
    <item:gemsnjewels:opal_set_gold_pickaxe>,
    <item:gemsnjewels:topaz_set_iron_pickaxe>,
    <item:gemsnjewels:alexandrite_set_gold_pickaxe>,
    <item:gemsnjewels:sapphire_set_gold_pickaxe>,
    <item:gemsnjewels:tourmaline_set_iron_pickaxe>,
    <item:gemsnjewels:diamond_set_iron_pickaxe>,
    <item:gemsnjewels:citrine_set_gold_pickaxe>,
    <item:gemsnjewels:garnet_set_diamond_pickaxe>,
    <item:gemsnjewels:amethyst_set_gold_pickaxe>,
    <item:gemsnjewels:tanzanite_set_iron_pickaxe>,
    <item:gemsnjewels:peridot_set_diamond_pickaxe>,
    <item:gemsnjewels:amethyst_set_iron_pickaxe>,
    <item:gemsnjewels:emerald_set_diamond_pickaxe>,
    <item:gemsnjewels:iolite_set_iron_pickaxe>,
    <item:gemsnjewels:opal_set_diamond_pickaxe>,
    <item:gemsnjewels:citrine_set_diamond_pickaxe>,
    <item:gemsnjewels:iolite_set_gold_pickaxe>,
    <item:gemsnjewels:ruby_set_iron_pickaxe>,
    <item:gemsnjewels:ruby_set_gold_pickaxe>,
    <item:gemsnjewels:black_opal_set_iron_pickaxe>,
    <item:gemsnjewels:ametrine_set_diamond_pickaxe>,
    <item:gemsnjewels:aquamarine_set_diamond_pickaxe>,
    <item:gemsnjewels:garnet_set_iron_pickaxe>,
    <item:gemsnjewels:aquamarine_set_gold_pickaxe>,
    <item:gemsnjewels:spinel_set_iron_pickaxe>,
    <item:gemsnjewels:spinel_set_gold_pickaxe>,
    <item:gemsnjewels:aquamarine_set_iron_pickaxe>,
    <item:gemsnjewels:sapphire_set_iron_pickaxe>,
    <item:gemsnjewels:peridot_set_iron_pickaxe>,
    <item:gemsnjewels:topaz_set_diamond_pickaxe>,
    <item:gemsnjewels:topaz_set_gold_pickaxe>,
    <item:gemsnjewels:tourmaline_set_gold_pickaxe>,
    <item:gemsnjewels:tourmaline_set_diamond_pickaxe>,
    <item:gemsnjewels:black_opal_set_diamond_pickaxe>,
    <item:gemsnjewels:citrine_set_iron_pickaxe>,
    <item:gemsnjewels:kunzite_set_gold_pickaxe>,
    <item:gemsnjewels:diamond_set_diamond_pickaxe>,
    <item:gemsnjewels:diamond_set_gold_pickaxe>,
    <item:gemsnjewels:iolite_set_diamond_pickaxe>,
    <item:gemsnjewels:emerald_set_gold_pickaxe>,
    <item:gemsnjewels:ruby_set_diamond_pickaxe>,
    <item:gemsnjewels:zircon_set_gold_pickaxe>,
    <item:gemsnjewels:tanzanite_set_gold_pickaxe>,
    <item:gemsnjewels:morganite_set_gold_pickaxe>,
    <item:gemsnjewels:zircon_set_diamond_pickaxe>,
    <item:gemsnjewels:kunzite_set_iron_pickaxe>,
    <item:elenaicompass:m_molten_crater_compass>,
    <item:elenaicompass:m_entrance_rift_compass>
] as IItemStack[];

for hide in hidey {
    mods.jei.JEI.hideItem(hide);
}

# -------------------------------- Adding Tags ------------------------------- #

var gems = [
    <item:gemsnjewels:ruby>,
    <item:gemsnjewels:sapphire>,
    <item:gemsnjewels:opal>,
    <item:gemsnjewels:garnet>,
    <item:gemsnjewels:topaz>,
    <item:gemsnjewels:peridot>,
    <item:gemsnjewels:aquamarine>,
    <item:gemsnjewels:zircon>,
    <item:gemsnjewels:alexandrite>,
    <item:gemsnjewels:tanzanite>,
    <item:gemsnjewels:tourmaline>,
    <item:gemsnjewels:spinel>,
    <item:gemsnjewels:black_opal>,
    <item:gemsnjewels:citrine>,
    <item:gemsnjewels:morganite>,
    <item:gemsnjewels:kunzite>,
    <item:gemsnjewels:iolite>,
    <item:gemsnjewels:ametrine>
] as IItemStack[];

for gem in gems {
    <tag:forge:gems>.addItems(gem);
}

# ------------------------------- Ring Recipes ------------------------------- #

var basicRing = <item:curios:ring>;

//Basic Ring
craftingTable.addShaped("basic_ring", basicRing, [[<item:minecraft:gold_ingot>, <tag:forge:gems>, <item:minecraft:gold_ingot>], [<item:minecraft:gold_ingot>, <item:minecraft:experience_bottle>, <item:minecraft:gold_ingot>], [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]]);

craftingTable.addShapeless("flight_ring", <item:ringsofascension:ring_flight>, [basicRing, <item:minecraft:dragon_breath>, <item:quark:dragon_scale>, <item:minecraft:lapis_lazuli>, <item:minecraft:blaze_powder>]);

craftingTable.addShapeless("jump_ring", <item:ringsofascension:ring_jump_boost>, [basicRing, <item:minecraft:golden_boots>, <item:minecraft:white_wool>, <item:minecraft:lapis_lazuli>]);

craftingTable.addShapeless("magnet_ring", <item:ringsofascension:ring_magnetism>, [basicRing, <item:quark:iron_chain>, <item:create:polished_rose_quartz>, <item:minecraft:lapis_lazuli>, <item:minecraft:blaze_powder>]);

craftingTable.addShapeless("growth_ring", <item:ringsofascension:ring_growth>, [basicRing, <item:minecraft:bone_block>, <item:minecraft:wheat_seeds>, <item:minecraft:lapis_lazuli>]);

craftingTable.addShapeless("regen_ring", <item:ringsofascension:ring_regeneration>, [basicRing, <item:minecraft:enchanted_golden_apple>, <item:silentgear:golden_nether_banana>, <item:minecraft:lapis_lazuli>, <item:minecraft:blaze_powder>]);

craftingTable.addShapeless("wither_ring", <item:ringsofascension:ring_wither>, [basicRing, <item:minecraft:nether_star>, <item:minecraft:wither_skeleton_skull>, <item:minecraft:lapis_lazuli>, <item:minecraft:blaze_powder>]);

craftingTable.addShapeless("nightvision_ring", <item:ringsofascension:ring_night_vision>, [basicRing, <item:minecraft:golden_carrot>, <item:minecraft:ender_eye>, <item:minecraft:lapis_lazuli>]);


# ----------------------------- Ametrine Testing ----------------------------- #

//Create a tag and add it
<tag:forge:gems/ametrine>.createItemTag();
<tag:forge:gems/ametrine>.addItems([<item:gemsnjewels:ametrine>, <item:byg:ametrine_gems>]);

var gnjametrine = <item:gemsnjewels:ametrine>;
var bygametrine = <item:byg:ametrine_gems>;

//Conversion Recipe
craftingTable.addShaped("bygame2gnjame", gnjametrine * 3, [[bygametrine], [bygametrine], [bygametrine]]);
craftingTable.addShaped("gnjame2bygame", bygametrine * 3, [[gnjametrine], [gnjametrine], [gnjametrine]]);

# ------- Adds recipes for Ametrine Gear using Gems N Jewels' Ametrine ------- #

craftingTable.addShaped("gnj_ametrine_helmet", <item:byg:ametrine_helmet>, [[gnjametrine, gnjametrine, gnjametrine], [gnjametrine, air, gnjametrine]]);

craftingTable.addShaped("gnj_ametrine_chestplate", <item:byg:ametrine_chestplate>, [[gnjametrine, air, gnjametrine], [gnjametrine, gnjametrine, gnjametrine], [gnjametrine, gnjametrine, gnjametrine]]);

craftingTable.addShaped("gnj_ametrine_leggings", <item:byg:ametrine_leggings>, [[gnjametrine, gnjametrine, gnjametrine], [gnjametrine, air, gnjametrine], [gnjametrine, air, gnjametrine]]);

craftingTable.addShaped("gnj_ametrine_boots", <item:byg:ametrine_boots>, [[gnjametrine, air, gnjametrine], [gnjametrine, air, gnjametrine]]);

craftingTable.addShaped("gnj_ametrine_horse_armor", <item:byg:ametrine_horse_armor>, [[<item:gemsnjewels:ametrine>, air, <item:gemsnjewels:ametrine>], [<item:gemsnjewels:ametrine>, <item:gemsnjewels:ametrine>, <item:gemsnjewels:ametrine>], [<item:gemsnjewels:ametrine>, air, <item:gemsnjewels:ametrine>]]);
