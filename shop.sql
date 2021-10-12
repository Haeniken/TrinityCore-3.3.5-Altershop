/*

# 
# In the variable, specify the desired start id of npc, 70000 by default
# В переменной укажите желаемый id of npc, 70000 by default
#

For mount's vendors / ДЛЯ ВЕНДОРОВ С МАУНТАМИ
.npc set phase 65 - ONLY ALLIANCE CAN SEE IT / ВИДИМ ТОЛЬКО ДЛЯ АЛЬЯНСА
.npc set phase 512 - ONLY HORDE CAN SEE IT / ВИДИМ ТОЛЬКО ДЛЯ ОРДЫ

Log error fix here: https://gist.github.com/Haeniken/4ce6ba71ef3e939ba424152b3c94dde7

*/

SET @i := 70000;

ALTER TABLE gossip_menu MODIFY MenuID MEDIUMINT;
ALTER TABLE gossip_menu_option MODIFY MenuID MEDIUMINT;

###########################################
# CREATURE_TEMPLATE                       #
###########################################
#from @i
SET @ENTRY := @i;
REPLACE INTO `creature_template` (`entry`, `modelid1`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(@ENTRY, 21022, "Elixirs", 'Consumables', NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 21022, "Flasks", 'Consumables', NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 21022, "Scrolls", 'Consumables', NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 21022, "Pots", 'Consumables', NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 21022, "Food and Drinks", 'Consumables', NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 21022, "Reagents and Arrows", 'Consumables', NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
#from @i+6
(@ENTRY := @ENTRY+1, 22951, "Brace", "PvE", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 22951, "Waist", "PvE", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 22951, "Boots", "PvE", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 27153, "Neck, Ring, Cloak", "PvE", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 2967, "Axe and Ranged Weapons", NULL, NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 29604, "Mace, Spear, Sword", NULL, NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 29604, "Staff, Wrist, Dagger", NULL, NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 17822, "Shields, Offhands, Manuscripts", NULL, NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 17822, "Trinkets", NULL, NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
#from @i+15
(@ENTRY := @ENTRY+1, 30199, "A8 Set", "PvP", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 22951, "A8 Nonset", "PvP", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 28597, "T10", "PvE", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
#from @i+18
(@ENTRY := @ENTRY+1, 21022, "Enchantments", NULL, NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 21666, "Red", "Gemstone", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 21666, "Yellow", "Gemstone", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 21666, "Blue", "Gemstone", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 21666, "Green", "Gemstone", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 21666, "Orange", "Gemstone", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 21666, "Violet", "Gemstone", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 21666, "Special and Rainbow", "Gemstone", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
#from i+26
(@ENTRY := @ENTRY+1, 30867, "Shirts and Tabards", NULL, NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 20806, "Bags", NULL, NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 25305, "Pets", NULL, NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 0.9, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 2059, "Elusive Joe", "Poisons", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
#from i+30
#mount alliance
(@ENTRY := @ENTRY+1, 31953, "Alex Wand", "Mounts", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
#mount horde
(@ENTRY := @ENTRY+1, 31953, "Alex Wand", "Mounts", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
#mount legendary alliance
(@ENTRY := @ENTRY+1, 18248, "Rizzy Wand", "Legendaty Mounts", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
#mount legendary horde
(@ENTRY := @ENTRY+1, 18248, "Rizzy Wand", "Legendaty Mounts", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
#from i+40
(@ENTRY := @ENTRY+7, 28159, "Paladin", "Trainer", NULL, 0, 80, 80, 0, 35, 145, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 28143, "Mage", "Trainer", NULL, 0, 80, 80, 0, 35, 145, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 17534, "Shaman", "Trainer", NULL, 0, 80, 80, 0, 35, 145, 1, 1.14286, 0.9, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 10550, "Priest", "Trainer", NULL, 0, 80, 80, 0, 35, 145, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 29833, "Warrior", "Trainer", NULL, 0, 80, 80, 0, 35, 145, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 27998, "Hunter", "Trainer", NULL, 0, 80, 80, 0, 35, 145, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 2631, "Rogue", "Trainer", NULL, 0, 80, 80, 0, 35, 145, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 29780, "Druid", "Trainer", NULL, 0, 80, 80, 0, 35, 145, 1, 1.14286, 0.6, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 28150, "Warlock", "Trainer", NULL, 0, 80, 80, 0, 35, 145, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 25783, "Death Knight", "Trainer", NULL, 0, 80, 80, 0, 35, 145, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
#from i+50
(@ENTRY := @ENTRY+1, 25783, "Toolkit", "Reagents", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 25783, "Alchemy", "Reagents", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 25783, "Mining", "Reagents", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 25783, "Leatherworking", "Reagents", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 25783, "Engineering", "Reagents", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 25783, "Enchanting", "Reagents", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 25783, "Inscription", "Reagents", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 25783, "Tailoring", "Reagents", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 25783, "Jewelcrafting", "Reagents", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 25783, "Other", "Reagents", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
(@ENTRY := @ENTRY+1, 25783, "Fish, Meat and Grass", "Reagents", NULL, 0, 80, 80, 0, 35, 128, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000'),
#from i+70
(@ENTRY := @ENTRY+10, 6879, "Glyphs", "", NULL, 70000, 80, 80, 0, 35, 129, 1, 1.14286, 1, 0, 0, 1500, 0, 1, 512, 2048, 0, 0, 7, 138412032, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 0, 0, 1, 0, 2, '13000');

###########################################
# NPC_VENDOR and CREATURE_TEMPLATE_LOCALE #
###########################################

#Elixirs 70000
SET @ENTRY := @i;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Эликсиры', 'Расходные материалы', '13000');
INSERT INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '40070', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44327', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44328', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44329', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44330', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44331', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40097', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39666', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40068', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40072', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40073', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40076', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40078', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40109', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44332', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44325', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45621', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44012', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37449', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2460', '0', '0', '2', '13000');

#Flasks 70001
SET @ENTRY := @i+1;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Настойки', 'Расходные материалы', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '46376', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46377', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46378', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46379', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40079', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40082', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40084', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40404', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40083', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44939', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47499', '0', '0', '2', '13000');

#Scrolls 70002
SET @ENTRY := @i+2;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Свитки', 'Расходные материалы', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '49632', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37092', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37094', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37098', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43464', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43466', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44315', '0', '0', '2', '13000');

#Pots 70003
SET @ENTRY := @i+3;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Свитки', 'Расходные материалы', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '33447', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '33448', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39327', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40087', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40211', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40212', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40093', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40081', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40213', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40214', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40215', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40216', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40217', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41166', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42545', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43531', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43530', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39671', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40067', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13460', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38351', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36770', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40077', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43569', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43570', '0', '0', '2', '13000');

#Food and drinks 70004
SET @ENTRY := @i+4;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Еда и напитки', 'Расходные материалы', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '21215', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '33444', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '33445', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34125', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34747', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34748', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34749', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34750', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34751', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34752', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34753', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34754', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34755', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34756', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34757', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34758', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34759', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34760', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34761', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34762', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34763', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34764', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34765', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34766', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34767', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34768', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34769', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '35947', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '35948', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '35950', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '35951', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '35952', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '35953', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38698', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38706', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39520', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39691', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40202', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41729', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41731', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42428', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42429', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42430', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42431', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42432', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42433', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42434', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42777', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42778', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42779', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42942', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42993', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42994', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42995', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42996', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42997', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42998', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42999', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43000', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43001', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43004', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43005', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43015', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43086', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43087', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43236', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43268', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43478', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43480', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43488', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43490', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43491', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43492', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43518', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43523', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44049', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44071', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44072', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44607', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44616', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44618', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44722', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44940', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44941', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44953', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45932', '0', '0', '2', '13000');

#Reagents 70005
SET @ENTRY := @i+5;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Реагенты и стрелы', 'Расходные материалы', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '49633', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49634', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5565', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '16583', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '17030', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '17032', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21177', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6265', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '17020', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '17031', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '17033', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37201', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44615', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44605', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44614', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '52020', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '52021', '0', '0', '2', '13000');

#Brace 70006
SET @ENTRY := @i+6;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Наручи', 'PvE', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '50630', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50670', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50651', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50686', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54580', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54584', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54582', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50655', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50687', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50611', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50659', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50721', '0', '0', '2', '13000');

#Waist 70007
SET @ENTRY := @i+7;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Пояса', 'PvE', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '50613', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50705', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50702', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50707', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50667', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50688', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50620', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50671', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50691', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54587', '0', '0', '2', '13000');

#Boots 70008
SET @ENTRY := @i+8;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Ботинки', 'PvE', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '49893', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50665', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50607', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50699', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50632', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50711', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50625', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50652', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54577', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54578', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54586', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54579', '0', '0', '2', '13000');

#Neck 70009
SET @ENTRY := @i+9;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Ожерелья, кольца, плащи', 'PvE', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '50609', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50627', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50633', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50658', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50700', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54581', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50724', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50682', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50647', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50398', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50404', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50402', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50610', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50618', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50604', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50614', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50622', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50636', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50644', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50664', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50693', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50720', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50642', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50657', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50678', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50714', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54567', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54576', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54585', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50628', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50653', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50668', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50677', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50718', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54583', '0', '0', '2', '13000');

#Axe and Ranged Weapons 70010
SET @ENTRY := @i+10;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Топоры и дальнее оружие', 'Оружие', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '50709', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51440', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50737', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51389', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51516', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51526', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51535', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50474', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51880', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51410', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50684', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50631', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51838', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51852', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51411', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51412', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51450', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51395', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50733', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50444', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51394', '0', '0', '2', '13000');

#Mace, Spear, Sword 70011
SET @ENTRY := @i+11;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Дробящее, копья, мечи', 'Оружие', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '50603', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50708', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50738', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50734', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51391', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51454', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51446', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51520', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51833', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50672', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50704', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50735', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50732', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51448', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51481', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51522', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51869', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50730', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51393', '0', '0', '2', '13000');

#Staff, Wrist, Dagger 70012
SET @ENTRY := @i+12;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Посохи, кистевое, кинжалы', 'Оружие', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '50648', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50731', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51403', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51401', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51405', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51431', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51432', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51457', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50035', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50621', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50676', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50710', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50736', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50692', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50641', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50608', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51398', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51397', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51444', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51524', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51530', '0', '0', '2', '13000');

#Shields, Offhands, Manuscripts 70013
SET @ENTRY := @i+13;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Щиты, левая рука, манускрипты', 'Оружие', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '51452', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51455', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51533', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45470', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50729', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51909', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50616', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43085', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51922', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51408', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51396', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50635', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50719', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51407', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51409', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50454', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50456', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50457', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51423', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51437', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51429', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50458', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50463', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51507', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51501', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50464', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50460', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50455', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50461', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51478', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51472', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50462', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50459', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51417', '0', '0', '2', '13000');

#Trinket 70014
SET @ENTRY := @i+14;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Аксессуары', '', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '50343', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50345', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50348', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50355', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50358', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50363', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50356', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50349', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50346', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50344', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54590', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54588', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51377', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50706', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50365', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50364', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50366', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50726', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51378', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54589', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54591', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42137', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42135', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42134', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42136', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42126', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42122', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47131', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47059', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46312', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47041', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47188', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47088', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47303', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47271', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47432', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47464', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47735', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47290', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47316', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47451', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47734', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49080', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '48021', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '48724', '0', '0', '2', '13000');

#A8 Set 70015
SET @ENTRY := @i+15;
SET @SLOT := 0;
REPLACE INTO `creature_equip_template` VALUES (@ENTRY, '1', '48043', '48043', '0', '13000');
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'А8 сет', 'PvP', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '51415', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51418', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51413', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51414', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51416', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51421', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51424', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51419', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51420', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51422', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51427', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51430', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51425', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51426', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51428', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51435', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51438', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51433', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51434', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51436', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51460', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51462', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51458', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51459', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51461', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51465', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51467', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51463', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51464', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51466', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51470', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51473', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51468', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51469', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51471', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51476', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51479', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51474', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51475', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51477', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51484', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51486', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51482', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51483', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51485', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51489', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51491', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51487', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51488', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51490', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51494', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51496', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51492', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51493', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51495', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51499', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51502', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51497', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51498', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51500', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51505', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51508', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51503', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51504', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51506', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51511', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51514', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51509', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51510', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51512', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51538', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51540', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51536', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51537', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51539', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51543', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51545', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51541', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51542', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51544', '0', '0', '2', '13000');

#А8 nonst 70016
SET @ENTRY := @i+16;
SET @SLOT := 0;
REPLACE INTO `creature_equip_template` VALUES (@ENTRY, '1', '42322', '0', '0', '13000');
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'А8 нонсет', 'PvP', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '51331', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51333', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51335', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51347', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51349', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51353', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51355', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51357', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51330', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51332', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51334', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51346', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51348', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51354', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51356', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51329', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51339', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51342', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51345', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51352', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51361', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51364', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51367', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51370', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51373', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51376', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51327', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51337', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51340', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51343', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51350', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51359', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51362', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51365', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51368', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51371', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51374', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51328', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51338', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51341', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51344', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51351', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51360', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51363', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51366', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51369', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51372', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51375', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51336', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51358', '0', '0', '2', '13000');

#T10 70017
SET @ENTRY := @i+17;
SET @SLOT := 0;
REPLACE INTO `creature_equip_template` VALUES (@ENTRY, '1', '36942', '0', '0', '13000');
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Т10', 'PvE', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '51221', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51224', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51220', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51222', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51223', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51227', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51229', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51225', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51226', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51228', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51231', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51234', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51233', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51230', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51232', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51237', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51235', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51239', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51238', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51236', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51242', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51240', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51244', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51243', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51241', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51247', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51245', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51249', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51248', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51246', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51252', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51254', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51250', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51251', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51253', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51255', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51257', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51259', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51256', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51258', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51261', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51264', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51263', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51260', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51262', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51266', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51269', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51265', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51267', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51268', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51272', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51273', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51274', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51270', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51271', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51277', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51279', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51275', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51276', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51278', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51281', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51284', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51283', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51280', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51282', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51286', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51288', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51289', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51285', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51287', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51290', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51292', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51294', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51291', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51293', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51296', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51299', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51298', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51295', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51297', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51302', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51304', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51300', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51301', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51303', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51306', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51309', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51305', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51307', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51308', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51312', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51314', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51310', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51311', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51313', '0', '0', '2', '13000');

#Enchantments 70018
SET @ENTRY := @i+18;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Зачарования', 'Расходные материалы', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '44075', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44150', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44159', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44149', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44152', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44701', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44702', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44069', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44068', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44067', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44133', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44134', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44135', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44136', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44957', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38373', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38374', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41602', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41604', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44963', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41611', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41976', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38840', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38868', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38871', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38872', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38873', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38925', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38926', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38927', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38947', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38948', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38963', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38965', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38972', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38988', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38995', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38998', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43987', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44493', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44466', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44467', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44497', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46026', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46098', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44946', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38981', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44463', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45056', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38928', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38945', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38949', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38961', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38966', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38967', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38975', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38976', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38978', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38993', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38979', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39001', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39003', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39004', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39006', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44455', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44457', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44458', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44465', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44469', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44470', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44815', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44947', '0', '0', '2', '13000');

#Red 70019
SET @ENTRY := @i+19;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Красные', 'Камни', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '36766', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42142', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42144', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42143', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42151', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42153', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42152', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42154', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40112', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40114', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40116', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40118', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45862', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40117', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40115', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40113', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40111', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45879', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45883', '0', '0', '2', '13000');
	
#Yellow 70020
SET @ENTRY := @i+20;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Желтые', 'Камни', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '42149', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42148', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42150', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42157', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42156', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42158', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40124', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40126', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40128', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45987', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40123', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40125', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40127', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45882', '0', '0', '2', '13000');

#Blue 70021
SET @ENTRY := @i+21;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Синие', 'Камни', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '42146', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36767', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42145', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42155', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45881', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40122', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40120', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40119', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40121', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45880', '0', '0', '2', '13000');

#Green 70022
SET @ENTRY := @i+22;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Зеленые', 'Камни', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '40165', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40167', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40169', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40171', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40164', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40166', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40168', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40170', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40172', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40173', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40175', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40177', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40179', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40181', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40174', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40176', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40178', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40180', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40182', '0', '0', '2', '13000');

#Orange 70023
SET @ENTRY := @i+23;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Оранжевые', 'Камни', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '40143', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40145', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40147', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40149', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40142', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40144', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40146', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40148', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40150', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40151', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40153', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40155', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40157', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40159', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40152', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40154', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40156', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40158', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40160', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40161', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40163', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40162', '0', '0', '2', '13000');

#Violet 70024
SET @ENTRY := @i+24;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Фиолетовые', 'Камни', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '40130', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40132', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40134', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40136', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40137', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40135', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40133', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40131', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40129', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40138', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40140', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40139', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40141', '0', '0', '2', '13000');

#Special and Rainbow 70025
SET @ENTRY := @i+25;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Особые и радужные', 'Камни', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '49110', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41307', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41339', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41376', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41285', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41333', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41335', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41375', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41377', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41378', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41380', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41382', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41389', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41396', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41379', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41381', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41385', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41395', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41397', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41398', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41401', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44078', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44082', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44087', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41400', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44076', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44081', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44084', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44088', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44089', '0', '0', '2', '13000');

#Shirts and Tabards 70026
SET @ENTRY := @i+26;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Рубашки и накидки', '', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '42360', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42363', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42368', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42365', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42361', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42375', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42377', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44694', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40643', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45582', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45574', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45577', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45579', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45578', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45580', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45584', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45585', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45583', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45581', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46874', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45983', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49052', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49054', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51534', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49086', '0', '0', '2', '13000');

#Bags 70027
SET @ENTRY := @i+27;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Сумки', '', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '23162', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '51809', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23775', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38082', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38347', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38399', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41597', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41598', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44446', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45773', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44447', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44448', '0', '0', '2', '13000');

#Pets 70028
SET @ENTRY := @i+28;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Питомцы', '', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '44822', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11023', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10360', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10361', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29958', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29901', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29364', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46398', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8485', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8486', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8487', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8490', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8488', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8489', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10393', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10392', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29953', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8500', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8501', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29363', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '48120', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8496', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8492', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8495', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10394', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8497', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29956', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29902', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29957', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11026', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29904', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11027', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29903', '0', '0', '2557', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44984', '0', '0', '99', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54436', '0', '0', '99', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44970', '0', '0', '99', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44973', '0', '0', '99', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44974', '0', '0', '99', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44982', '0', '0', '99', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39973', '0', '0', '99', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45002', '0', '0', '99', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44980', '0', '0', '99', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45606', '0', '0', '99', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44965', '0', '0', '99', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44971', '0', '0', '99', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44738', '0', '0', '2448', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44841', '0', '0', '2448', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49912', '0', '0', '2448', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49646', '0', '0', '2448', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40653', '0', '0', '2448', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44810', '0', '0', '2448', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44819', '0', '0', '2448', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49362', '0', '0', '2448', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38628', '0', '0', '2448', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44723', '0', '0', '2448', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46820', '0', '0', '2448', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46821', '0', '0', '2448', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34478', '0', '0', '2448', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39898', '0', '0', '2448', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44721', '0', '0', '2448', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39896', '0', '0', '2448', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39899', '0', '0', '2448', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21301', '0', '0', '2560', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21308', '0', '0', '2560', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23007', '0', '0', '2560', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23015', '0', '0', '2560', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21305', '0', '0', '2560', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21309', '0', '0', '2560', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22235', '0', '0', '2560', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23002', '0', '0', '2560', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23083', '0', '0', '2561', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34425', '0', '0', '2561', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46545', '0', '0', '2561', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46544', '0', '0', '2561', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32616', '0', '0', '2561', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32622', '0', '0', '2561', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '53641', '0', '0', '2561', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46707', '0', '0', '2561', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34955', '0', '0', '2561', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '33154', '0', '0', '2561', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32617', '0', '0', '2561', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44794', '0', '0', '2561', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32233', '0', '0', '2561', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50446', '0', '0', '2561', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32588', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '20371', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13584', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39286', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37297', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46802', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '30360', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45180', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25535', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13583', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22114', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34492', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38050', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49343', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39656', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41133', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46767', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13582', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '56806', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34493', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23713', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49287', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49693', '0', '0', '2275', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54847', '0', '0', '2275', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49665', '0', '0', '2275', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49663', '0', '0', '2275', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49662', '0', '0', '2275', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '17202', '0', '0', '460', '13000');

#Poisons 70029
SET @ENTRY := @i+29;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Неуловимый Джо', 'Яды', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '3775', '0', '0', '2', '0'),
(@ENTRY, @SLOT := @SLOT+1, '5237', '0', '0', '2', '0'),
(@ENTRY, @SLOT := @SLOT+1, '43231', '0', '0', '2', '0'),
(@ENTRY, @SLOT := @SLOT+1, '43233', '0', '0', '2', '0'),
(@ENTRY, @SLOT := @SLOT+1, '43235', '0', '0', '2', '0'),
(@ENTRY, @SLOT := @SLOT+1, '43237', '0', '0', '2', '0');

#Mounts alliance 70030
SET @ENTRY := @i+30;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Алекс Вэнд', 'Маунты', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '18766', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18767', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18902', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8632', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47100', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8631', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8629', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18772', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18773', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18774', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8595', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13321', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8563', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13322', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18786', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18787', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18785', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5872', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5864', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5873', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18777', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18776', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18778', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2411', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5656', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5655', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2414', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29745', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29746', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29747', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '28481', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29744', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29743', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44225', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44226', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44230', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44231', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44235', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44234', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25473', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25528', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25529', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25527', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25471', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25470', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25472', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44689', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44690', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29227', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29229', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29230', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29231', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '31830', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '31832', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '31834', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '31836', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46815', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46813', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '33999', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43955', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32319', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32314', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32317', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32316', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32318', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43958', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44080', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43961', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44086', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54797', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44558', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34061', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44554', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34060', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29465', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29467', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29468', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '35906', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29471', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '19030', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43956', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '28915', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29228', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44413', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41508', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '30609', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34092', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37676', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43516', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13086', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46102', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32858', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32859', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32857', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32860', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32861', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32862', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44707', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44223', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44224', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '33809', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49098', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49096', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13335', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '30480', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43986', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43953', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44151', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43951', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49046', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49044', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '35513', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '19872', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '19902', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45693', '0', '0', '2741', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43954', '0', '0', '2741', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43952', '0', '0', '2741', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '52200', '0', '0', '2741', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32768', '0', '0', '2741', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32458', '0', '0', '2742', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50818', '0', '0', '2742', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44843', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44842', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44178', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44164', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45801', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44175', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44160', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45802', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44168', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46109', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21321', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21218', '0', '0', '66', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21323', '0', '0', '66', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21324', '0', '0', '66', '13000');

#Mounts alliance 70031
SET @ENTRY := @i+31;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Алекс Вэнд', 'Маунты', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '18796', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18798', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18797', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46099', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5668', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5665', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '1132', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29223', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '28936', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29224', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29221', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29220', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29222', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '28927', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18788', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18789', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18790', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8588', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8591', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8592', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13334', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47101', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18791', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46308', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13332', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13333', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13331', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18794', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18795', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18793', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '15290', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '15277', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46100', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44225', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44226', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44230', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44231', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44235', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44234', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25531', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25533', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25477', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25532', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25475', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25476', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25474', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44689', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44690', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29102', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29104', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29105', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29103', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '31829', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '31831', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '31833', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '31835', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46816', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46814', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '33999', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43955', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32319', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32314', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32317', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32316', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32318', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43958', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44080', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43961', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44086', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54797', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44558', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34061', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44554', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34060', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29466', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29469', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29470', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34129', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29472', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '19029', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44077', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '28915', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29228', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44413', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41508', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '30609', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34092', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37676', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43516', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13086', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46102', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32858', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32859', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32857', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32860', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32861', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32862', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44707', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44223', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44224', '0', '0', '2403', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '33809', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49098', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49096', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13335', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '30480', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43986', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43953', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44151', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43951', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49046', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49044', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '35513', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '19872', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '19902', '0', '0', '2739', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45693', '0', '0', '2741', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43954', '0', '0', '2741', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43952', '0', '0', '2741', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '52200', '0', '0', '2741', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32768', '0', '0', '2741', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32458', '0', '0', '2742', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50818', '0', '0', '2742', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44843', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44842', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44178', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44164', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45801', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44175', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44160', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45802', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44168', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46109', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21321', '0', '0', '2420', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21218', '0', '0', '66', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21323', '0', '0', '66', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21324', '0', '0', '66', '13000');

#Mounts legendaty alliance 70032
SET @ENTRY := @i+32;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Райзи Вэнд', 'Легендарные маунты', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '45591', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45590', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45589', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45586', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45125', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46745', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46752', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46744', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46748', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46747', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47180', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47179', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45725', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37828', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '33977', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '33976', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37012', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37011', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50250', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43962', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43599', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49283', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49285', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46708', '0', '0', '2957', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46171', '0', '0', '2609', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47840', '0', '0', '2719', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54068', '0', '0', '2274', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49282', '0', '0', '2274', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49290', '0', '0', '2274', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23720', '0', '0', '2274', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37719', '0', '0', '2274', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54860', '0', '0', '2274', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49286', '0', '0', '2274', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21176', '0', '0', '2274', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49284', '0', '0', '2275', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44177', '0', '0', '2275', '13000');

