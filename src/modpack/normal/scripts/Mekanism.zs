#hide circuits
mods.nei.NEI.hide(<Mekanism:ControlCircuit>);
mods.nei.NEI.hide(<Mekanism:ControlCircuit:1>);
mods.nei.NEI.hide(<Mekanism:ControlCircuit:2>);
mods.nei.NEI.hide(<Mekanism:ControlCircuit:3>);

#remove steel
mods.mekanism.Infuser.removeRecipe(<gregtech_addon:metaitem_1:2305>);

#teleportation core
recipes.remove(<Mekanism:TeleportationCore>);
recipes.addShaped(<Mekanism:TeleportationCore>, [[<Forestry:thermionicTubes:11>, <ore:alloyElite>, <Forestry:thermionicTubes:11>], [<ore:chipsetGold>, <ore:chipsetDiamond>, <ore:chipsetGold>], [<Forestry:thermionicTubes:11>, <ore:alloyElite>, <Forestry:thermionicTubes:11>]]);

#reinforced alloy
mods.mekanism.Infuser.removeRecipe(<Mekanism:ReinforcedAlloy>);
recipes.addShaped(<Mekanism:ReinforcedAlloy>, [[<ore:chipsetIron>, <Mekanism:ElectrolyticCore>, <ore:chipsetGold>], [<ore:capacitorBasic>, <ore:chipsetDiamond>, <ore:capacitorBasic>], [<ore:chipsetGold>, <Mekanism:ElectrolyticCore>, <ore:chipsetIron>]]);

#atomic alloy
mods.mekanism.Infuser.removeRecipe(<Mekanism:AtomicAlloy>);
recipes.addShaped(<Mekanism:AtomicAlloy>, [[<Mekanism:TeleportationCore>, <Mekanism:SpeedUpgrade>, <Mekanism:TeleportationCore>], [<Mekanism:EnergyUpgrade>, <ore:alloyElite>, <Mekanism:EnergyUpgrade>], [<Mekanism:TeleportationCore>, <Mekanism:SpeedUpgrade>, <Mekanism:TeleportationCore>]]);

#Digital Miner
recipes.remove(<Mekanism:MachineBlock:4>);
recipes.addShaped(<Mekanism:MachineBlock:4>, [[<ExtraUtilities:enderQuarry>, <Mekanism:Robit:*>, <ExtraUtilities:enderThermicPump>], [<Mekanism:AtomicDisassembler>, <StevesFactoryManager:BlockMachineManagerName>, <Mekanism:AtomicDisassembler>], [<Mekanism:PortableTeleporter:*>, <ExtraUtilities:enderQuarryUpgrade:8>, <Mekanism:PortableTeleporter>]]);

#Teleporter
recipes.remove(<Mekanism:MachineBlock:11>);
recipes.addShaped(<Mekanism:MachineBlock:11>, [[<IC2:blockMachine2>, <Mekanism:BasicBlock:8>, <IC2:blockMachine2>], [<Mekanism:BasicBlock:8>, <ore:circuitAdvanced>, <Mekanism:BasicBlock:8>], [<IC2:blockMachine2>, <Mekanism:BasicBlock:8>, <IC2:blockMachine2>]]);

#Steel Casing
recipes.remove(<Mekanism:BasicBlock:8>);
#mods.buildcraft.AssemblyTable.addRecipe(<Mekanism:BasicBlock:8>, 5000000, [<ThermalExpansion:Frame:2>, <Railcraft:part.gear:2>, <ore:chipsetPulsating>, <Forestry:chipsets:1>]);
recipes.addShaped(<Mekanism:BasicBlock:8>, [[<ore:ingotPlatinum>, <ore:ingotSteel>, <ore:ingotPlatinum>], [<ore:ingotSteel>, <ThermalExpansion:Frame:2>, <ore:ingotSteel>], [<ore:ingotPlatinum>, <ore:ingotSteel>, <ore:ingotPlatinum>]]);

#Dynamic Tank
recipes.remove(<Mekanism:BasicBlock:9>);
recipes.addShaped(<Mekanism:BasicBlock:9>, [[null, <ore:ingotSteel>], [<ore:ingotSteel>, <Railcraft:machine.beta>, <ore:ingotSteel>], [null, <ore:ingotSteel>]]);

#Dynamic Glass
recipes.remove(<Mekanism:BasicBlock:10>);
recipes.addShaped(<Mekanism:BasicBlock:10>, [[null, <Mekanism:BasicBlock:9>], [<Mekanism:BasicBlock:9>, <Railcraft:machine.beta:1>, <Mekanism:BasicBlock:9>], [null, <Mekanism:BasicBlock:9>]]);

#Dynamic Valve
recipes.remove(<Mekanism:BasicBlock:11>);
recipes.addShaped(<Mekanism:BasicBlock:11>, [[null, <Railcraft:machine.beta:2>], [<Mekanism:BasicBlock:9>, <ore:circuitBasic>, <Mekanism:BasicBlock:9>], [null, <Railcraft:machine.beta:2>]]);

#Metallurgic Infuser
recipes.remove(<Mekanism:MachineBlock:8>);
recipes.addShaped(<Mekanism:MachineBlock:8>, [[<ore:blockCoal>, <ore:dustRedstone>, <ore:blockCoal>], [<ore:blockRedstone>, <EnderIO:blockAlloySmelter>, <ore:blockRedstone>], [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>]]);

#LogisticalSorters
recipes.remove(<Mekanism:MachineBlock:15>);
recipes.addShaped(<Mekanism:MachineBlock:15>, [[<LogisticsPipes:item.PipeLogisticsChassiMk3>, <minecraft:piston>, <LogisticsPipes:item.PipeLogisticsChassiMk3>], [<LogisticsPipes:item.PipeItemsProviderLogisticsMk2>, <ore:circuitBasic>, <LogisticsPipes:item.PipeItemsProviderLogisticsMk2>], [<LogisticsPipes:item.PipeLogisticsChassiMk3>, <LogisticsPipes:item.PipeItemsProviderLogisticsMk2>, <LogisticsPipes:item.PipeLogisticsChassiMk3>]]);

#Flamethrower
recipes.remove(<Mekanism:Flamethrower>);
recipes.addShaped(<Mekanism:Flamethrower>, [[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], [<Railcraft:firestone.refined>, <ThermalExpansion:igniter>, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:circuitBasic>, <ore:ingotSteel>]]);

#Jetpack
recipes.remove(<Mekanism:Jetpack>);
recipes.addShaped(<Mekanism:Jetpack>, [[<ore:ingotSteel>, <ore:circuitBasic>, <ore:ingotSteel>], [<ore:ingotSteel>, <IC2:item.itemArmorJetpackElectric:*>, <ore:ingotSteel>], [<simplyjetpacks:components:12>, <ore:ingotSteel>, <simplyjetpacks:components:12>]]);

#AtomicDisassembler
recipes.remove(<Mekanism:AtomicDisassembler>);
recipes.addShaped(<Mekanism:AtomicDisassembler>, [[<IC2:item.itemToolDDrill:*>, <ThermalExpansion:capacitor:4>, <StevesCarts:CartModule:43>], [<ore:ingotRefinedObsidian>, <ore:alloyUltimate>, <ore:ingotRefinedObsidian>], [null, <ore:ingotRefinedObsidian>]]);