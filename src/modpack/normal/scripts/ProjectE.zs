#Name: ProjectE.zs
#Author: Unix Supremacist

print("Initializing 'ProjectE.zs'...");

#Alchemical Chest
recipes.remove(<ProjectE:alchemical_chest>);
recipes.addShaped(<ProjectE:alchemical_chest>, [[<ProjectE:item.pe_covalence_dust>, <ProjectE:item.pe_covalence_dust:1>, <ProjectE:item.pe_covalence_dust:2>], [<ore:stone>, <ore:manaDiamond>, <ore:stone>], [<ore:ingotManasteel>, <ore:chest>, <ore:ingotManasteel>]]);

#Energy Condenser
recipes.remove(<ProjectE:condenser_mk1>);
recipes.addShaped(<ProjectE:condenser_mk1>, [[<Railcraft:cube:4>, <ore:manaDiamond>, <Railcraft:cube:4>], [<ore:manaDiamond>, <ProjectE:alchemical_chest>, <ore:manaDiamond>], [<Railcraft:cube:4>, <ore:manaDiamond>, <Railcraft:cube:4>]]);

recipes.remove(<ProjectE:item.pe_philosophers_stone>);
mods.bloodmagic.Altar.addRecipe(<ProjectE:item.pe_philosophers_stone>, <AWWayofTime:transcendentBloodOrb>, 6, 400000, 30, 50);

print("Initialized 'ProjectE.zs'");