#Mounts legendary horde 70033
SET @ENTRY := @i+33;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Райзи Вэнд', 'Легендарные маунты', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '45593', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45597', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45595', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45596', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45592', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46750', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46749', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46743', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46751', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46746', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47180', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47179', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45725', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37828', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '33977', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '33976', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37012', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37011', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50250', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43962', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43599', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49283', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49285', '0', '0', '2596', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46708', '0', '0', '2957', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46171', '0', '0', '2609', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47840', '0', '0', '2719', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54068', '0', '0', '2274', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49282', '0', '0', '2274', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49290', '0', '0', '2274', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23720', '0', '0', '2274', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37719', '0', '0', '2274', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '54860', '0', '0', '2274', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49286', '0', '0', '2274', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21176', '0', '0', '2274', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49284', '0', '0', '2275', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44177', '0', '0', '2275', '13000');

#Paladin glyphs 70040
SET @ENTRY := @i+40;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Паладин', 'Тренер', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '45743', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45742', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45745', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45747', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45741', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45746', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45744', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41107', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43869', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43868', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43867', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41101', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41097', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41109', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41110', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41102', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41094', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41105', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41103', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41098', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41099', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41104', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41100', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41108', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41092', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41095', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41106', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41096', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43369', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43365', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43368', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43366', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43367', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43340', '0', '0', '2', '13000');

