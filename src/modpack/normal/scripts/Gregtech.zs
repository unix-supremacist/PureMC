#Rubber tools
recipes.remove(<gregtech_addon:mallet>);
recipes.addShaped(<gregtech_addon:mallet>, [[<ore:itemRubber>, <ore:itemRubber>], [<ore:itemRubber>, <ore:itemRubber>, <ore:treatedStick>], [<ore:itemRubber>, <ore:itemRubber>]]);
recipes.addShaped(<gregtech_addon:metaitem_2:5880>, [[<ore:itemRubber>, <ore:itemRubber>], [<ore:itemRubber>, <ore:itemRubber>], [<ore:itemRubber>, <ore:itemRubber>]]);
recipes.addShapeless(<gregtech_addon:mallet>, [<gregtech_addon:metaitem_2:5880>, <ore:treatedStick>]);

#Iron tools
recipes.remove(<gregtech_addon:iron_hammer>);
recipes.addShaped(<gregtech_addon:iron_hammer>, [[<ore:ingotRefinedIron>, <ore:ingotRefinedIron>], [<ore:ingotRefinedIron>, <ore:ingotRefinedIron>, <ore:treatedStick>], [<ore:ingotRefinedIron>, <ore:ingotRefinedIron>]]);
recipes.addShapeless(<gregtech_addon:iron_hammer>, [<gregtech_addon:metaitem_2:5032>, <ore:treatedStick>]);

#Bronze tools
recipes.remove(<gregtech_addon:bronze_hammer>);
recipes.addShaped(<gregtech_addon:bronze_hammer>, [[<ore:ingotBronze>, <ore:ingotBronze>], [<ore:ingotBronze>, <ore:ingotBronze>, <ore:treatedStick>], [<ore:ingotBronze>, <ore:ingotBronze>]]);
recipes.addShapeless(<gregtech_addon:bronze_hammer>, [<gregtech_addon:metaitem_2:5300>, <ore:treatedStick>]);