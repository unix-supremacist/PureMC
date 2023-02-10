#Fix recipes
recipes.addShaped(<GraviSuite:itemSimpleItem:6>, [[<ore:dustGlowstone>, <ore:plateAlloyAdvanced>, <ore:dustGlowstone>], [<ore:circuitAdvanced>, <IC2:item.ic2upgrades>, <ore:circuitAdvanced>], [<ore:plateAlloyAdvanced>, <IC2:item.reactorVentDiamond>, <ore:plateAlloyAdvanced>]]);
recipes.remove(<GraviSuite:itemSimpleItem:2>);
recipes.addShaped(<GraviSuite:itemSimpleItem:2>, [[<IC2:item.reactorCoolantSix>, <IC2:item.reactorHeatSwitchDiamond>, <IC2:item.reactorCoolantSix>], [<IC2:item.reactorPlatingHeat>, <IC2:item.itemPartIridium>, <IC2:item.reactorPlatingHeat>], [<IC2:item.reactorCoolantSix>, <IC2:item.reactorHeatSwitchDiamond>, <IC2:item.reactorCoolantSix>]]);

#Fix super conductor
recipes.remove(<GraviSuite:itemSimpleItem>);
recipes.remove(<GraviSuite:itemSimpleItem:1>);
mods.nei.NEI.hide(<GraviSuite:itemSimpleItem>);
mods.nei.NEI.hide(<GraviSuite:itemSimpleItem:1>);
<ore:itemSuperconductor>.addAll(<ore:craftingSuperconductor>);
<ore:itemSuperconductor>.remove(<GraviSuite:itemSimpleItem:1>);