#Mage glyphs 70041
SET @ENTRY := @i+41;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Маг', 'Тренер', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '45736', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45737', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45739', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45740', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45738', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44684', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42748', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42751', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42754', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42753', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42752', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42740', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42742', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42739', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42745', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42736', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42749', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44955', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42750', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50045', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42744', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42747', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42746', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42738', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42737', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42735', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42743', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42734', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42741', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44920', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43360', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43357', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43364', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43361', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43359', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43339', '0', '0', '2', '13000');

#Shaman glyphs 70042
SET @ENTRY := @i+42;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Шаман', 'Тренер', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '45772', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45770', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45771', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45777', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45778', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41529', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41552', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41538', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41517', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41518', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41526', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41534', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41524', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41539', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41542', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41527', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41541', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45776', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45775', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41535', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41533', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41547', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41540', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41536', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41532', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41530', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41537', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41531', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44923', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43381', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43385', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43388', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43344', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43386', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43725', '0', '0', '2', '13000');

#Priest glyphs 70043
SET @ENTRY := @i+43;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Жрец', 'Тренер', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '45758', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45756', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45757', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45755', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45753', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42404', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42414', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42396', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42403', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42417', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42405', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42409', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42407', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42412', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42406', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42401', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42399', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45760', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42397', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42416', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42415', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42411', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42402', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42400', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42410', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42398', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42408', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43374', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43370', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43372', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43373', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43342', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43371', '0', '0', '2', '13000');

#Warrior glyphs 70044
SET @ENTRY := @i+44;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Воин', 'Тренер', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '45793', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45794', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45790', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45797', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45795', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45792', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43419', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43415', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43425', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43412', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43421', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43426', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43431', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43429', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43430', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43432', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43428', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43416', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43414', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43420', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43424', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43422', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43427', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43417', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43423', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43418', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43413', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49084', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43400', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43398', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43396', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43399', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43397', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43395', '0', '0', '2', '13000');

#Hunter glyphs 70045
SET @ENTRY := @i+45;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Охотник', 'Тренер', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '43350', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45733', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45625', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45734', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45731', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45732', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45735', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42913', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42914', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42915', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42916', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42902', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42917', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42899', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42901', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42909', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42906', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42911', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42905', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42904', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42903', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42897', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42910', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42908', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42900', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42912', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42898', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42907', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43355', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43351', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43338', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43354', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43356', '0', '0', '2', '13000');

#Hunter glyphs 70046
SET @ENTRY := @i+46;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Разбойник', 'Тренер', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '45766', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45761', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45767', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45769', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45764', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45762', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42971', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42959', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42954', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42967', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42968', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42957', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42958', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42965', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42969', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42955', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42963', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42974', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45768', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42973', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42972', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42970', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42966', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42964', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42962', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42960', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42961', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42956', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43378', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43380', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43376', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43377', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43379', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43343', '0', '0', '2', '13000');

#Druid glyphs 70047
SET @ENTRY := @i+47;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Друид', 'Тренер', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '45601', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45602', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45604', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45623', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45603', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '46372', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40915', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40921', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40900', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40906', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40920', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40908', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40912', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40899', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44928', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50125', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40896', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40903', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40901', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45622', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40916', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40902', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40909', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40919', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40923', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40914', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40897', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '48720', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40924', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40922', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40913', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44922', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43334', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43674', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43331', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43316', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43332', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43335', '0', '0', '2', '13000');

#Warlock glyphs 70048
SET @ENTRY := @i+48;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Чернокнижник', 'Тренер', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '45779', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45782', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45785', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45780', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45783', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45789', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45781', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42472', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42459', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42457', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42463', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42454', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42469', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42460', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42456', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42464', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '50077', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42453', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42471', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42468', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42470', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42466', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42473', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42467', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42465', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42458', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42461', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42462', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42455', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43394', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43392', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43393', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43391', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43389', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43390', '0', '0', '2', '13000');

#Death knight glyphs 70049
SET @ENTRY := @i+49;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Рыцарь смерти', 'Тренер', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '45806', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45800', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45803', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45799', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43533', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43537', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43545', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43550', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43542', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43538', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43534', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43547', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43552', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43549', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43554', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43827', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43551', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43826', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43825', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43553', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43548', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43541', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43546', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45805', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45804', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43543', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43536', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43544', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43535', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43671', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43673', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43672', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43539', '0', '0', '2', '13000');

#Toolkit 70050
SET @ENTRY := @i+50;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Инструменты', 'Реагенты', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '2901', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3470', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3486', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5956', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6219', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7005', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7966', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10580', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10719', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '20815', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '20824', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23820', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37567', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39505', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40536', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40768', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40769', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40771', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40772', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40892', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40893', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41119', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41146', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41167', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42546', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42641', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44739', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44951', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47828', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49040', '0', '0', '2', '13000');

#Alchemy 70051
SET @ENTRY := @i+51;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Алхимия', 'Реагенты', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '765', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '785', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '1288', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2447', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2449', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2450', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2452', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2453', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3164', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3357', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3358', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3371', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3372', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3818', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3820', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3821', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4402', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4625', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5635', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5637', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6358', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6370', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6371', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6522', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7067', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7077', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7080', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7082', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7972', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8153', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8831', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8836', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8839', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8845', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8846', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8925', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '9260', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '9262', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10286', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11176', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13422', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13423', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13463', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13464', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13465', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13466', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13467', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13468', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18256', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22785', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22786', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22787', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22789', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22790', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22791', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22792', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22793', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22794', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22901', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23571', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '33447', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '33448', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36901', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36903', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36904', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36905', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36906', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36907', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36908', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37921', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39970', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40195', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40199', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40411', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41814', '0', '0', '2', '13000');

#Mining 70052
SET @ENTRY := @i+52;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Горное дело', 'Реагенты', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '2770', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2771', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2772', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2775', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2776', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2840', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2841', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2842', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3470', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3575', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3576', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3577', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3857', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3858', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3859', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3860', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7911', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10620', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11176', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11370', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '12359', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '12360', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '12655', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '17010', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18562', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18567', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21884', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22202', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22203', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22452', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23424', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23425', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23426', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23427', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23446', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23448', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23449', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23573', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36909', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36910', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36912', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36913', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36916', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37663', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41163', '0', '0', '2', '13000');

#Leatherworking 70053
SET @ENTRY := @i+53;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Кожевничество', 'Реагенты', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '2318', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2319', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2320', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2934', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4231', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4232', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4234', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4236', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4304', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4461', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5082', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5498', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5637', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6470', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6471', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7075', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7078', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7081', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7286', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7392', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8154', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8165', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8167', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8169', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8170', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8171', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8172', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '12753', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '12803', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '12810', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '15407', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '15408', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '15412', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '15414', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '15415', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '15416', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '15417', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '17056', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21887', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22452', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22457', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23571', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23793', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25649', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25699', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25700', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25707', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29539', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29547', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '29548', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '33567', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '33568', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38425', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38557', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38558', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38561', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44128', '0', '0', '2', '13000');

#Engineering 70054
SET @ENTRY := @i+54;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Инженерное дело', 'Реагенты', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '4357', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4359', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4361', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4363', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4364', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4371', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4375', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4377', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4382', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4387', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4388', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4389', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4399', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4404', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6219', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7191', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7506', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8150', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '9061', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10498', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10505', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10558', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10559', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10560', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10561', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '15992', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '15994', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '16000', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '16006', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '18631', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23781', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23782', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23783', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23784', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23785', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23786', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23787', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32423', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39681', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39682', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39683', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39690', '0', '0', '2', '13000');

#Enchanting 70055
SET @ENTRY := @i+55;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Наложение чар', 'Реагенты', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '3829', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4470', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5500', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6217', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6339', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6371', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7075', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7077', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7078', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7079', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7080', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7081', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7082', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10938', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10939', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10940', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10978', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10998', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11082', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11083', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11084', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11128', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11134', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11135', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11137', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11138', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11139', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11144', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11174', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11175', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11176', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11177', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11178', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11291', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '12803', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '12808', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13467', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '13926', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '14343', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '14344', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '16202', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '16203', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '16204', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '16206', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '17034', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '20725', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22445', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22446', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22447', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22448', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22449', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22450', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22451', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22452', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22456', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22461', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22462', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22463', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22573', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25843', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25844', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25845', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34052', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34054', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34055', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34056', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34057', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41745', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44452', '0', '0', '2', '13000');

#Inscription 70056
SET @ENTRY := @i+56;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Начертание', 'Реагенты', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '10648', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37101', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39151', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39334', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39338', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39339', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39340', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39341', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39342', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39354', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39393', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39469', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39501', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39502', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39774', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43103', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43104', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43105', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43106', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43107', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43108', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43109', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43116', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43117', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43118', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43119', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43120', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43121', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43122', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43123', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43124', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43125', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43126', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43127', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45912', '0', '0', '2', '13000');

#Tailoring 70057
SET @ENTRY := @i+57;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Портняжное дело', 'Реагенты', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '2320', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2321', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2324', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2325', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2589', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2592', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2604', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2605', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2996', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2997', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3182', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3827', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4291', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4305', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4306', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4337', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4338', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4339', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4340', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '4341', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5339', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5498', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6260', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6261', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6371', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7071', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8343', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '9210', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '10290', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '12622', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '14047', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '14048', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '14227', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '14256', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '14341', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '14342', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21840', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21842', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21844', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21877', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '24271', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '24272', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '33470', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38426', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41510', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41511', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41520', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41593', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41594', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41595', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42253', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '49908', '0', '0', '2', '13000');

#Jewelcrafting 70058
SET @ENTRY := @i+58;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Ювелирное дело', 'Реагенты', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '774', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '818', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '1206', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '1210', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '1529', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '1705', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2770', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2835', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2836', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2838', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2840', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3407', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3577', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3864', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5498', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6037', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7067', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7909', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7910', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7912', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7971', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8151', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11137', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '11754', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '12361', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '12363', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '12364', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '12365', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '12799', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '12800', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '12804', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '20816', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '20817', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '20963', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21752', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21884', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21885', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21886', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '21929', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22452', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22457', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22578', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23077', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23079', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23107', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23112', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23117', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23436', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23437', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23438', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23439', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23440', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23441', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23445', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23447', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23448', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '24243', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '24478', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '24479', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25867', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '25868', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '31079', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32227', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32228', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32229', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32230', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32231', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '32249', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34052', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34054', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36783', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36784', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36917', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36918', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36919', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36920', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36921', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36922', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36923', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36924', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36925', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36926', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36927', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36928', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36929', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36930', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36931', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36932', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36933', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36934', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41266', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41334', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41596', '0', '0', '2', '13000');

#Other 70059
SET @ENTRY := @i+59;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Разное', 'Реагенты', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '7068', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7069', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '22451', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23571', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '23572', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34055', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '35622', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '35623', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '35624', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '35625', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '35627', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36781', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36860', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37145', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37147', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37159', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37160', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37164', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37168', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37700', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37701', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37702', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37703', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37704', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37705', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39151', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39334', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39338', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39339', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39340', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39341', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39342', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39343', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39354', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39501', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39502', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39505', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40195', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40199', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40248', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '40411', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '42440', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43007', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43102', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43103', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43104', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43105', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43106', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43107', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43108', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43109', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44142', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44161', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44163', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44316', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44317', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44318', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44322', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44323', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44324', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44475', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44700', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44835', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44852', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44853', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44958', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45087', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45909', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '47556', '0', '0', '2', '13000');

#Fish, Meat and Grass 70060
SET @ENTRY := @i+60;
SET @SLOT := 0;
DELETE FROM `npc_vendor` WHERE (`entry`=@ENTRY);
DELETE FROM `creature_template_locale` WHERE (`entry`=@ENTRY);
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Рыба, мясо и трава', 'Реагенты', '13000');
REPLACE INTO `npc_vendor` VALUES
(@ENTRY, @SLOT := @SLOT+1, '2672', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2674', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '2678', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '3404', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '5504', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6662', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '6889', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '7974', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '8838', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '24477', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '27674', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '27688', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '30817', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '34736', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '35794', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36782', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36901', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36902', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36903', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36904', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36905', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36906', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36907', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '36908', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '37921', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '38688', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '39152', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41800', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41801', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41802', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41803', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41805', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41806', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41807', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41808', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41809', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41810', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41812', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41813', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '41814', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43007', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43009', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43010', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43011', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43012', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43013', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43016', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43501', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43571', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43572', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43646', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43647', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '43652', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44228', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '44834', '0', '0', '2', '13000'),
(@ENTRY, @SLOT := @SLOT+1, '45907', '0', '0', '2', '13000');

/* BROKEN
SET @ENTRY := @i+40;
INSERT INTO `creature_template_locale` VALUES
(@ENTRY, 'ruRU', 'Тренер', '', '13000');
REPLACE INTO `creature_default_trainer` VALUES (@ENTRY, '3');
REPLACE INTO `gossip_menu_option` VALUES (@ENTRY, '0', '3', 'Trainer', '0', '5', '16', @ENTRY, '0', '0', '0', '0', '0', '13000');
REPLACE INTO `creature_default_trainer` VALUES (@ENTRY := @ENTRY+1, '16');
REPLACE INTO `gossip_menu_option` VALUES (@ENTRY, '1', '3', 'Trainer', '0', '5', '16', @ENTRY, '0', '0', '0', '0', '0', '13000');
REPLACE INTO `creature_default_trainer` VALUES (@ENTRY := @ENTRY+1, '14');
REPLACE INTO `gossip_menu_option` VALUES (@ENTRY, '2', '3', 'Trainer', '0', '5', '16', @ENTRY, '0', '0', '0', '0', '0', '13000');
REPLACE INTO `creature_default_trainer` VALUES (@ENTRY := @ENTRY+1, '11');
REPLACE INTO `gossip_menu_option` VALUES (@ENTRY, '3', '3', 'Trainer', '0', '5', '16', @ENTRY, '0', '0', '0', '0', '0', '13000');
REPLACE INTO `creature_default_trainer` VALUES (@ENTRY := @ENTRY+1, '1');
REPLACE INTO `gossip_menu_option` VALUES (@ENTRY, '4', '3', 'Trainer', '0', '5', '16', @ENTRY, '0', '0', '0', '0', '0', '13000');
REPLACE INTO `creature_default_trainer` VALUES (@ENTRY := @ENTRY+1, '7');
REPLACE INTO `gossip_menu_option` VALUES (@ENTRY, '5', '3', 'Trainer', '0', '5', '16', @ENTRY, '0', '0', '0', '0', '0', '13000');
REPLACE INTO `creature_default_trainer` VALUES (@ENTRY := @ENTRY+1, '9');
REPLACE INTO `gossip_menu_option` VALUES (@ENTRY, '6', '3', 'Trainer', '0', '5', '16', @ENTRY, '0', '0', '0', '0', '0', '13000');
REPLACE INTO `creature_default_trainer` VALUES (@ENTRY := @ENTRY+1, '33');
REPLACE INTO `gossip_menu_option` VALUES (@ENTRY, '7', '3', 'Trainer', '0', '5', '16', @ENTRY, '0', '0', '0', '0', '0', '13000');
REPLACE INTO `creature_default_trainer` VALUES (@ENTRY := @ENTRY+1, '31');
REPLACE INTO `gossip_menu_option` VALUES (@ENTRY, '8', '3', 'Trainer', '0', '5', '16', @ENTRY, '0', '0', '0', '0', '0', '13000');
REPLACE INTO `creature_default_trainer` VALUES (@ENTRY := @ENTRY+1, '13');
*/

#SET @i := 70000; #todo comment
#little fixes
UPDATE `item_template` SET `FlagsExtra`=0 WHERE `entry`=43236;
UPDATE `item_template` SET `BuyCount`=20 WHERE `entry`=21215;
