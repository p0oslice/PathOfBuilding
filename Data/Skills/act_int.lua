-- Path of Building
--
-- Active Intelligence skill gems
-- Skill data (c) Grinding Gear Games
--
local skills, mod, flag, skill = ...

skills["Arc"] = {
	name = "Arc",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		chaining = true,
		lightning = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		chaining = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [10] = true, [17] = true, [18] = true, [19] = true, [23] = true, [26] = true, [36] = true, [45] = true, [35] = true, },
	baseMods = {
		skill("castTime", 0.8), 
		skill("damageEffectiveness", 0.7), 
		skill("critChance", 5), 
		mod("EnemyShockChance", "BASE", 10), --"base_chance_to_shock_%" = 10
	},
	qualityMods = {
		mod("EnemyShockChance", "BASE", 0.5), --"base_chance_to_shock_%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[4] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
		[5] = mod("ChainCount", "BASE", nil), --"number_of_additional_projectiles_in_chain"
	},
	levels = {
		[1] = { 12, 9, 2, 35, 2, },
		[2] = { 15, 10, 2, 44, 2, },
		[3] = { 19, 11, 3, 58, 2, },
		[4] = { 23, 12, 4, 76, 3, },
		[5] = { 27, 13, 5, 97, 3, },
		[6] = { 31, 14, 6, 123, 3, },
		[7] = { 35, 16, 8, 154, 3, },
		[8] = { 38, 16, 10, 182, 4, },
		[9] = { 41, 17, 11, 214, 4, },
		[10] = { 44, 18, 13, 250, 4, },
		[11] = { 47, 19, 15, 292, 4, },
		[12] = { 50, 20, 18, 340, 5, },
		[13] = { 53, 21, 21, 395, 5, },
		[14] = { 56, 22, 24, 458, 5, },
		[15] = { 59, 23, 28, 529, 5, },
		[16] = { 62, 24, 32, 610, 6, },
		[17] = { 64, 24, 35, 671, 6, },
		[18] = { 66, 25, 39, 736, 6, },
		[19] = { 68, 25, 43, 808, 6, },
		[20] = { 70, 26, 47, 886, 7, },
		[21] = { 72, 26, 51, 971, 7, },
		[22] = { 74, 26, 56, 1064, 7, },
		[23] = { 76, 27, 61, 1164, 7, },
		[24] = { 78, 28, 67, 1274, 8, },
		[25] = { 80, 29, 73, 1393, 8, },
		[26] = { 82, 30, 80, 1523, 8, },
		[27] = { 84, 30, 88, 1663, 8, },
		[28] = { 86, 30, 96, 1816, 9, },
		[29] = { 88, 31, 104, 1983, 9, },
		[30] = { 90, 32, 114, 2163, 9, },
	},
}
skills["VaalArcChain"] = {
	name = "Vaal Arc",
	gemTags = {
		intelligence = true,
		active_skill = true,
		vaal = true,
		spell = true,
		chaining = true,
		lightning = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		lightning = true,
		vaal = true,
	},
	skillTypes = { [2] = true, [10] = true, [17] = true, [18] = true, [19] = true, [23] = true, [26] = true, [43] = true, [35] = true, },
	baseMods = {
		skill("castTime", 0.8), 
		skill("damageEffectiveness", 0.8), 
		skill("critChance", 5), 
		mod("EnemyShockChance", "BASE", 100), --"base_chance_to_shock_%" = 100
		mod("ChainCount", "BASE", 40), --"number_of_additional_projectiles_in_chain" = 40
	},
	qualityMods = {
		mod("EnemyShockDuration", "INC", 1.5), --"shock_duration_+%" = 1.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[3] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
	},
	levels = {
		[1] = { 12, 2, 35, },
		[2] = { 15, 2, 44, },
		[3] = { 19, 3, 59, },
		[4] = { 23, 4, 77, },
		[5] = { 27, 5, 99, },
		[6] = { 31, 7, 125, },
		[7] = { 35, 8, 158, },
		[8] = { 38, 10, 187, },
		[9] = { 41, 12, 220, },
		[10] = { 44, 14, 259, },
		[11] = { 47, 16, 303, },
		[12] = { 50, 19, 353, },
		[13] = { 53, 22, 411, },
		[14] = { 56, 25, 478, },
		[15] = { 59, 29, 554, },
		[16] = { 62, 34, 641, },
		[17] = { 64, 37, 706, },
		[18] = { 66, 41, 777, },
		[19] = { 68, 45, 854, },
		[20] = { 70, 49, 938, },
		[21] = { 72, 54, 1030, },
		[22] = { 74, 60, 1131, },
		[23] = { 76, 65, 1240, },
		[24] = { 78, 72, 1359, },
		[25] = { 80, 78, 1489, },
		[26] = { 82, 86, 1631, },
		[27] = { 84, 94, 1785, },
		[28] = { 86, 103, 1953, },
		[29] = { 88, 112, 2136, },
		[30] = { 90, 123, 2335, },
	},
}
skills["ArcticBreath"] = {
	name = "Arctic Breath",
	gemTags = {
		projectile = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		duration = true,
		area = true,
		cold = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		projectile = true,
		duration = true,
		cold = true,
	},
	skillTypes = { [2] = true, [3] = true, [10] = true, [17] = true, [18] = true, [19] = true, [12] = true, [11] = true, [26] = true, [36] = true, [34] = true, [60] = true, },
	baseMods = {
		skill("castTime", 0.8), 
		skill("critChance", 5), 
		--"base_is_projectile" = 1
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("ColdMin", nil), --"spell_minimum_base_cold_damage"
		[4] = skill("ColdMax", nil), --"spell_maximum_base_cold_damage"
		[5] = skill("duration", nil), --"base_skill_effect_duration"
	},
	levels = {
		[1] = { 28, 11, 52, 78, 0.88, },
		[2] = { 31, 11, 64, 96, 0.94, },
		[3] = { 34, 12, 77, 116, 0.99, },
		[4] = { 37, 13, 93, 140, 1.05, },
		[5] = { 40, 14, 112, 168, 1.1, },
		[6] = { 42, 14, 126, 190, 1.16, },
		[7] = { 44, 15, 143, 214, 1.21, },
		[8] = { 46, 15, 160, 240, 1.27, },
		[9] = { 48, 16, 180, 270, 1.32, },
		[10] = { 50, 16, 202, 303, 1.35, },
		[11] = { 52, 16, 227, 340, 1.38, },
		[12] = { 54, 17, 254, 381, 1.4, },
		[13] = { 56, 17, 284, 426, 1.43, },
		[14] = { 58, 18, 317, 476, 1.46, },
		[15] = { 60, 18, 354, 532, 1.49, },
		[16] = { 62, 19, 395, 593, 1.51, },
		[17] = { 64, 19, 441, 661, 1.54, },
		[18] = { 66, 20, 491, 737, 1.57, },
		[19] = { 68, 20, 547, 820, 1.6, },
		[20] = { 70, 21, 608, 913, 1.65, },
		[21] = { 72, 21, 677, 1015, 1.71, },
		[22] = { 74, 22, 752, 1128, 1.76, },
		[23] = { 76, 22, 835, 1252, 1.82, },
		[24] = { 78, 23, 927, 1390, 1.87, },
		[25] = { 80, 23, 1028, 1542, 1.93, },
		[26] = { 82, 24, 1140, 1710, 1.98, },
		[27] = { 84, 24, 1264, 1896, 2.04, },
		[28] = { 86, 25, 1400, 2100, 2.09, },
		[29] = { 88, 25, 1550, 2326, 2.15, },
		[30] = { 90, 26, 1716, 2574, 2.2, },
	},
}
skills["AssassinsMark"] = {
	name = "Assassin's Mark",
	gemTags = {
		curse = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		mod("SelfCritMultiplier", "INC", 20, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_self_critical_strike_multiplier_-%" = -20
		--"base_deal_no_damage" = ?
		skill("debuff", true), 
	},
	qualityMods = {
		--"chance_to_grant_power_charge_on_death_%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("duration", nil), --"base_skill_effect_duration"
		[4] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
		[5] = mod("SelfExtraCritChance", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"additional_chance_to_take_critical_strike_%"
		[6] = mod("SelfLifeOnKill", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"life_granted_when_killed"
		[7] = mod("SelfManaOnKill", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"mana_granted_when_killed"
		--[8] = "chance_to_grant_power_charge_on_death_%"
	},
	levels = {
		[1] = { 24, 24, 6, 0, 5, 16, 16, 21, },
		[2] = { 27, 26, 6.2, 4, 5, 16, 16, 21, },
		[3] = { 30, 27, 6.4, 8, 5, 17, 17, 22, },
		[4] = { 33, 29, 6.6, 12, 6, 17, 17, 22, },
		[5] = { 36, 30, 6.8, 16, 6, 18, 18, 23, },
		[6] = { 39, 32, 7, 20, 6, 18, 18, 23, },
		[7] = { 42, 34, 7.2, 24, 7, 19, 19, 24, },
		[8] = { 45, 35, 7.4, 28, 7, 19, 19, 24, },
		[9] = { 48, 37, 7.6, 32, 7, 20, 20, 25, },
		[10] = { 50, 38, 7.8, 36, 8, 20, 20, 25, },
		[11] = { 52, 39, 8, 40, 8, 21, 21, 26, },
		[12] = { 54, 40, 8.2, 44, 8, 21, 21, 26, },
		[13] = { 56, 42, 8.4, 48, 8, 22, 22, 27, },
		[14] = { 58, 43, 8.6, 52, 8, 22, 22, 27, },
		[15] = { 60, 44, 8.8, 56, 9, 23, 23, 28, },
		[16] = { 62, 45, 9, 60, 9, 23, 23, 28, },
		[17] = { 64, 46, 9.2, 64, 9, 24, 24, 29, },
		[18] = { 66, 47, 9.4, 68, 9, 24, 24, 29, },
		[19] = { 68, 48, 9.6, 72, 9, 25, 25, 30, },
		[20] = { 70, 50, 9.8, 76, 9, 25, 25, 30, },
		[21] = { 72, 51, 10, 80, 10, 26, 26, 31, },
		[22] = { 74, 52, 10.2, 84, 10, 26, 26, 31, },
		[23] = { 76, 53, 10.4, 88, 10, 27, 27, 32, },
		[24] = { 78, 54, 10.6, 92, 10, 27, 27, 32, },
		[25] = { 80, 56, 10.8, 96, 10, 28, 28, 33, },
		[26] = { 82, 57, 11, 100, 11, 28, 28, 33, },
		[27] = { 84, 58, 11.2, 104, 11, 29, 29, 34, },
		[28] = { 86, 59, 11.4, 108, 11, 29, 29, 34, },
		[29] = { 88, 60, 11.6, 112, 11, 30, 30, 35, },
		[30] = { 90, 61, 11.8, 116, 11, 30, 30, 35, },
	},
}
skills["BallLightning"] = {
	name = "Ball Lightning",
	gemTags = {
		projectile = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		lightning = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [10] = true, [3] = true, [11] = true, [18] = true, [17] = true, [19] = true, [26] = true, [36] = true, [45] = true, [35] = true, },
	baseMods = {
		skill("castTime", 0.8), 
		skill("damageEffectiveness", 0.2), 
		skill("critChance", 5), 
		--"active_skill_index" = 0
		--"base_is_projectile" = ?
	},
	qualityMods = {
		mod("LightningDamage", "INC", 1), --"lightning_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[4] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
	},
	levels = {
		[1] = { 28, 14, 2, 32, },
		[2] = { 31, 15, 2, 38, },
		[3] = { 34, 16, 2, 45, },
		[4] = { 37, 17, 3, 53, },
		[5] = { 40, 18, 3, 62, },
		[6] = { 42, 19, 4, 69, },
		[7] = { 44, 20, 4, 76, },
		[8] = { 46, 21, 4, 84, },
		[9] = { 48, 22, 5, 93, },
		[10] = { 50, 23, 5, 103, },
		[11] = { 52, 24, 6, 113, },
		[12] = { 54, 25, 7, 124, },
		[13] = { 56, 25, 7, 137, },
		[14] = { 58, 25, 8, 150, },
		[15] = { 60, 26, 9, 165, },
		[16] = { 62, 26, 10, 181, },
		[17] = { 64, 26, 10, 199, },
		[18] = { 66, 26, 11, 217, },
		[19] = { 68, 27, 13, 238, },
		[20] = { 70, 27, 14, 260, },
		[21] = { 72, 28, 15, 285, },
		[22] = { 74, 28, 16, 311, },
		[23] = { 76, 29, 18, 340, },
		[24] = { 78, 29, 20, 371, },
		[25] = { 80, 30, 21, 404, },
		[26] = { 82, 30, 23, 441, },
		[27] = { 84, 30, 25, 480, },
		[28] = { 86, 30, 28, 523, },
		[29] = { 88, 31, 30, 570, },
		[30] = { 90, 31, 33, 620, },
	},
}
skills["Blight"] = {
	name = "Blight",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		chaos = true,
		area = true,
		channelling = true,
		duration = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		duration = true,
		area = true,
		chaos = true,
	},
	skillTypes = { [2] = true, [50] = true, [11] = true, [18] = true, [58] = true, [12] = true, [40] = true, [59] = true, [52] = true, },
	baseMods = {
		skill("castTime", 0.3), 
		skill("duration", 2.5), --"base_skill_effect_duration" = 2500
		--"base_secondary_skill_effect_duration" = 800
		mod("MovementSpeed", "INC", -80, 0, 0, nil), --"base_movement_velocity_+%" = -80
		--"display_max_blight_stacks" = 20
		skill("dotIsSpell", true), --"spell_damage_modifiers_apply_to_damage_over_time" = ?
		--"is_area_damage" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("ChaosDot", nil), --"base_chaos_damage_to_deal_per_minute"
		--[4] = "active_skill_base_radius_+"
	},
	levels = {
		[1] = { 1, 2, 1.7333333333333, 0, },
		[2] = { 2, 2, 1.9666666666667, 0, },
		[3] = { 4, 2, 2.4666666666667, 0, },
		[4] = { 7, 2, 3.3666666666667, 0, },
		[5] = { 11, 2, 4.8333333333333, 1, },
		[6] = { 16, 2, 7.2166666666667, 1, },
		[7] = { 20, 2, 9.6833333333333, 1, },
		[8] = { 24, 2, 12.75, 1, },
		[9] = { 28, 2, 16.566666666667, 1, },
		[10] = { 32, 2, 21.266666666667, 2, },
		[11] = { 36, 2, 27.05, 2, },
		[12] = { 40, 3, 34.133333333333, 2, },
		[13] = { 44, 3, 42.816666666667, 2, },
		[14] = { 48, 3, 53.4, 2, },
		[15] = { 52, 3, 66.283333333333, 3, },
		[16] = { 56, 3, 81.916666666667, 3, },
		[17] = { 60, 3, 100.88333333333, 3, },
		[18] = { 64, 4, 123.83333333333, 3, },
		[19] = { 67, 4, 144.11666666667, 3, },
		[20] = { 70, 4, 167.48333333333, 4, },
		[21] = { 72, 4, 184.96666666667, 4, },
		[22] = { 74, 4, 204.16666666667, 4, },
		[23] = { 76, 4, 225.23333333333, 4, },
		[24] = { 78, 5, 248.33333333333, 4, },
		[25] = { 80, 5, 273.66666666667, 5, },
		[26] = { 82, 5, 301.41666666667, 5, },
		[27] = { 84, 5, 331.83333333333, 5, },
		[28] = { 86, 5, 365.16666666667, 5, },
		[29] = { 88, 5, 401.66666666667, 5, },
		[30] = { 90, 5, 441.61666666667, 6, },
	},
}
skills["BoneOffering"] = {
	name = "Bone Offering",
	gemTags = {
		minion = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		duration = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		duration = true,
	},
	skillTypes = { [2] = true, [5] = true, [12] = true, [36] = true, [9] = true, [49] = true, [17] = true, [19] = true, [18] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("duration", 3), --"base_skill_effect_duration" = 3000
		--"offering_skill_effect_duration_per_corpse" = 500
		--"base_deal_no_damage" = ?
		skill("offering", true), 
	},
	qualityMods = {
		mod("Duration", "INC", 0.5), --"skill_effect_duration_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = mod("BlockChance", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"monster_base_block_%"
		[4] = mod("SpellBlockChance", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"base_spell_block_%"
		--[5] = "minion_recover_X_life_on_block"
	},
	levels = {
		[1] = { 12, 16, 25, 25, 11, },
		[2] = { 15, 17, 26, 25, 14, },
		[3] = { 19, 18, 26, 26, 20, },
		[4] = { 23, 19, 27, 26, 27, },
		[5] = { 27, 20, 27, 27, 38, },
		[6] = { 31, 21, 28, 27, 50, },
		[7] = { 35, 22, 28, 28, 66, },
		[8] = { 38, 23, 29, 28, 81, },
		[9] = { 41, 24, 29, 29, 99, },
		[10] = { 44, 25, 30, 29, 120, },
		[11] = { 47, 26, 30, 30, 146, },
		[12] = { 50, 27, 31, 30, 176, },
		[13] = { 53, 28, 31, 31, 212, },
		[14] = { 56, 29, 32, 31, 255, },
		[15] = { 59, 29, 32, 32, 306, },
		[16] = { 62, 30, 33, 32, 366, },
		[17] = { 64, 30, 33, 33, 414, },
		[18] = { 66, 31, 34, 33, 468, },
		[19] = { 68, 32, 34, 34, 528, },
		[20] = { 70, 33, 35, 34, 594, },
		[21] = { 72, 34, 35, 35, 644, },
		[22] = { 74, 34, 36, 35, 693, },
		[23] = { 76, 35, 36, 36, 743, },
		[24] = { 78, 36, 37, 36, 792, },
		[25] = { 80, 37, 37, 37, 842, },
		[26] = { 82, 38, 38, 37, 891, },
		[27] = { 84, 38, 38, 38, 941, },
		[28] = { 86, 39, 39, 38, 990, },
		[29] = { 88, 40, 39, 39, 1040, },
		[30] = { 90, 41, 40, 39, 1089, },
	},
}
skills["Clarity"] = {
	name = "Clarity",
	gemTags = {
		aura = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		aura = true,
		area = true,
	},
	skillTypes = { [2] = true, [11] = true, [5] = true, [15] = true, [27] = true, [18] = true, [44] = true, },
	baseMods = {
		skill("castTime", 1.2), 
		skill("cooldown", 1.2), 
		--"base_deal_no_damage" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 1), --"base_skill_area_of_effect_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = mod("ManaRegen", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Aura" }), --"base_mana_regeneration_rate_per_minute"
		[4] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
	},
	levels = {
		[1] = { 10, 34, 2.9333333333333, 0, },
		[2] = { 13, 48, 4.0333333333333, 3, },
		[3] = { 17, 61, 5.0833333333333, 6, },
		[4] = { 21, 76, 6.0833333333333, 9, },
		[5] = { 25, 89, 7.0166666666667, 12, },
		[6] = { 29, 102, 7.9166666666667, 15, },
		[7] = { 33, 115, 8.75, 18, },
		[8] = { 36, 129, 9.55, 21, },
		[9] = { 39, 141, 10.316666666667, 23, },
		[10] = { 42, 154, 11.05, 25, },
		[11] = { 45, 166, 11.733333333333, 27, },
		[12] = { 48, 178, 12.4, 29, },
		[13] = { 51, 190, 13.033333333333, 31, },
		[14] = { 54, 203, 13.65, 33, },
		[15] = { 57, 214, 14.25, 35, },
		[16] = { 60, 227, 14.85, 36, },
		[17] = { 63, 239, 15.433333333333, 37, },
		[18] = { 66, 251, 16.016666666667, 38, },
		[19] = { 68, 265, 16.6, 39, },
		[20] = { 70, 279, 17.183333333333, 40, },
		[21] = { 72, 293, 17.766666666667, 41, },
		[22] = { 74, 303, 18.366666666667, 42, },
		[23] = { 76, 313, 18.966666666667, 43, },
		[24] = { 78, 323, 19.566666666667, 44, },
		[25] = { 80, 333, 20.166666666667, 45, },
		[26] = { 82, 343, 20.766666666667, 46, },
		[27] = { 84, 353, 21.366666666667, 47, },
		[28] = { 86, 363, 21.983333333333, 48, },
		[29] = { 88, 373, 22.6, 49, },
		[30] = { 90, 383, 23.216666666667, 50, },
	},
}
skills["VaalClarity"] = {
	name = "Vaal Clarity",
	gemTags = {
		aura = true,
		intelligence = true,
		active_skill = true,
		vaal = true,
		spell = true,
		area = true,
		duration = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		aura = true,
		area = true,
		duration = true,
		vaal = true,
	},
	skillTypes = { [2] = true, [5] = true, [11] = true, [18] = true, [27] = true, [12] = true, [43] = true, [44] = true, },
	baseMods = {
		skill("castTime", 0.6), 
		mod("ManaCost", "MORE", -100, 0, 0, { type = "GlobalEffect", effectType = "Aura" }), --"no_mana_cost" = ?
		--"base_deal_no_damage" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 1), --"base_skill_area_of_effect_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
		[3] = skill("duration", nil), --"base_skill_effect_duration"
	},
	levels = {
		[1] = { 10, 0, 8, },
		[2] = { 13, 3, 8.1, },
		[3] = { 17, 6, 8.2, },
		[4] = { 21, 9, 8.3, },
		[5] = { 25, 12, 8.4, },
		[6] = { 29, 15, 8.5, },
		[7] = { 33, 18, 8.6, },
		[8] = { 36, 21, 8.7, },
		[9] = { 39, 23, 8.8, },
		[10] = { 42, 25, 8.9, },
		[11] = { 45, 27, 9, },
		[12] = { 48, 29, 9.1, },
		[13] = { 51, 31, 9.2, },
		[14] = { 54, 33, 9.3, },
		[15] = { 57, 35, 9.4, },
		[16] = { 60, 36, 9.5, },
		[17] = { 63, 37, 9.6, },
		[18] = { 66, 38, 9.7, },
		[19] = { 68, 39, 9.8, },
		[20] = { 70, 40, 9.9, },
		[21] = { 72, 41, 10, },
		[22] = { 74, 42, 10.1, },
		[23] = { 76, 43, 10.2, },
		[24] = { 78, 44, 10.3, },
		[25] = { 80, 45, 10.4, },
		[26] = { 82, 46, 10.5, },
		[27] = { 84, 47, 10.6, },
		[28] = { 86, 48, 10.7, },
		[29] = { 88, 49, 10.8, },
		[30] = { 90, 50, 10.9, },
	},
}
skills["ColdSnap"] = {
	name = "Cold Snap",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		cold = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		cold = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [34] = true, [60] = true, },
	baseMods = {
		skill("castTime", 0.85), 
		skill("damageEffectiveness", 1.2), 
		skill("critChance", 5), 
		skill("cooldown", 4), 
		mod("EnemyFreezeChance", "BASE", 30), --"base_chance_to_freeze_%" = 30
		mod("EnemyFreezeDuration", "INC", 30), --"freeze_duration_+%" = 30
		mod("EnemyChillDuration", "INC", 110), --"chill_duration_+%" = 110
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
		--"is_area_damage" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("ColdMin", nil), --"spell_minimum_base_cold_damage"
		[4] = skill("ColdMax", nil), --"spell_maximum_base_cold_damage"
		--[5] = "active_skill_base_radius_+"
	},
	levels = {
		[1] = { 4, 11, 9, 13, 0, },
		[2] = { 6, 12, 11, 16, 0, },
		[3] = { 9, 13, 14, 21, 0, },
		[4] = { 12, 14, 18, 27, 1, },
		[5] = { 16, 15, 25, 37, 1, },
		[6] = { 20, 16, 32, 49, 1, },
		[7] = { 24, 17, 42, 63, 1, },
		[8] = { 28, 18, 54, 81, 2, },
		[9] = { 32, 19, 68, 102, 2, },
		[10] = { 36, 20, 85, 128, 2, },
		[11] = { 40, 21, 106, 159, 2, },
		[12] = { 44, 22, 131, 196, 3, },
		[13] = { 48, 23, 160, 240, 3, },
		[14] = { 52, 24, 196, 294, 3, },
		[15] = { 55, 25, 227, 341, 3, },
		[16] = { 58, 26, 263, 394, 4, },
		[17] = { 61, 26, 303, 455, 4, },
		[18] = { 64, 27, 350, 524, 4, },
		[19] = { 67, 27, 402, 603, 4, },
		[20] = { 70, 28, 462, 693, 5, },
		[21] = { 72, 28, 506, 759, 5, },
		[22] = { 74, 29, 554, 832, 5, },
		[23] = { 76, 29, 607, 910, 5, },
		[24] = { 78, 30, 664, 996, 6, },
		[25] = { 80, 30, 726, 1089, 6, },
		[26] = { 82, 30, 794, 1191, 6, },
		[27] = { 84, 30, 867, 1301, 6, },
		[28] = { 86, 31, 947, 1420, 7, },
		[29] = { 88, 31, 1033, 1550, 7, },
		[30] = { 90, 32, 1127, 1691, 7, },
	},
}
skills["VaalColdSnap"] = {
	name = "Vaal Cold Snap",
	gemTags = {
		intelligence = true,
		active_skill = true,
		vaal = true,
		spell = true,
		area = true,
		duration = true,
		cold = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		duration = true,
		cold = true,
		vaal = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [12] = true, [43] = true, [34] = true, },
	baseMods = {
		skill("castTime", 0.85), 
		skill("damageEffectiveness", 1.4), 
		skill("critChance", 5), 
		skill("duration", 10), --"base_skill_effect_duration" = 10000
		mod("EnemyFreezeChance", "BASE", 100), --"base_chance_to_freeze_%" = 100
		--"is_area_damage" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("ColdMin", nil), --"spell_minimum_base_cold_damage"
		[3] = skill("ColdMax", nil), --"spell_maximum_base_cold_damage"
	},
	levels = {
		[1] = { 4, 11, 17, },
		[2] = { 6, 14, 21, },
		[3] = { 9, 18, 28, },
		[4] = { 12, 24, 35, },
		[5] = { 16, 32, 48, },
		[6] = { 20, 42, 63, },
		[7] = { 24, 55, 82, },
		[8] = { 28, 70, 105, },
		[9] = { 32, 88, 132, },
		[10] = { 36, 111, 166, },
		[11] = { 40, 137, 206, },
		[12] = { 44, 170, 255, },
		[13] = { 48, 208, 313, },
		[14] = { 52, 255, 382, },
		[15] = { 55, 295, 443, },
		[16] = { 58, 342, 512, },
		[17] = { 61, 394, 591, },
		[18] = { 64, 454, 682, },
		[19] = { 67, 523, 784, },
		[20] = { 70, 600, 901, },
		[21] = { 72, 658, 987, },
		[22] = { 74, 721, 1081, },
		[23] = { 76, 789, 1184, },
		[24] = { 78, 863, 1295, },
		[25] = { 80, 944, 1416, },
		[26] = { 82, 1032, 1548, },
		[27] = { 84, 1127, 1691, },
		[28] = { 86, 1231, 1846, },
		[29] = { 88, 1343, 2015, },
		[30] = { 90, 1466, 2199, },
	},
}
skills["Conductivity"] = {
	name = "Conductivity",
	gemTags = {
		curse = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
		lightning = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, [45] = true, [35] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		--"base_deal_no_damage" = ?
		skill("debuff", true), 
	},
	qualityMods = {
		mod("SelfShockDuration", "INC", 1, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_self_shock_duration_-%" = -1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("duration", nil), --"base_skill_effect_duration"
		[4] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
		[5] = mod("LightningResist", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_lightning_damage_resistance_%"
		[6] = mod("SelfShockChance", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"chance_to_be_shocked_%"
	},
	levels = {
		[1] = { 24, 24, 9, 0, -25, 10, },
		[2] = { 27, 26, 9.1, 4, -26, 10, },
		[3] = { 30, 27, 9.2, 8, -27, 10, },
		[4] = { 33, 29, 9.3, 12, -28, 10, },
		[5] = { 36, 30, 9.4, 16, -29, 10, },
		[6] = { 39, 32, 9.5, 20, -30, 11, },
		[7] = { 42, 34, 9.6, 24, -31, 11, },
		[8] = { 45, 35, 9.7, 28, -32, 11, },
		[9] = { 48, 37, 9.8, 32, -33, 11, },
		[10] = { 50, 38, 9.9, 36, -34, 11, },
		[11] = { 52, 39, 10, 40, -35, 12, },
		[12] = { 54, 40, 10.1, 44, -36, 12, },
		[13] = { 56, 42, 10.2, 48, -37, 12, },
		[14] = { 58, 43, 10.3, 52, -38, 12, },
		[15] = { 60, 44, 10.4, 56, -39, 12, },
		[16] = { 62, 45, 10.5, 60, -40, 13, },
		[17] = { 64, 46, 10.6, 64, -41, 13, },
		[18] = { 66, 47, 10.7, 68, -42, 13, },
		[19] = { 68, 48, 10.8, 72, -43, 13, },
		[20] = { 70, 50, 10.9, 76, -44, 14, },
		[21] = { 72, 51, 11, 80, -45, 14, },
		[22] = { 74, 52, 11.1, 84, -46, 14, },
		[23] = { 76, 53, 11.2, 88, -47, 15, },
		[24] = { 78, 54, 11.3, 92, -48, 15, },
		[25] = { 80, 56, 11.4, 96, -49, 15, },
		[26] = { 82, 57, 11.5, 100, -50, 16, },
		[27] = { 84, 58, 11.6, 104, -51, 16, },
		[28] = { 86, 59, 11.7, 108, -52, 16, },
		[29] = { 88, 60, 11.8, 112, -53, 17, },
		[30] = { 90, 61, 11.9, 116, -54, 17, },
	},
}
skills["Contagion"] = {
	name = "Contagion",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
		chaos = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		duration = true,
		chaos = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [40] = true, [50] = true, [26] = true, [36] = true, [19] = true, [52] = true, [59] = true, },
	baseMods = {
		skill("castTime", 0.85), 
		skill("duration", 5), --"base_skill_effect_duration" = 5000
		--"is_area_damage" = ?
		skill("dotIsSpell", true), --"spell_damage_modifiers_apply_to_damage_over_time" = ?
		skill("debuff", true), 
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("ChaosDot", nil), --"base_chaos_damage_to_deal_per_minute"
	},
	levels = {
		[1] = { 4, 11, 3.1666666666667, },
		[2] = { 6, 12, 3.9, },
		[3] = { 9, 13, 5.15, },
		[4] = { 12, 14, 6.65, },
		[5] = { 16, 15, 9.0666666666667, },
		[6] = { 20, 16, 12.066666666667, },
		[7] = { 24, 17, 15.766666666667, },
		[8] = { 28, 18, 20.3, },
		[9] = { 32, 19, 25.866666666667, },
		[10] = { 36, 20, 32.65, },
		[11] = { 40, 21, 40.9, },
		[12] = { 44, 22, 50.9, },
		[13] = { 48, 23, 63, },
		[14] = { 52, 24, 77.583333333333, },
		[15] = { 55, 25, 90.466666666667, },
		[16] = { 58, 26, 105.25, },
		[17] = { 61, 26, 122.2, },
		[18] = { 64, 27, 141.65, },
		[19] = { 67, 27, 163.9, },
		[20] = { 70, 28, 189.36666666667, },
		[21] = { 72, 28, 208.35, },
		[22] = { 74, 29, 229.08333333333, },
		[23] = { 76, 29, 251.75, },
		[24] = { 78, 30, 276.5, },
		[25] = { 80, 30, 303.51666666667, },
		[26] = { 82, 30, 333.03333333333, },
		[27] = { 84, 30, 365.21666666667, },
		[28] = { 86, 31, 400.35, },
		[29] = { 88, 31, 438.66666666667, },
		[30] = { 90, 32, 480.45, },
	},
}
skills["ConversionTrap"] = {
	name = "Conversion Trap",
	gemTags = {
		trap = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		duration = true,
	},
	unsupported = true,
	color = 3,
	baseFlags = {
	},
	skillTypes = { [2] = true, [12] = true, [19] = true, [37] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 8), 
		--"is_trap" = 1
		--"base_trap_duration" = 16000
		--"base_skill_is_trapped" = ?
		--"base_deal_no_damage" = ?
	},
	qualityMods = {
		mod("Duration", "INC", 1), --"skill_effect_duration_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("duration", nil), --"base_skill_effect_duration"
	},
	levels = {
		[1] = { 4, 16, 5.3, },
		[2] = { 6, 17, 5.5, },
		[3] = { 9, 18, 5.8, },
		[4] = { 12, 19, 6, },
		[5] = { 16, 20, 6.3, },
		[6] = { 20, 21, 6.5, },
		[7] = { 24, 22, 6.8, },
		[8] = { 28, 23, 7, },
		[9] = { 32, 25, 7.3, },
		[10] = { 36, 27, 7.5, },
		[11] = { 40, 29, 7.8, },
		[12] = { 44, 30, 8, },
		[13] = { 48, 31, 8.3, },
		[14] = { 52, 32, 8.5, },
		[15] = { 55, 33, 8.8, },
		[16] = { 58, 34, 9, },
		[17] = { 61, 34, 9.3, },
		[18] = { 64, 35, 9.5, },
		[19] = { 67, 36, 9.8, },
		[20] = { 70, 37, 10, },
		[21] = { 72, 38, 10.3, },
		[22] = { 74, 38, 10.5, },
		[23] = { 76, 39, 10.8, },
		[24] = { 78, 40, 11, },
		[25] = { 80, 41, 11.3, },
		[26] = { 82, 42, 11.5, },
		[27] = { 84, 42, 11.8, },
		[28] = { 86, 43, 12, },
		[29] = { 88, 44, 12.3, },
		[30] = { 90, 45, 12.5, },
	},
}
skills["Convocation"] = {
	name = "Convocation",
	gemTags = {
		minion = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		duration = true,
	},
	unsupported = true,
	color = 3,
	baseFlags = {
	},
	skillTypes = { [2] = true, [5] = true, [12] = true, [36] = true, [9] = true, [49] = true, },
	baseMods = {
		skill("castTime", 0.8), 
		skill("cooldown", 8), 
		skill("duration", 2), --"base_skill_effect_duration" = 2000
		--"base_deal_no_damage" = ?
	},
	qualityMods = {
		mod("Duration", "INC", 1), --"skill_effect_duration_+%" = 1
		mod("Speed", "INC", 0.5, ModFlag.Cast), --"base_cast_speed_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = mod("LifeRegen", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"base_life_regeneration_rate_per_minute"
	},
	levels = {
		[1] = { 24, 9, 19.25, },
		[2] = { 27, 9, 22.983333333333, },
		[3] = { 30, 9, 27.383333333333, },
		[4] = { 33, 9, 32.2, },
		[5] = { 36, 9, 37.6, },
		[6] = { 39, 9, 43.583333333333, },
		[7] = { 42, 10, 50.4, },
		[8] = { 45, 10, 57.816666666667, },
		[9] = { 48, 10, 66.033333333333, },
		[10] = { 50, 10, 70.85, },
		[11] = { 52, 10, 75.816666666667, },
		[12] = { 54, 10, 80.833333333333, },
		[13] = { 56, 11, 85.85, },
		[14] = { 58, 11, 90.883333333333, },
		[15] = { 60, 11, 95.833333333333, },
		[16] = { 62, 11, 100.55, },
		[17] = { 64, 12, 105.1, },
		[18] = { 66, 12, 109.26666666667, },
		[19] = { 68, 12, 112.95, },
		[20] = { 70, 13, 115.98333333333, },
		[21] = { 72, 13, 128.71666666667, },
		[22] = { 74, 13, 142.83333333333, },
		[23] = { 76, 14, 158.31666666667, },
		[24] = { 78, 14, 175.41666666667, },
		[25] = { 80, 14, 194.28333333333, },
		[26] = { 82, 14, 215.01666666667, },
		[27] = { 84, 14, 237.85, },
		[28] = { 86, 14, 262.93333333333, },
		[29] = { 88, 15, 290.61666666667, },
		[30] = { 90, 15, 321, },
	},
}
skills["Discharge"] = {
	name = "Discharge",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		fire = true,
		cold = true,
		lightning = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		lightning = true,
		cold = true,
		fire = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [18] = true, [26] = true, [36] = true, [45] = true, [33] = true, [34] = true, [35] = true, [60] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("damageEffectiveness", 1.5), 
		skill("critChance", 7), 
		--"skill_override_pvp_scaling_time_ms" = 1400
		mod("Damage", "MORE", -35, ModFlag.Spell, 0, { type = "Condition", var = "SkillIsTriggered" }), --"triggered_discharge_damage_+%_final" = -35
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
		--"is_area_damage" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("LightningMin", nil, { type = "Multiplier", var = "PowerCharge" }), --"spell_minimum_base_lightning_damage_per_power_charge"
		[4] = skill("LightningMax", nil, { type = "Multiplier", var = "PowerCharge" }), --"spell_maximum_base_lightning_damage_per_power_charge"
		[5] = skill("FireMin", nil, { type = "Multiplier", var = "EnduranceCharge" }), --"spell_minimum_base_fire_damage_per_endurance_charge"
		[6] = skill("FireMax", nil, { type = "Multiplier", var = "EnduranceCharge" }), --"spell_maximum_base_fire_damage_per_endurance_charge"
		[7] = skill("ColdMin", nil, { type = "Multiplier", var = "FrenzyCharge" }), --"spell_minimum_base_cold_damage_per_frenzy_charge"
		[8] = skill("ColdMax", nil, { type = "Multiplier", var = "FrenzyCharge" }), --"spell_maximum_base_cold_damage_per_frenzy_charge"
	},
	levels = {
		[1] = { 28, 24, 4, 77, 29, 43, 24, 36, },
		[2] = { 31, 26, 5, 92, 34, 51, 28, 42, },
		[3] = { 34, 27, 6, 108, 40, 60, 33, 49, },
		[4] = { 37, 29, 7, 126, 47, 71, 39, 58, },
		[5] = { 40, 31, 8, 147, 55, 83, 45, 68, },
		[6] = { 42, 32, 9, 163, 61, 91, 50, 75, },
		[7] = { 44, 33, 9, 180, 67, 101, 55, 82, },
		[8] = { 46, 34, 10, 198, 74, 111, 61, 91, },
		[9] = { 48, 35, 11, 218, 82, 122, 67, 100, },
		[10] = { 50, 36, 13, 240, 90, 135, 73, 110, },
		[11] = { 52, 37, 14, 263, 99, 148, 81, 121, },
		[12] = { 54, 38, 15, 289, 108, 162, 88, 133, },
		[13] = { 56, 39, 17, 317, 119, 178, 97, 146, },
		[14] = { 58, 40, 18, 347, 130, 195, 106, 159, },
		[15] = { 60, 41, 20, 380, 142, 213, 116, 174, },
		[16] = { 62, 42, 22, 415, 155, 233, 127, 191, },
		[17] = { 64, 44, 24, 454, 170, 255, 139, 208, },
		[18] = { 66, 45, 26, 495, 185, 278, 152, 227, },
		[19] = { 68, 46, 28, 540, 202, 303, 165, 248, },
		[20] = { 70, 47, 31, 589, 220, 331, 180, 271, },
		[21] = { 72, 48, 34, 642, 240, 360, 197, 295, },
		[22] = { 74, 49, 37, 699, 262, 392, 214, 321, },
		[23] = { 76, 50, 40, 761, 285, 427, 233, 349, },
		[24] = { 78, 51, 44, 828, 310, 465, 253, 380, },
		[25] = { 80, 52, 47, 900, 337, 505, 276, 413, },
		[26] = { 82, 53, 51, 978, 366, 549, 299, 449, },
		[27] = { 84, 54, 56, 1062, 397, 596, 325, 488, },
		[28] = { 86, 55, 61, 1153, 431, 647, 353, 529, },
		[29] = { 88, 57, 66, 1251, 468, 702, 383, 575, },
		[30] = { 90, 58, 71, 1357, 508, 762, 416, 623, },
	},
}
skills["Discipline"] = {
	name = "Discipline",
	gemTags = {
		aura = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		aura = true,
		area = true,
	},
	skillTypes = { [2] = true, [11] = true, [5] = true, [15] = true, [27] = true, [16] = true, [18] = true, [44] = true, },
	baseMods = {
		skill("castTime", 1.2), 
		skill("manaCost", 35), 
		skill("cooldown", 1.2), 
		--"base_deal_no_damage" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 1), --"base_skill_area_of_effect_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("EnergyShield", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Aura" }), --"base_maximum_energy_shield"
		[3] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
	},
	levels = {
		[1] = { 24, 60, 0, },
		[2] = { 27, 70, 3, },
		[3] = { 30, 78, 6, },
		[4] = { 33, 89, 9, },
		[5] = { 36, 100, 12, },
		[6] = { 39, 111, 15, },
		[7] = { 42, 125, 18, },
		[8] = { 45, 139, 21, },
		[9] = { 48, 154, 23, },
		[10] = { 50, 165, 25, },
		[11] = { 52, 173, 27, },
		[12] = { 54, 187, 29, },
		[13] = { 56, 201, 31, },
		[14] = { 58, 213, 33, },
		[15] = { 60, 227, 35, },
		[16] = { 62, 239, 36, },
		[17] = { 64, 253, 37, },
		[18] = { 66, 269, 38, },
		[19] = { 68, 281, 39, },
		[20] = { 70, 303, 40, },
		[21] = { 72, 315, 41, },
		[22] = { 74, 330, 42, },
		[23] = { 76, 340, 43, },
		[24] = { 78, 357, 44, },
		[25] = { 80, 374, 45, },
		[26] = { 82, 384, 46, },
		[27] = { 84, 406, 47, },
		[28] = { 86, 425, 48, },
		[29] = { 88, 450, 49, },
		[30] = { 90, 455, 50, },
	},
}
skills["VaalDiscipline"] = {
	name = "Vaal Discipline",
	gemTags = {
		aura = true,
		intelligence = true,
		active_skill = true,
		vaal = true,
		spell = true,
		area = true,
		duration = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		aura = true,
		area = true,
		duration = true,
		vaal = true,
	},
	skillTypes = { [2] = true, [5] = true, [11] = true, [18] = true, [27] = true, [12] = true, [43] = true, [44] = true, },
	baseMods = {
		skill("castTime", 0.6), 
		mod("EnergyShield", "BASE", 0, 0, 0, { type = "GlobalEffect", effectType = "Aura" }), --"base_maximum_energy_shield" = 0
		skill("duration", 3), --"base_skill_effect_duration" = 3000
		--"energy_shield_recharge_not_delayed_by_damage" = ?
		--"base_deal_no_damage" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 1), --"base_skill_area_of_effect_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
	},
	levels = {
		[1] = { 24, 0, },
		[2] = { 27, 3, },
		[3] = { 30, 6, },
		[4] = { 33, 9, },
		[5] = { 36, 12, },
		[6] = { 39, 15, },
		[7] = { 42, 18, },
		[8] = { 45, 21, },
		[9] = { 48, 23, },
		[10] = { 50, 25, },
		[11] = { 52, 27, },
		[12] = { 54, 29, },
		[13] = { 56, 31, },
		[14] = { 58, 33, },
		[15] = { 60, 35, },
		[16] = { 62, 36, },
		[17] = { 64, 37, },
		[18] = { 66, 38, },
		[19] = { 68, 39, },
		[20] = { 70, 40, },
		[21] = { 72, 41, },
		[22] = { 74, 42, },
		[23] = { 76, 43, },
		[24] = { 78, 44, },
		[25] = { 80, 45, },
		[26] = { 82, 46, },
		[27] = { 84, 47, },
		[28] = { 86, 48, },
		[29] = { 88, 49, },
		[30] = { 90, 50, },
	},
}
skills["ElementalWeakness"] = {
	name = "Elemental Weakness",
	gemTags = {
		curse = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		--"base_deal_no_damage" = ?
		skill("debuff", true), 
	},
	qualityMods = {
		mod("ElementalResist", "BASE", -0.25, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_resist_all_elements_%" = -0.25
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("duration", nil), --"base_skill_effect_duration"
		[4] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
		[5] = mod("ElementalResist", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_resist_all_elements_%"
	},
	levels = {
		[1] = { 24, 24, 9, 0, -20, },
		[2] = { 27, 26, 9.1, 4, -21, },
		[3] = { 30, 27, 9.2, 8, -22, },
		[4] = { 33, 29, 9.3, 12, -23, },
		[5] = { 36, 30, 9.4, 16, -24, },
		[6] = { 39, 32, 9.5, 20, -25, },
		[7] = { 42, 34, 9.6, 24, -26, },
		[8] = { 45, 35, 9.7, 28, -27, },
		[9] = { 48, 37, 9.8, 32, -28, },
		[10] = { 50, 38, 9.9, 36, -29, },
		[11] = { 52, 39, 10, 40, -30, },
		[12] = { 54, 40, 10.1, 44, -31, },
		[13] = { 56, 42, 10.2, 48, -32, },
		[14] = { 58, 43, 10.3, 52, -33, },
		[15] = { 60, 44, 10.4, 56, -34, },
		[16] = { 62, 45, 10.5, 60, -35, },
		[17] = { 64, 46, 10.6, 64, -36, },
		[18] = { 66, 47, 10.7, 68, -37, },
		[19] = { 68, 48, 10.8, 72, -38, },
		[20] = { 70, 50, 10.9, 76, -39, },
		[21] = { 72, 51, 11, 80, -40, },
		[22] = { 74, 52, 11.1, 84, -41, },
		[23] = { 76, 53, 11.2, 88, -42, },
		[24] = { 78, 54, 11.3, 92, -43, },
		[25] = { 80, 56, 11.4, 96, -44, },
		[26] = { 82, 57, 11.5, 100, -45, },
		[27] = { 84, 58, 11.6, 104, -46, },
		[28] = { 86, 59, 11.7, 108, -47, },
		[29] = { 88, 60, 11.8, 112, -48, },
		[30] = { 90, 61, 11.9, 116, -49, },
	},
}
skills["Enfeeble"] = {
	name = "Enfeeble",
	gemTags = {
		curse = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		mod("CritChance", "INC", -25, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"critical_strike_chance_+%" = -25
		--"base_deal_no_damage" = ?
		skill("debuff", true), 
	},
	qualityMods = {
		mod("Accuracy", "INC", -0.5, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"accuracy_rating_+%" = -0.5
		mod("CritChance", "INC", -0.5, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"critical_strike_chance_+%" = -0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("duration", nil), --"base_skill_effect_duration"
		[4] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
		[5] = mod("Accuracy", "INC", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"accuracy_rating_+%"
		[6] = mod("Damage", "MORE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"enfeeble_damage_+%_final"
		[7] = mod("CritMultiplier", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_critical_strike_multiplier_+"
	},
	levels = {
		[1] = { 24, 24, 9, 0, -18, -21, -21, },
		[2] = { 27, 26, 9.1, 4, -19, -21, -21, },
		[3] = { 30, 27, 9.2, 8, -20, -22, -22, },
		[4] = { 33, 29, 9.3, 12, -21, -22, -22, },
		[5] = { 36, 30, 9.4, 16, -22, -23, -23, },
		[6] = { 39, 32, 9.5, 20, -23, -23, -23, },
		[7] = { 42, 34, 9.6, 24, -24, -24, -24, },
		[8] = { 45, 35, 9.7, 28, -25, -24, -24, },
		[9] = { 48, 37, 9.8, 32, -26, -25, -25, },
		[10] = { 50, 38, 9.9, 36, -27, -25, -25, },
		[11] = { 52, 39, 10, 40, -28, -26, -26, },
		[12] = { 54, 40, 10.1, 44, -29, -26, -26, },
		[13] = { 56, 42, 10.2, 48, -30, -27, -27, },
		[14] = { 58, 43, 10.3, 52, -31, -27, -27, },
		[15] = { 60, 44, 10.4, 56, -32, -28, -28, },
		[16] = { 62, 45, 10.5, 60, -33, -28, -28, },
		[17] = { 64, 46, 10.6, 64, -34, -29, -29, },
		[18] = { 66, 47, 10.7, 68, -35, -29, -29, },
		[19] = { 68, 48, 10.8, 72, -36, -30, -30, },
		[20] = { 70, 50, 10.9, 76, -37, -30, -30, },
		[21] = { 72, 51, 11, 80, -38, -31, -31, },
		[22] = { 74, 52, 11.1, 84, -39, -31, -31, },
		[23] = { 76, 53, 11.2, 88, -40, -32, -32, },
		[24] = { 78, 54, 11.3, 92, -41, -32, -32, },
		[25] = { 80, 56, 11.4, 96, -42, -33, -33, },
		[26] = { 82, 57, 11.5, 100, -43, -33, -33, },
		[27] = { 84, 58, 11.6, 104, -44, -34, -34, },
		[28] = { 86, 59, 11.7, 108, -45, -34, -34, },
		[29] = { 88, 60, 11.8, 112, -46, -35, -35, },
		[30] = { 90, 61, 11.9, 116, -47, -35, -35, },
	},
}
skills["EssenceDrain"] = {
	name = "Essence Drain",
	gemTags = {
		projectile = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		duration = true,
		chaos = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		duration = true,
		chaos = true,
	},
	skillTypes = { [2] = true, [3] = true, [12] = true, [18] = true, [26] = true, [40] = true, [50] = true, [10] = true, [36] = true, },
	baseMods = {
		skill("castTime", 0.75), 
		skill("damageEffectiveness", 0.6), 
		skill("critChance", 5), 
		--"siphon_life_leech_from_damage_permyriad" = 50
		skill("duration", 3.8), --"base_skill_effect_duration" = 3800
		skill("dotIsSpell", true), --"spell_damage_modifiers_apply_to_damage_over_time" = ?
		--"base_is_projectile" = ?
		skill("debuff", true), 
		skill("showAverage", true), 
	},
	qualityMods = {
		mod("ChaosDamage", "INC", 1), --"chaos_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("ChaosDot", nil), --"base_chaos_damage_to_deal_per_minute"
		[4] = skill("ChaosMin", nil), --"spell_minimum_base_chaos_damage"
		[5] = skill("ChaosMax", nil), --"spell_maximum_base_chaos_damage"
	},
	levels = {
		[1] = { 12, 9, 21.483333333333, 6, 9, },
		[2] = { 15, 10, 27.566666666667, 8, 12, },
		[3] = { 19, 11, 37.6, 11, 16, },
		[4] = { 23, 12, 50.3, 14, 22, },
		[5] = { 27, 13, 66.266666666667, 19, 29, },
		[6] = { 31, 14, 86.283333333333, 25, 37, },
		[7] = { 35, 16, 111.26666666667, 32, 48, },
		[8] = { 38, 16, 133.93333333333, 39, 58, },
		[9] = { 41, 17, 160.58333333333, 46, 69, },
		[10] = { 44, 18, 191.85, 55, 83, },
		[11] = { 47, 19, 228.5, 66, 99, },
		[12] = { 50, 20, 271.4, 78, 117, },
		[13] = { 53, 21, 321.53333333333, 93, 139, },
		[14] = { 56, 22, 380.05, 109, 164, },
		[15] = { 59, 23, 448.3, 129, 194, },
		[16] = { 62, 24, 527.78333333333, 152, 228, },
		[17] = { 64, 24, 587.88333333333, 169, 254, },
		[18] = { 66, 25, 654.35, 188, 283, },
		[19] = { 68, 26, 727.81666666667, 210, 314, },
		[20] = { 70, 27, 809, 233, 349, },
		[21] = { 72, 28, 898.68333333333, 259, 388, },
		[22] = { 74, 29, 997.7, 287, 431, },
		[23] = { 76, 29, 1107, 319, 478, },
		[24] = { 78, 30, 1227.6, 354, 530, },
		[25] = { 80, 30, 1360.6333333333, 392, 588, },
		[26] = { 82, 31, 1507.3333333333, 434, 651, },
		[27] = { 84, 32, 1669.0666666667, 481, 721, },
		[28] = { 86, 33, 1847.3, 532, 798, },
		[29] = { 88, 33, 2043.6833333333, 589, 883, },
		[30] = { 90, 34, 2260, 651, 976, },
	},
}
skills["FireNovaMine"] = {
	name = "Fire Nova Mine",
	gemTags = {
		area = true,
		mine = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		fire = true,
		duration = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		mine = true,
		area = true,
		duration = true,
		fire = true,
	},
	skillTypes = { [2] = true, [10] = true, [36] = true, [11] = true, [33] = true, [26] = true, [41] = true, [12] = true, },
	baseMods = {
		skill("castTime", 0.4), 
		skill("damageEffectiveness", 0.3), 
		skill("critChance", 5), 
		--"base_mine_duration" = 16000
		skill("repeatCount", 3), --"base_spell_repeat_count" = 3
		--"base_skill_is_mined" = ?
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
		--"is_remote_mine" = ?
		--"is_area_damage" = ?
	},
	qualityMods = {
		mod("FireDamage", "INC", 1), --"fire_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[4] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
		--[5] = "fire_nova_damage_+%_per_repeat_final"
	},
	levels = {
		[1] = { 12, 12, 6, 9, 20, },
		[2] = { 15, 13, 7, 11, 20, },
		[3] = { 19, 15, 10, 14, 21, },
		[4] = { 23, 17, 12, 18, 21, },
		[5] = { 27, 18, 16, 23, 22, },
		[6] = { 31, 20, 20, 29, 22, },
		[7] = { 35, 22, 24, 36, 23, },
		[8] = { 38, 23, 28, 43, 23, },
		[9] = { 41, 24, 33, 50, 24, },
		[10] = { 44, 25, 39, 58, 24, },
		[11] = { 47, 27, 45, 67, 25, },
		[12] = { 50, 28, 52, 77, 25, },
		[13] = { 53, 29, 60, 89, 26, },
		[14] = { 56, 31, 68, 103, 26, },
		[15] = { 59, 32, 79, 118, 27, },
		[16] = { 62, 33, 90, 135, 27, },
		[17] = { 64, 34, 98, 148, 28, },
		[18] = { 66, 35, 107, 161, 28, },
		[19] = { 68, 36, 117, 176, 29, },
		[20] = { 70, 36, 128, 192, 29, },
		[21] = { 72, 37, 140, 210, 30, },
		[22] = { 74, 38, 152, 228, 30, },
		[23] = { 76, 39, 166, 249, 31, },
		[24] = { 78, 40, 181, 271, 31, },
		[25] = { 80, 41, 197, 295, 32, },
		[26] = { 82, 41, 214, 321, 32, },
		[27] = { 84, 42, 232, 349, 33, },
		[28] = { 86, 43, 253, 379, 33, },
		[29] = { 88, 44, 274, 412, 34, },
		[30] = { 90, 45, 298, 447, 34, },
	},
}
skills["Fireball"] = {
	name = "Fireball",
	gemTags = {
		projectile = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		fire = true,
	},
	parts = {
		{
			name = "Projectile",
			area = false,
		},
		{
			name = "Explosion",
			area = true,
		},
	},
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		fire = true,
	},
	skillTypes = { [3] = true, [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [33] = true, },
	baseMods = {
		skill("castTime", 0.85), 
		skill("critChance", 6), 
		--"base_is_projectile" = ?
	},
	qualityMods = {
		mod("EnemyIgniteChance", "BASE", 0.5), --"base_chance_to_ignite_%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[4] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
		[5] = mod("EnemyIgniteChance", "BASE", nil), --"base_chance_to_ignite_%"
		--[6] = "active_skill_base_radius_+"
	},
	levels = {
		[1] = { 1, 6, 7, 10, 20, 0, },
		[2] = { 2, 6, 8, 11, 21, 0, },
		[3] = { 4, 7, 10, 14, 22, 0, },
		[4] = { 7, 8, 13, 20, 23, 0, },
		[5] = { 11, 9, 19, 29, 24, 0, },
		[6] = { 16, 10, 29, 43, 25, 1, },
		[7] = { 20, 11, 39, 58, 26, 1, },
		[8] = { 24, 12, 52, 77, 27, 1, },
		[9] = { 28, 13, 67, 101, 28, 1, },
		[10] = { 32, 15, 87, 131, 29, 1, },
		[11] = { 36, 16, 112, 168, 30, 1, },
		[12] = { 40, 17, 142, 213, 31, 2, },
		[13] = { 44, 18, 180, 270, 32, 2, },
		[14] = { 48, 19, 226, 339, 33, 2, },
		[15] = { 52, 21, 283, 424, 34, 2, },
		[16] = { 56, 22, 352, 528, 35, 2, },
		[17] = { 60, 23, 437, 655, 36, 2, },
		[18] = { 64, 24, 540, 810, 37, 3, },
		[19] = { 67, 25, 632, 948, 38, 3, },
		[20] = { 70, 26, 739, 1109, 39, 3, },
		[21] = { 72, 27, 819, 1229, 40, 3, },
		[22] = { 74, 27, 908, 1362, 41, 3, },
		[23] = { 76, 28, 1005, 1508, 42, 3, },
		[24] = { 78, 28, 1113, 1669, 43, 4, },
		[25] = { 80, 29, 1231, 1847, 44, 4, },
		[26] = { 82, 30, 1361, 2042, 45, 4, },
		[27] = { 84, 30, 1504, 2257, 46, 4, },
		[28] = { 86, 31, 1662, 2493, 47, 4, },
		[29] = { 88, 31, 1835, 2752, 48, 4, },
		[30] = { 90, 32, 2025, 3038, 49, 5, },
	},
}
skills["VaalFireballSpiralNova"] = {
	name = "Vaal Fireball",
	gemTags = {
		projectile = true,
		intelligence = true,
		active_skill = true,
		vaal = true,
		spell = true,
		area = true,
		fire = true,
	},
	parts = {
		{
			name = "Projectile",
			area = false,
		},
		{
			name = "Explosion",
			area = true,
		},
	},
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		fire = true,
		vaal = true,
	},
	skillTypes = { [3] = true, [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [43] = true, [33] = true, },
	baseMods = {
		skill("castTime", 0.85), 
		skill("damageEffectiveness", 1.25), 
		skill("critChance", 6), 
		--"base_number_of_projectiles_in_spiral_nova" = 32
		--"projectile_spiral_nova_time_ms" = 2000
		--"projectile_spiral_nova_angle" = -720
		mod("AreaOfEffect", "INC", 50), --"base_skill_area_of_effect_+%" = 50
		--"base_is_projectile" = ?
	},
	qualityMods = {
		mod("EnemyIgniteChance", "BASE", 1.5), --"base_chance_to_ignite_%" = 1.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[3] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
	},
	levels = {
		[1] = { 1, 8, 11, },
		[2] = { 2, 9, 13, },
		[3] = { 4, 11, 16, },
		[4] = { 7, 14, 22, },
		[5] = { 11, 20, 30, },
		[6] = { 16, 30, 45, },
		[7] = { 20, 39, 59, },
		[8] = { 24, 51, 76, },
		[9] = { 28, 65, 98, },
		[10] = { 32, 82, 124, },
		[11] = { 36, 103, 155, },
		[12] = { 40, 128, 192, },
		[13] = { 44, 158, 238, },
		[14] = { 48, 195, 292, },
		[15] = { 52, 238, 357, },
		[16] = { 56, 289, 434, },
		[17] = { 60, 351, 526, },
		[18] = { 64, 424, 636, },
		[19] = { 67, 488, 732, },
		[20] = { 70, 560, 841, },
		[21] = { 72, 614, 921, },
		[22] = { 74, 673, 1009, },
		[23] = { 76, 736, 1105, },
		[24] = { 78, 806, 1209, },
		[25] = { 80, 881, 1322, },
		[26] = { 82, 963, 1445, },
		[27] = { 84, 1052, 1578, },
		[28] = { 86, 1149, 1723, },
		[29] = { 88, 1254, 1881, },
		[30] = { 90, 1368, 2052, },
	},
}
skills["Firestorm"] = {
	name = "Firestorm",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
		fire = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		duration = true,
		fire = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [33] = true, },
	baseMods = {
		skill("castTime", 0.9), 
		skill("damageEffectiveness", 0.3), 
		skill("critChance", 6), 
		skill("duration", 2), --"base_skill_effect_duration" = 2000
		--"fire_storm_fireball_delay_ms" = 100
		--"is_area_damage" = 1
		--"skill_override_pvp_scaling_time_ms" = 450
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
	},
	qualityMods = {
		mod("Damage", "INC", 1, 0, 0, nil), --"damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[4] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
	},
	levels = {
		[1] = { 12, 9, 4, 10, },
		[2] = { 15, 10, 9, 13, },
		[3] = { 19, 11, 11, 17, },
		[4] = { 23, 12, 15, 22, },
		[5] = { 27, 13, 19, 28, },
		[6] = { 31, 14, 23, 35, },
		[7] = { 35, 15, 29, 44, },
		[8] = { 38, 16, 35, 52, },
		[9] = { 41, 17, 40, 61, },
		[10] = { 44, 18, 47, 71, },
		[11] = { 47, 19, 55, 82, },
		[12] = { 50, 20, 64, 95, },
		[13] = { 53, 21, 74, 110, },
		[14] = { 56, 22, 85, 127, },
		[15] = { 59, 23, 98, 147, },
		[16] = { 62, 24, 112, 169, },
		[17] = { 64, 24, 123, 185, },
		[18] = { 66, 25, 135, 203, },
		[19] = { 68, 25, 148, 222, },
		[20] = { 70, 26, 162, 243, },
		[21] = { 72, 26, 177, 265, },
		[22] = { 74, 27, 193, 290, },
		[23] = { 76, 27, 211, 317, },
		[24] = { 78, 28, 231, 346, },
		[25] = { 80, 29, 251, 377, },
		[26] = { 82, 30, 274, 411, },
		[27] = { 84, 30, 299, 448, },
		[28] = { 86, 30, 326, 488, },
		[29] = { 88, 31, 355, 532, },
		[30] = { 90, 32, 386, 579, },
	},
}
skills["FlameDash"] = {
	name = "Flame Dash",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		movement = true,
		duration = true,
		fire = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		duration = true,
		movement = true,
		fire = true,
	},
	skillTypes = { [2] = true, [38] = true, [10] = true, [40] = true, [12] = true, [18] = true, [36] = true, [33] = true, [17] = true, [19] = true, },
	baseMods = {
		skill("castTime", 0.75), 
		skill("critChance", 6), 
		skill("cooldown", 3), 
		skill("duration", 4), --"base_skill_effect_duration" = 4000
		--"is_area_damage" = ?
		--"firestorm_use_server_effects" = ?
	},
	qualityMods = {
		mod("Speed", "INC", 0.5, ModFlag.Cast), --"base_cast_speed_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[4] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
		[5] = skill("FireDot", nil), --"base_fire_damage_to_deal_per_minute"
	},
	levels = {
		[1] = { 10, 10, 6, 9, 10.9, },
		[2] = { 13, 11, 8, 11, 14.3, },
		[3] = { 17, 12, 11, 16, 20.016666666667, },
		[4] = { 21, 13, 15, 22, 27.366666666667, },
		[5] = { 25, 14, 20, 29, 36.816666666667, },
		[6] = { 29, 15, 26, 39, 48.866666666667, },
		[7] = { 33, 16, 34, 51, 64.15, },
		[8] = { 36, 17, 42, 63, 78.233333333333, },
		[9] = { 39, 18, 51, 76, 94.983333333333, },
		[10] = { 42, 20, 61, 92, 114.9, },
		[11] = { 45, 21, 74, 111, 138.5, },
		[12] = { 48, 22, 89, 133, 166.48333333333, },
		[13] = { 51, 24, 106, 160, 199.55, },
		[14] = { 54, 25, 127, 191, 238.61666666667, },
		[15] = { 57, 26, 152, 228, 284.7, },
		[16] = { 60, 27, 181, 271, 339, },
		[17] = { 63, 28, 215, 322, 402.9, },
		[18] = { 66, 29, 255, 382, 478.05, },
		[19] = { 68, 30, 285, 428, 535.3, },
		[20] = { 70, 30, 319, 479, 599.01666666667, },
		[21] = { 72, 31, 357, 536, 669.9, },
		[22] = { 74, 32, 399, 599, 748.71666666667, },
		[23] = { 76, 33, 446, 669, 836.35, },
		[24] = { 78, 34, 498, 747, 933.7, },
		[25] = { 80, 34, 556, 833, 1041.8666666667, },
		[26] = { 82, 35, 620, 930, 1161.9666666667, },
		[27] = { 84, 36, 691, 1036, 1295.3166666667, },
		[28] = { 86, 37, 770, 1155, 1443.3, },
		[29] = { 88, 38, 857, 1286, 1607.4833333333, },
		[30] = { 90, 38, 954, 1432, 1789.6, },
	},
}
skills["FlameWhip"] = {
	name = "Flame Surge",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		fire = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		fire = true,
	},
	skillTypes = { [2] = true, [10] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [11] = true, [33] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("critChance", 6), 
		mod("Damage", "MORE", 50, bit.bor(ModFlag.Spell, ModFlag.Hit), 0, { type = "EnemyCondition", var = "Burning" }), --"flame_whip_damage_+%_final_vs_burning_enemies" = 50
		flag("CannotIgnite"), --"never_ignite" = ?
		--"is_area_damage" = ?
	},
	qualityMods = {
		mod("Speed", "INC", 0.5, ModFlag.Cast), --"base_cast_speed_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[4] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
	},
	levels = {
		[1] = { 12, 5, 21, 31, },
		[2] = { 15, 6, 26, 39, },
		[3] = { 19, 6, 35, 52, },
		[4] = { 23, 7, 45, 67, },
		[5] = { 27, 7, 57, 86, },
		[6] = { 31, 8, 73, 109, },
		[7] = { 35, 9, 91, 137, },
		[8] = { 38, 9, 107, 161, },
		[9] = { 41, 10, 126, 189, },
		[10] = { 44, 10, 147, 221, },
		[11] = { 47, 11, 171, 257, },
		[12] = { 50, 12, 199, 299, },
		[13] = { 53, 12, 231, 346, },
		[14] = { 56, 13, 267, 401, },
		[15] = { 59, 13, 308, 462, },
		[16] = { 62, 13, 355, 533, },
		[17] = { 64, 13, 390, 585, },
		[18] = { 66, 14, 428, 642, },
		[19] = { 68, 15, 469, 703, },
		[20] = { 70, 15, 514, 771, },
		[21] = { 72, 15, 563, 844, },
		[22] = { 74, 15, 616, 923, },
		[23] = { 76, 16, 673, 1010, },
		[24] = { 78, 16, 736, 1104, },
		[25] = { 80, 17, 804, 1206, },
		[26] = { 82, 18, 878, 1317, },
		[27] = { 84, 18, 958, 1437, },
		[28] = { 86, 18, 1045, 1567, },
		[29] = { 88, 18, 1139, 1709, },
		[30] = { 90, 19, 1242, 1863, },
	},
}
skills["Flameblast"] = {
	name = "Flameblast",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		fire = true,
		channelling = true,
	},
	parts = {
		{
			name = "1 Stage",
		},
		{
			name = "10 Stages",
		},
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		fire = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [18] = true, [33] = true, [58] = true, },
	baseMods = {
		skill("castTime", 0.2), 
		skill("damageEffectiveness", 0.5), 
		skill("critChance", 5), 
		--"charged_blast_spell_damage_+%_final_per_stack" = 110
		--"is_area_damage" = ?
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
		mod("Damage", "MORE", 990, 0, 0, { type = "SkillPart", skillPart = 2 }), 
		skill("dpsMultiplier", 0.1, { type = "SkillPart", skillPart = 2 }), 
		skill("showAverage", false), 
	},
	qualityMods = {
		mod("Damage", "INC", 1, 0, 0, nil), --"damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[4] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
	},
	levels = {
		[1] = { 28, 6, 32, 48, },
		[2] = { 31, 6, 38, 57, },
		[3] = { 34, 6, 45, 67, },
		[4] = { 37, 6, 52, 78, },
		[5] = { 40, 7, 61, 91, },
		[6] = { 42, 7, 67, 101, },
		[7] = { 44, 7, 74, 111, },
		[8] = { 46, 7, 82, 123, },
		[9] = { 48, 7, 90, 135, },
		[10] = { 50, 8, 99, 148, },
		[11] = { 52, 8, 109, 163, },
		[12] = { 54, 8, 119, 179, },
		[13] = { 56, 8, 130, 196, },
		[14] = { 58, 8, 143, 214, },
		[15] = { 60, 9, 156, 234, },
		[16] = { 62, 9, 171, 256, },
		[17] = { 64, 9, 186, 279, },
		[18] = { 66, 9, 203, 305, },
		[19] = { 68, 9, 221, 332, },
		[20] = { 70, 9, 241, 362, },
		[21] = { 72, 10, 263, 394, },
		[22] = { 74, 10, 286, 429, },
		[23] = { 76, 10, 311, 466, },
		[24] = { 78, 11, 338, 507, },
		[25] = { 80, 11, 367, 550, },
		[26] = { 82, 11, 398, 598, },
		[27] = { 84, 12, 432, 649, },
		[28] = { 86, 12, 469, 704, },
		[29] = { 88, 12, 509, 763, },
		[30] = { 90, 13, 551, 827, },
	},
}
skills["VaalFlameblast"] = {
	name = "Vaal Flameblast",
	gemTags = {
		intelligence = true,
		active_skill = true,
		vaal = true,
		spell = true,
		area = true,
		fire = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		fire = true,
		vaal = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [18] = true, [43] = true, [33] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("damageEffectiveness", 0.6), 
		skill("critChance", 5), 
		--"charged_blast_spell_damage_+%_final_per_stack" = 110
		--"is_area_damage" = ?
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
		mod("Damage", "MORE", 1100, ModFlag.Spell), 
	},
	qualityMods = {
		mod("Damage", "INC", 1, 0, 0, nil), --"damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[3] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
	},
	levels = {
		[1] = { 28, 39, 58, },
		[2] = { 31, 46, 68, },
		[3] = { 34, 53, 80, },
		[4] = { 37, 62, 93, },
		[5] = { 40, 71, 107, },
		[6] = { 42, 78, 117, },
		[7] = { 44, 86, 129, },
		[8] = { 46, 94, 141, },
		[9] = { 48, 103, 154, },
		[10] = { 50, 113, 169, },
		[11] = { 52, 123, 184, },
		[12] = { 54, 134, 201, },
		[13] = { 56, 146, 219, },
		[14] = { 58, 159, 238, },
		[15] = { 60, 173, 259, },
		[16] = { 62, 188, 282, },
		[17] = { 64, 204, 306, },
		[18] = { 66, 221, 332, },
		[19] = { 68, 240, 360, },
		[20] = { 70, 260, 390, },
		[21] = { 72, 281, 422, },
		[22] = { 74, 305, 457, },
		[23] = { 76, 329, 494, },
		[24] = { 78, 356, 534, },
		[25] = { 80, 385, 577, },
		[26] = { 82, 416, 623, },
		[27] = { 84, 449, 673, },
		[28] = { 86, 484, 726, },
		[29] = { 88, 522, 783, },
		[30] = { 90, 563, 844, },
	},
}
skills["Flammability"] = {
	name = "Flammability",
	gemTags = {
		curse = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
		fire = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
		fire = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, [33] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		--"base_deal_no_damage" = ?
		skill("debuff", true), 
	},
	qualityMods = {
		mod("SelfIgniteDuration", "INC", 0.5, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_self_ignite_duration_-%" = -0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("duration", nil), --"base_skill_effect_duration"
		[4] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
		[5] = mod("FireResist", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_fire_damage_resistance_%"
		[6] = mod("SelfIgniteChance", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"chance_to_be_ignited_%"
	},
	levels = {
		[1] = { 24, 24, 9, 0, -25, 10, },
		[2] = { 27, 26, 9.1, 4, -26, 10, },
		[3] = { 30, 27, 9.2, 8, -27, 10, },
		[4] = { 33, 29, 9.3, 12, -28, 10, },
		[5] = { 36, 30, 9.4, 16, -29, 10, },
		[6] = { 39, 32, 9.5, 20, -30, 11, },
		[7] = { 42, 34, 9.6, 24, -31, 11, },
		[8] = { 45, 35, 9.7, 28, -32, 11, },
		[9] = { 48, 37, 9.8, 32, -33, 11, },
		[10] = { 50, 38, 9.9, 36, -34, 11, },
		[11] = { 52, 39, 10, 40, -35, 12, },
		[12] = { 54, 40, 10.1, 44, -36, 12, },
		[13] = { 56, 42, 10.2, 48, -37, 12, },
		[14] = { 58, 43, 10.3, 52, -38, 12, },
		[15] = { 60, 44, 10.4, 56, -39, 12, },
		[16] = { 62, 45, 10.5, 60, -40, 13, },
		[17] = { 64, 46, 10.6, 64, -41, 13, },
		[18] = { 66, 47, 10.7, 68, -42, 13, },
		[19] = { 68, 48, 10.8, 72, -43, 13, },
		[20] = { 70, 50, 10.9, 76, -44, 14, },
		[21] = { 72, 51, 11, 80, -45, 14, },
		[22] = { 74, 52, 11.1, 84, -46, 14, },
		[23] = { 76, 53, 11.2, 88, -47, 15, },
		[24] = { 78, 54, 11.3, 92, -48, 15, },
		[25] = { 80, 56, 11.4, 96, -49, 15, },
		[26] = { 82, 57, 11.5, 100, -50, 16, },
		[27] = { 84, 58, 11.6, 104, -51, 16, },
		[28] = { 86, 59, 11.7, 108, -52, 16, },
		[29] = { 88, 60, 11.8, 112, -53, 17, },
		[30] = { 90, 61, 11.9, 116, -54, 17, },
	},
}
skills["FleshOffering"] = {
	name = "Flesh Offering",
	gemTags = {
		minion = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		duration = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		duration = true,
	},
	skillTypes = { [2] = true, [5] = true, [12] = true, [36] = true, [9] = true, [49] = true, [17] = true, [19] = true, [18] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("duration", 3), --"base_skill_effect_duration" = 3000
		--"offering_skill_effect_duration_per_corpse" = 500
		--"base_deal_no_damage" = ?
		skill("offering", true), 
	},
	qualityMods = {
		mod("Duration", "INC", 0.5), --"skill_effect_duration_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = mod("Speed", "INC", nil, ModFlag.Attack, 0, { type = "GlobalEffect", effectType = "Buff" }), --"attack_speed_+%"
		[4] = mod("MovementSpeed", "INC", nil, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"base_movement_velocity_+%"
		[5] = mod("Speed", "INC", nil, ModFlag.Cast, 0, { type = "GlobalEffect", effectType = "Buff" }), --"cast_speed_+%_from_haste_aura"
	},
	levels = {
		[1] = { 12, 16, 20, 20, 20, },
		[2] = { 15, 17, 21, 20, 21, },
		[3] = { 19, 18, 21, 21, 21, },
		[4] = { 23, 19, 22, 21, 22, },
		[5] = { 27, 20, 22, 22, 22, },
		[6] = { 31, 21, 23, 22, 23, },
		[7] = { 35, 22, 23, 23, 23, },
		[8] = { 38, 23, 24, 23, 24, },
		[9] = { 41, 24, 24, 24, 24, },
		[10] = { 44, 25, 25, 24, 25, },
		[11] = { 47, 26, 25, 25, 25, },
		[12] = { 50, 27, 26, 25, 26, },
		[13] = { 53, 28, 26, 26, 26, },
		[14] = { 56, 29, 27, 26, 27, },
		[15] = { 59, 29, 27, 27, 27, },
		[16] = { 62, 30, 28, 27, 28, },
		[17] = { 64, 30, 28, 28, 28, },
		[18] = { 66, 31, 29, 28, 29, },
		[19] = { 68, 32, 29, 29, 29, },
		[20] = { 70, 33, 30, 29, 30, },
		[21] = { 72, 34, 30, 30, 30, },
		[22] = { 74, 34, 31, 30, 31, },
		[23] = { 76, 35, 31, 31, 31, },
		[24] = { 78, 36, 32, 31, 32, },
		[25] = { 80, 37, 32, 32, 32, },
		[26] = { 82, 38, 33, 32, 33, },
		[27] = { 84, 38, 33, 33, 33, },
		[28] = { 86, 39, 34, 33, 34, },
		[29] = { 88, 40, 34, 34, 34, },
		[30] = { 90, 41, 35, 34, 35, },
	},
}
skills["FreezingPulse"] = {
	name = "Freezing Pulse",
	gemTags = {
		projectile = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		cold = true,
	},
	setupFunc = function(env, output)
		env.modDB:NewMod("Damage", "MORE", -100, "Skill:Freezing Pulse", ModFlag.Spell, { type = "DistanceRamp", ramp = {{0,0},{60*output.ProjectileSpeedMod,1}} })
		env.modDB:NewMod("EnemyFreezeChance", "BASE", 25, "Skill:Freezing Pulse", { type = "DistanceRamp", ramp = {{0,1},{15*output.ProjectileSpeedMod,0}} })
	end,
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		cold = true,
	},
	skillTypes = { [2] = true, [3] = true, [10] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [34] = true, [60] = true, },
	baseMods = {
		skill("castTime", 0.65), 
		skill("damageEffectiveness", 1.25), 
		skill("critChance", 6), 
		--"base_is_projectile" = ?
		mod("PierceChance", "BASE", 100), --"always_pierce" = ?
	},
	qualityMods = {
		mod("ProjectileSpeed", "INC", 2), --"base_projectile_speed_+%" = 2
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("ColdMin", nil), --"spell_minimum_base_cold_damage"
		[4] = skill("ColdMax", nil), --"spell_maximum_base_cold_damage"
		[5] = mod("ProjectileSpeed", "INC", nil), --"base_projectile_speed_+%"
	},
	levels = {
		[1] = { 1, 4, 7, 11, 0, },
		[2] = { 2, 5, 8, 13, 1, },
		[3] = { 4, 6, 11, 16, 2, },
		[4] = { 7, 7, 15, 23, 3, },
		[5] = { 11, 8, 22, 33, 4, },
		[6] = { 16, 9, 32, 49, 5, },
		[7] = { 20, 10, 43, 65, 6, },
		[8] = { 24, 11, 57, 85, 7, },
		[9] = { 28, 12, 73, 110, 8, },
		[10] = { 32, 13, 93, 140, 9, },
		[11] = { 36, 14, 118, 176, 10, },
		[12] = { 40, 14, 148, 221, 11, },
		[13] = { 44, 15, 184, 276, 12, },
		[14] = { 48, 16, 228, 342, 13, },
		[15] = { 52, 17, 281, 421, 14, },
		[16] = { 56, 18, 345, 517, 15, },
		[17] = { 60, 18, 422, 633, 16, },
		[18] = { 64, 18, 515, 772, 17, },
		[19] = { 67, 18, 596, 894, 18, },
		[20] = { 70, 18, 689, 1034, 19, },
		[21] = { 72, 18, 759, 1138, 20, },
		[22] = { 74, 19, 835, 1252, 21, },
		[23] = { 76, 19, 918, 1377, 22, },
		[24] = { 78, 19, 1009, 1513, 23, },
		[25] = { 80, 20, 1108, 1662, 24, },
		[26] = { 82, 20, 1216, 1824, 25, },
		[27] = { 84, 20, 1335, 2002, 26, },
		[28] = { 86, 21, 1464, 2196, 27, },
		[29] = { 88, 21, 1605, 2407, 28, },
		[30] = { 90, 21, 1759, 2638, 29, },
	},
}
skills["FrostBomb"] = {
	name = "Frost Bomb",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
		cold = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		duration = true,
		cold = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [34] = true, [10] = true, [26] = true, [18] = true, [17] = true, [19] = true, [36] = true, [60] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("damageEffectiveness", 1.3), 
		skill("critChance", 6), 
		skill("cooldown", 2.5), 
		skill("duration", 3.5), --"base_skill_effect_duration" = 3500
		--"base_secondary_skill_effect_duration" = 2000
		mod("ColdResist", "BASE", -20, 0, 0, { type = "GlobalEffect", effectType = "Debuff" }), --"base_cold_damage_resistance_%" = -20
		--"life_regeneration_rate_+%" = -75
		--"is_area_damage" = ?
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
	},
	qualityMods = {
		mod("ColdDamage", "INC", 1), --"cold_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("ColdMin", nil), --"spell_minimum_base_cold_damage"
		[4] = skill("ColdMax", nil), --"spell_maximum_base_cold_damage"
	},
	levels = {
		[1] = { 4, 6, 10, 14, },
		[2] = { 6, 7, 12, 18, },
		[3] = { 9, 8, 15, 23, },
		[4] = { 12, 9, 20, 30, },
		[5] = { 16, 10, 27, 40, },
		[6] = { 20, 11, 36, 54, },
		[7] = { 24, 12, 46, 70, },
		[8] = { 28, 13, 59, 89, },
		[9] = { 32, 13, 75, 113, },
		[10] = { 36, 14, 94, 142, },
		[11] = { 40, 14, 118, 176, },
		[12] = { 44, 15, 145, 218, },
		[13] = { 48, 16, 179, 268, },
		[14] = { 52, 16, 219, 329, },
		[15] = { 55, 17, 254, 382, },
		[16] = { 58, 18, 295, 442, },
		[17] = { 61, 18, 341, 511, },
		[18] = { 64, 19, 393, 590, },
		[19] = { 67, 19, 453, 679, },
		[20] = { 70, 19, 521, 781, },
		[21] = { 72, 20, 572, 857, },
		[22] = { 74, 21, 627, 940, },
		[23] = { 76, 21, 687, 1030, },
		[24] = { 78, 21, 752, 1128, },
		[25] = { 80, 22, 823, 1235, },
		[26] = { 82, 23, 900, 1351, },
		[27] = { 84, 23, 985, 1477, },
		[28] = { 86, 23, 1076, 1614, },
		[29] = { 88, 24, 1176, 1764, },
		[30] = { 90, 24, 1284, 1926, },
	},
}
skills["FrostWall"] = {
	name = "Frost Wall",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		duration = true,
		cold = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		duration = true,
		cold = true,
	},
	skillTypes = { [2] = true, [10] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [34] = true, [60] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("cooldown", 3), 
		--"wall_expand_delay_ms" = 150
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
	},
	qualityMods = {
		mod("Duration", "INC", 1), --"skill_effect_duration_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("duration", nil), --"base_skill_effect_duration"
		--[4] = "wall_maximum_length"
		[5] = skill("ColdMin", nil), --"spell_minimum_base_cold_damage"
		[6] = skill("ColdMax", nil), --"spell_maximum_base_cold_damage"
	},
	levels = {
		[1] = { 4, 14, 3, 28, 8, 12, },
		[2] = { 6, 16, 3.1, 28, 9, 16, },
		[3] = { 9, 18, 3.2, 28, 14, 23, },
		[4] = { 12, 20, 3.3, 28, 18, 27, },
		[5] = { 16, 21, 3.4, 35, 25, 37, },
		[6] = { 20, 23, 3.5, 35, 32, 49, },
		[7] = { 24, 24, 3.6, 35, 42, 63, },
		[8] = { 28, 25, 3.7, 35, 54, 81, },
		[9] = { 32, 26, 3.8, 42, 68, 102, },
		[10] = { 36, 27, 3.9, 42, 85, 128, },
		[11] = { 40, 28, 4, 42, 106, 159, },
		[12] = { 44, 29, 4.1, 42, 131, 196, },
		[13] = { 48, 30, 4.2, 49, 160, 240, },
		[14] = { 52, 31, 4.3, 49, 196, 294, },
		[15] = { 55, 32, 4.4, 49, 227, 341, },
		[16] = { 58, 33, 4.5, 49, 263, 394, },
		[17] = { 61, 34, 4.6, 56, 303, 455, },
		[18] = { 64, 35, 4.7, 56, 350, 524, },
		[19] = { 67, 36, 4.8, 56, 402, 603, },
		[20] = { 70, 37, 4.9, 56, 462, 693, },
		[21] = { 72, 38, 5, 63, 506, 759, },
		[22] = { 74, 38, 5.1, 63, 554, 832, },
		[23] = { 76, 38, 5.2, 63, 607, 910, },
		[24] = { 78, 39, 5.3, 63, 664, 996, },
		[25] = { 80, 40, 5.4, 70, 726, 1089, },
		[26] = { 82, 40, 5.5, 70, 794, 1191, },
		[27] = { 84, 41, 5.6, 70, 867, 1301, },
		[28] = { 86, 42, 5.7, 70, 947, 1420, },
		[29] = { 88, 42, 5.8, 77, 1033, 1550, },
		[30] = { 90, 42, 5.9, 77, 1127, 1691, },
	},
}
skills["Frostbite"] = {
	name = "Frostbite",
	gemTags = {
		curse = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
		cold = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
		cold = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, [34] = true, [60] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		--"base_deal_no_damage" = ?
		skill("debuff", true), 
	},
	qualityMods = {
		mod("SelfFreezeDuration", "INC", 1, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_self_freeze_duration_-%" = -1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("duration", nil), --"base_skill_effect_duration"
		[4] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
		[5] = mod("ColdResist", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"base_cold_damage_resistance_%"
		[6] = mod("SelfFreezeChance", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"chance_to_be_frozen_%"
	},
	levels = {
		[1] = { 24, 24, 9, 0, -25, 10, },
		[2] = { 27, 26, 9.1, 4, -26, 10, },
		[3] = { 30, 27, 9.2, 8, -27, 10, },
		[4] = { 33, 29, 9.3, 12, -28, 10, },
		[5] = { 36, 30, 9.4, 16, -29, 10, },
		[6] = { 39, 32, 9.5, 20, -30, 11, },
		[7] = { 42, 34, 9.6, 24, -31, 11, },
		[8] = { 45, 35, 9.7, 28, -32, 11, },
		[9] = { 48, 37, 9.8, 32, -33, 11, },
		[10] = { 50, 38, 9.9, 36, -34, 11, },
		[11] = { 52, 39, 10, 40, -35, 12, },
		[12] = { 54, 40, 10.1, 44, -36, 12, },
		[13] = { 56, 42, 10.2, 48, -37, 12, },
		[14] = { 58, 43, 10.3, 52, -38, 12, },
		[15] = { 60, 44, 10.4, 56, -39, 12, },
		[16] = { 62, 45, 10.5, 60, -40, 13, },
		[17] = { 64, 46, 10.6, 64, -41, 13, },
		[18] = { 66, 47, 10.7, 68, -42, 13, },
		[19] = { 68, 48, 10.8, 72, -43, 13, },
		[20] = { 70, 50, 10.9, 76, -44, 14, },
		[21] = { 72, 51, 11, 80, -45, 14, },
		[22] = { 74, 52, 11.1, 84, -46, 14, },
		[23] = { 76, 53, 11.2, 88, -47, 15, },
		[24] = { 78, 54, 11.3, 92, -48, 15, },
		[25] = { 80, 56, 11.4, 96, -49, 15, },
		[26] = { 82, 57, 11.5, 100, -50, 16, },
		[27] = { 84, 58, 11.6, 104, -51, 16, },
		[28] = { 86, 59, 11.7, 108, -52, 16, },
		[29] = { 88, 60, 11.8, 112, -53, 17, },
		[30] = { 90, 61, 11.9, 116, -54, 17, },
	},
}
skills["FrostBolt"] = {
	name = "Frostbolt",
	gemTags = {
		projectile = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		cold = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		cold = true,
	},
	skillTypes = { [2] = true, [3] = true, [10] = true, [17] = true, [18] = true, [19] = true, [26] = true, [34] = true, [36] = true, [60] = true, },
	baseMods = {
		skill("castTime", 0.75), 
		skill("critChance", 5), 
		--"base_is_projectile" = ?
		mod("PierceChance", "BASE", 100), --"always_pierce" = ?
	},
	qualityMods = {
		mod("ColdDamage", "INC", 1), --"cold_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("ColdMin", nil), --"spell_minimum_base_cold_damage"
		[4] = skill("ColdMax", nil), --"spell_maximum_base_cold_damage"
	},
	levels = {
		[1] = { 1, 6, 6, 10, },
		[2] = { 2, 6, 7, 11, },
		[3] = { 4, 7, 9, 14, },
		[4] = { 7, 8, 13, 19, },
		[5] = { 11, 9, 18, 27, },
		[6] = { 16, 10, 28, 42, },
		[7] = { 20, 11, 38, 57, },
		[8] = { 24, 12, 50, 75, },
		[9] = { 28, 13, 66, 99, },
		[10] = { 32, 14, 86, 128, },
		[11] = { 36, 14, 110, 165, },
		[12] = { 40, 15, 141, 211, },
		[13] = { 44, 16, 178, 268, },
		[14] = { 48, 16, 225, 338, },
		[15] = { 52, 17, 283, 424, },
		[16] = { 56, 18, 354, 530, },
		[17] = { 60, 18, 440, 661, },
		[18] = { 64, 19, 547, 820, },
		[19] = { 67, 19, 642, 963, },
		[20] = { 70, 20, 752, 1129, },
		[21] = { 72, 20, 836, 1254, },
		[22] = { 74, 21, 928, 1392, },
		[23] = { 76, 21, 1030, 1544, },
		[24] = { 78, 21, 1142, 1713, },
		[25] = { 80, 22, 1266, 1898, },
		[26] = { 82, 23, 1402, 2103, },
		[27] = { 84, 23, 1552, 2329, },
		[28] = { 86, 23, 1718, 2577, },
		[29] = { 88, 24, 1901, 2851, },
		[30] = { 90, 24, 2102, 3153, },
	},
}
skills["GlacialCascade"] = {
	name = "Glacial Cascade",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		cold = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		cold = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [34] = true, [60] = true, },
	baseMods = {
		skill("castTime", 0.8), 
		skill("damageEffectiveness", 0.6), 
		skill("critChance", 5), 
		--"upheaval_number_of_spikes" = 7
		--"is_area_damage" = ?
	},
	qualityMods = {
		mod("Damage", "INC", 1, 0, 0, nil), --"damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("PhysicalMin", nil), --"spell_minimum_base_physical_damage"
		[4] = skill("PhysicalMax", nil), --"spell_maximum_base_physical_damage"
		[5] = skill("ColdMin", nil), --"spell_minimum_base_cold_damage"
		[6] = skill("ColdMax", nil), --"spell_maximum_base_cold_damage"
	},
	levels = {
		[1] = { 28, 13, 12, 19, 23, 35, },
		[2] = { 31, 14, 15, 23, 28, 42, },
		[3] = { 34, 15, 18, 27, 33, 50, },
		[4] = { 37, 16, 21, 32, 39, 59, },
		[5] = { 40, 17, 25, 38, 46, 69, },
		[6] = { 42, 18, 27, 42, 51, 77, },
		[7] = { 44, 18, 31, 47, 57, 85, },
		[8] = { 46, 19, 34, 52, 63, 95, },
		[9] = { 48, 19, 38, 58, 70, 105, },
		[10] = { 50, 20, 42, 64, 77, 116, },
		[11] = { 52, 21, 46, 71, 85, 129, },
		[12] = { 54, 21, 51, 78, 94, 142, },
		[13] = { 56, 22, 56, 86, 104, 157, },
		[14] = { 58, 22, 62, 95, 115, 173, },
		[15] = { 60, 23, 68, 105, 127, 191, },
		[16] = { 62, 24, 75, 116, 139, 210, },
		[17] = { 64, 24, 83, 127, 153, 231, },
		[18] = { 66, 25, 91, 140, 169, 254, },
		[19] = { 68, 25, 100, 154, 185, 280, },
		[20] = { 70, 26, 110, 169, 203, 307, },
		[21] = { 72, 27, 120, 185, 223, 337, },
		[22] = { 74, 27, 132, 203, 245, 369, },
		[23] = { 76, 28, 145, 223, 268, 405, },
		[24] = { 78, 28, 158, 244, 294, 443, },
		[25] = { 80, 29, 174, 267, 322, 485, },
		[26] = { 82, 30, 190, 292, 352, 531, },
		[27] = { 84, 30, 208, 319, 385, 581, },
		[28] = { 86, 31, 227, 349, 421, 635, },
		[29] = { 88, 31, 248, 382, 460, 694, },
		[30] = { 90, 32, 271, 417, 502, 758, },
	},
}
skills["HeraldOfThunder"] = {
	name = "Herald of Thunder",
	gemTags = {
		intelligence = true,
		active_skill = true,
		cast = true,
		area = true,
		duration = true,
		lightning = true,
	},
	color = 3,
	baseFlags = {
		cast = true,
		duration = true,
		lightning = true,
	},
	skillTypes = { [39] = true, [5] = true, [15] = true, [16] = true, [10] = true, [11] = true, [12] = true, [35] = true, [27] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("manaCost", 25), 
		skill("damageEffectiveness", 1.2), 
		skill("cooldown", 1), 
		skill("duration", 6), --"base_skill_effect_duration" = 6000
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
		flag("CannotShock"), --"never_shock" = ?
		--"display_skill_deals_secondary_damage" = ?
		--"skill_can_add_multiple_charges_per_action" = ?
	},
	qualityMods = {
		mod("LightningDamage", "INC", 0.75, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"herald_of_thunder_lightning_damage_+%" = 0.75
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("LightningMin", "BASE", nil, ModFlag.Spell, 0, { type = "GlobalEffect", effectType = "Buff" }), --"spell_minimum_added_lightning_damage"
		[3] = mod("LightningMax", "BASE", nil, ModFlag.Spell, 0, { type = "GlobalEffect", effectType = "Buff" }), --"spell_maximum_added_lightning_damage"
		[4] = mod("LightningMin", "BASE", nil, ModFlag.Attack, 0, { type = "GlobalEffect", effectType = "Buff" }), --"attack_minimum_added_lightning_damage"
		[5] = mod("LightningMax", "BASE", nil, ModFlag.Attack, 0, { type = "GlobalEffect", effectType = "Buff" }), --"attack_maximum_added_lightning_damage"
		[6] = skill("LightningMin", nil), --"secondary_minimum_base_lightning_damage"
		[7] = skill("LightningMax", nil), --"secondary_maximum_base_lightning_damage"
	},
	levels = {
		[1] = { 16, 2, 7, 2, 7, 1, 34, },
		[2] = { 20, 2, 9, 2, 9, 1, 47, },
		[3] = { 24, 3, 11, 3, 11, 1, 65, },
		[4] = { 28, 3, 14, 3, 14, 2, 87, },
		[5] = { 31, 4, 16, 4, 16, 2, 108, },
		[6] = { 34, 5, 18, 5, 18, 3, 135, },
		[7] = { 37, 5, 21, 5, 21, 3, 166, },
		[8] = { 40, 6, 24, 6, 24, 4, 203, },
		[9] = { 43, 7, 27, 7, 27, 5, 248, },
		[10] = { 46, 8, 31, 8, 31, 6, 301, },
		[11] = { 49, 9, 35, 9, 35, 8, 363, },
		[12] = { 52, 10, 39, 10, 39, 9, 436, },
		[13] = { 55, 11, 44, 11, 44, 11, 522, },
		[14] = { 58, 12, 49, 12, 49, 13, 623, },
		[15] = { 60, 13, 53, 13, 53, 15, 708, },
		[16] = { 62, 14, 57, 14, 57, 17, 803, },
		[17] = { 64, 15, 61, 15, 61, 19, 908, },
		[18] = { 66, 16, 66, 16, 66, 21, 1026, },
		[19] = { 68, 18, 71, 18, 71, 24, 1157, },
		[20] = { 70, 19, 76, 19, 76, 27, 1303, },
		[21] = { 72, 20, 81, 20, 81, 31, 1451, },
		[22] = { 74, 22, 87, 22, 87, 34, 1615, },
		[23] = { 76, 23, 94, 23, 94, 38, 1796, },
		[24] = { 78, 25, 100, 25, 100, 43, 1995, },
		[25] = { 80, 27, 107, 27, 107, 48, 2215, },
		[26] = { 82, 29, 115, 29, 115, 54, 2457, },
		[27] = { 84, 31, 123, 31, 123, 60, 2723, },
		[28] = { 86, 33, 131, 33, 131, 67, 3016, },
		[29] = { 88, 35, 140, 35, 140, 75, 3338, },
		[30] = { 90, 37, 150, 37, 150, 83, 3692, },
	},
}
skills["IceNova"] = {
	name = "Ice Nova",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		cold = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		cold = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [34] = true, [60] = true, },
	baseMods = {
		skill("castTime", 0.8), 
		skill("damageEffectiveness", 0.7), 
		skill("critChance", 6), 
		--"skill_art_variation" = 0
		--"is_area_damage" = 1
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("ColdMin", nil), --"spell_minimum_base_cold_damage"
		[4] = skill("ColdMax", nil), --"spell_maximum_base_cold_damage"
	},
	levels = {
		[1] = { 12, 10, 15, 21, },
		[2] = { 15, 11, 17, 27, },
		[3] = { 19, 13, 24, 37, },
		[4] = { 23, 14, 31, 49, },
		[5] = { 27, 16, 41, 64, },
		[6] = { 31, 17, 53, 83, },
		[7] = { 35, 19, 68, 106, },
		[8] = { 38, 20, 81, 127, },
		[9] = { 41, 21, 96, 151, },
		[10] = { 44, 22, 115, 179, },
		[11] = { 47, 23, 136, 212, },
		[12] = { 50, 24, 160, 250, },
		[13] = { 53, 25, 188, 294, },
		[14] = { 56, 26, 221, 346, },
		[15] = { 59, 27, 259, 405, },
		[16] = { 62, 28, 304, 474, },
		[17] = { 64, 29, 337, 526, },
		[18] = { 66, 30, 373, 583, },
		[19] = { 68, 30, 413, 646, },
		[20] = { 70, 31, 458, 715, },
		[21] = { 72, 32, 506, 791, },
		[22] = { 74, 33, 560, 875, },
		[23] = { 76, 34, 619, 966, },
		[24] = { 78, 34, 683, 1067, },
		[25] = { 80, 34, 754, 1178, },
		[26] = { 82, 34, 832, 1300, },
		[27] = { 84, 35, 917, 1433, },
		[28] = { 86, 35, 1011, 1580, },
		[29] = { 88, 35, 1114, 1740, },
		[30] = { 90, 35, 1227, 1917, },
	},
}
skills["VaalIceNova"] = {
	name = "Vaal Ice Nova",
	gemTags = {
		intelligence = true,
		active_skill = true,
		vaal = true,
		spell = true,
		area = true,
		cold = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		cold = true,
		vaal = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [43] = true, [34] = true, },
	baseMods = {
		skill("castTime", 0.8), 
		skill("damageEffectiveness", 0.7), 
		skill("critChance", 6), 
		--"ice_nova_number_of_repeats" = 5
		--"ice_nova_radius_+%_per_repeat" = -20
		--"is_area_damage" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("ColdMin", nil), --"spell_minimum_base_cold_damage"
		[3] = skill("ColdMax", nil), --"spell_maximum_base_cold_damage"
	},
	levels = {
		[1] = { 12, 11, 17, },
		[2] = { 15, 14, 22, },
		[3] = { 19, 18, 29, },
		[4] = { 23, 24, 37, },
		[5] = { 27, 31, 48, },
		[6] = { 31, 39, 61, },
		[7] = { 35, 49, 76, },
		[8] = { 38, 57, 89, },
		[9] = { 41, 67, 105, },
		[10] = { 44, 78, 123, },
		[11] = { 47, 91, 143, },
		[12] = { 50, 106, 166, },
		[13] = { 53, 123, 193, },
		[14] = { 56, 143, 223, },
		[15] = { 59, 164, 257, },
		[16] = { 62, 189, 296, },
		[17] = { 64, 208, 325, },
		[18] = { 66, 228, 357, },
		[19] = { 68, 250, 391, },
		[20] = { 70, 274, 428, },
		[21] = { 72, 300, 469, },
		[22] = { 74, 328, 513, },
		[23] = { 76, 359, 561, },
		[24] = { 78, 393, 613, },
		[25] = { 80, 429, 670, },
		[26] = { 82, 468, 732, },
		[27] = { 84, 511, 799, },
		[28] = { 86, 558, 871, },
		[29] = { 88, 608, 950, },
		[30] = { 90, 663, 1035, },
	},
}
skills["IceSpear"] = {
	name = "Ice Spear",
	gemTags = {
		projectile = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		cold = true,
	},
	parts = {
		{
			name = "First Form",
		},
		{
			name = "Second Form",
		},
	},
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		cold = true,
	},
	skillTypes = { [2] = true, [3] = true, [10] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [34] = true, [60] = true, },
	baseMods = {
		skill("castTime", 0.85), 
		skill("damageEffectiveness", 0.8), 
		skill("critChance", 7), 
		--"base_is_projectile" = 1
		mod("CritChance", "INC", 600, 0, 0, { type = "SkillPart", skillPart = 2 }), --"ice_spear_second_form_critical_strike_chance_+%" = 600
		mod("PierceChance", "BASE", 100, 0, 0, { type = "SkillPart", skillPart = 1 }), 
	},
	qualityMods = {
		mod("ProjectileSpeed", "INC", 2), --"base_projectile_speed_+%" = 2
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("ColdMin", nil), --"spell_minimum_base_cold_damage"
		[4] = skill("ColdMax", nil), --"spell_maximum_base_cold_damage"
		[5] = mod("EnemyChillDuration", "INC", nil), --"chill_duration_+%"
	},
	levels = {
		[1] = { 12, 9, 17, 26, 40, },
		[2] = { 15, 10, 21, 31, 42, },
		[3] = { 19, 11, 28, 42, 44, },
		[4] = { 23, 12, 36, 53, 46, },
		[5] = { 27, 13, 47, 70, 48, },
		[6] = { 31, 14, 61, 91, 50, },
		[7] = { 35, 16, 78, 117, 52, },
		[8] = { 38, 16, 94, 140, 54, },
		[9] = { 41, 17, 112, 168, 56, },
		[10] = { 44, 18, 133, 200, 58, },
		[11] = { 47, 19, 158, 237, 60, },
		[12] = { 50, 20, 187, 281, 62, },
		[13] = { 53, 21, 221, 332, 64, },
		[14] = { 56, 22, 261, 391, 66, },
		[15] = { 59, 23, 307, 460, 68, },
		[16] = { 62, 24, 360, 540, 70, },
		[17] = { 64, 24, 400, 600, 72, },
		[18] = { 66, 25, 445, 667, 74, },
		[19] = { 68, 26, 494, 741, 76, },
		[20] = { 70, 27, 548, 822, 78, },
		[21] = { 72, 28, 607, 911, 80, },
		[22] = { 74, 29, 673, 1009, 82, },
		[23] = { 76, 29, 745, 1118, 84, },
		[24] = { 78, 30, 825, 1237, 86, },
		[25] = { 80, 30, 912, 1369, 88, },
		[26] = { 82, 31, 1009, 1513, 90, },
		[27] = { 84, 32, 1115, 1672, 92, },
		[28] = { 86, 33, 1232, 1847, 94, },
		[29] = { 88, 33, 1360, 2040, 96, },
		[30] = { 90, 34, 1501, 2251, 98, },
	},
}
skills["Incinerate"] = {
	name = "Incinerate",
	gemTags = {
		projectile = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		fire = true,
		channelling = true,
	},
	parts = {
		{
			name = "Base damage",
		},
		{
			name = "Fully charged",
		},
	},
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		fire = true,
	},
	skillTypes = { [2] = true, [3] = true, [10] = true, [18] = true, [33] = true, [58] = true, },
	baseMods = {
		skill("castTime", 0.2), 
		skill("damageEffectiveness", 0.3), 
		--"flamethrower_damage_+%_per_stage_final" = 50
		--"base_is_projectile" = ?
		mod("PierceChance", "BASE", 100), --"always_pierce" = ?
		--"skill_can_add_multiple_charges_per_action" = ?
		mod("Damage", "MORE", 150, ModFlag.Spell, 0, { type = "SkillPart", skillPart = 2 }), 
	},
	qualityMods = {
		mod("ProjectileSpeed", "INC", 2), --"base_projectile_speed_+%" = 2
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[4] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
	},
	levels = {
		[1] = { 12, 6, 6, 9, },
		[2] = { 15, 6, 7, 11, },
		[3] = { 19, 6, 10, 15, },
		[4] = { 23, 6, 13, 19, },
		[5] = { 27, 6, 16, 24, },
		[6] = { 31, 6, 20, 31, },
		[7] = { 35, 6, 25, 38, },
		[8] = { 38, 6, 30, 45, },
		[9] = { 41, 7, 35, 52, },
		[10] = { 44, 7, 41, 61, },
		[11] = { 47, 7, 47, 71, },
		[12] = { 50, 7, 54, 82, },
		[13] = { 53, 7, 63, 94, },
		[14] = { 56, 7, 72, 108, },
		[15] = { 59, 8, 83, 125, },
		[16] = { 62, 8, 95, 143, },
		[17] = { 64, 8, 104, 157, },
		[18] = { 66, 8, 114, 171, },
		[19] = { 68, 8, 125, 187, },
		[20] = { 70, 9, 136, 204, },
		[21] = { 72, 9, 149, 223, },
		[22] = { 74, 9, 162, 244, },
		[23] = { 76, 9, 177, 266, },
		[24] = { 78, 9, 193, 289, },
		[25] = { 80, 9, 210, 315, },
		[26] = { 82, 10, 229, 343, },
		[27] = { 84, 10, 249, 374, },
		[28] = { 86, 10, 271, 406, },
		[29] = { 88, 10, 295, 442, },
		[30] = { 90, 10, 320, 480, },
	},
}
skills["ClusterBurst"] = {
	name = "Kinetic Blast",
	gemTags = {
		intelligence = true,
		active_skill = true,
		attack = true,
		area = true,
		projectile = true,
	},
	parts = {
		{
			name = "Projectile",
			area = false,
		},
		{
			name = "Explosions",
			area = true,
		},
	},
	color = 3,
	baseFlags = {
		attack = true,
		projectile = true,
		area = true,
	},
	skillTypes = { [1] = true, [48] = true, [3] = true, [6] = true, [11] = true, [17] = true, [19] = true, [22] = true, },
	weaponTypes = {
		["Wand"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		--"cluster_burst_spawn_amount" = 4
		mod("Damage", "MORE", -25, ModFlag.Area), --"active_skill_area_damage_+%_final" = -25
		--"base_is_projectile" = ?
		--"skill_can_fire_wand_projectiles" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = mod("Damage", "MORE", nil, ModFlag.Attack), 
		[4] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
	},
	levels = {
		[1] = { 28, 15, 20, 0, },
		[2] = { 31, 15, 21.4, 1, },
		[3] = { 34, 15, 22.8, 2, },
		[4] = { 37, 15, 24.2, 3, },
		[5] = { 40, 15, 25.6, 4, },
		[6] = { 42, 15, 27, 5, },
		[7] = { 44, 15, 28.4, 6, },
		[8] = { 46, 15, 29.8, 7, },
		[9] = { 48, 16, 31.2, 8, },
		[10] = { 50, 16, 32.6, 9, },
		[11] = { 52, 16, 34, 10, },
		[12] = { 54, 16, 35.4, 11, },
		[13] = { 56, 16, 36.8, 12, },
		[14] = { 58, 16, 38.2, 13, },
		[15] = { 60, 16, 39.6, 14, },
		[16] = { 62, 16, 41, 15, },
		[17] = { 64, 16, 42.4, 16, },
		[18] = { 66, 16, 43.8, 17, },
		[19] = { 68, 16, 45.2, 18, },
		[20] = { 70, 16, 46.6, 19, },
		[21] = { 72, 16, 48, 20, },
		[22] = { 74, 16, 49.4, 21, },
		[23] = { 76, 16, 50.8, 22, },
		[24] = { 78, 16, 52.2, 23, },
		[25] = { 80, 17, 53.6, 24, },
		[26] = { 82, 17, 55, 25, },
		[27] = { 84, 17, 56.4, 26, },
		[28] = { 86, 17, 57.8, 27, },
		[29] = { 88, 17, 59.2, 28, },
		[30] = { 90, 17, 60.6, 29, },
	},
}
skills["LightningTendrils"] = {
	name = "Lightning Tendrils",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		lightning = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [18] = true, [26] = true, [35] = true, },
	baseMods = {
		skill("castTime", 0.8), 
		skill("damageEffectiveness", 0.35), 
		skill("critChance", 6), 
		--"base_skill_number_of_additional_hits" = 3
		--"is_area_damage" = ?
		skill("dpsMultiplier", 4), 
	},
	qualityMods = {
		mod("LightningDamage", "INC", 1), --"lightning_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[4] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
		--[5] = "active_skill_base_radius_+"
	},
	levels = {
		[1] = { 1, 6, 1, 3, 0, },
		[2] = { 2, 7, 1, 4, 0, },
		[3] = { 4, 8, 1, 5, 1, },
		[4] = { 7, 9, 1, 7, 1, },
		[5] = { 11, 10, 1, 10, 1, },
		[6] = { 16, 11, 1, 16, 2, },
		[7] = { 20, 12, 1, 21, 2, },
		[8] = { 24, 13, 1, 28, 2, },
		[9] = { 28, 14, 2, 38, 3, },
		[10] = { 32, 16, 3, 49, 3, },
		[11] = { 36, 18, 3, 64, 3, },
		[12] = { 40, 19, 4, 82, 4, },
		[13] = { 44, 20, 6, 105, 4, },
		[14] = { 48, 21, 7, 133, 4, },
		[15] = { 52, 22, 9, 168, 5, },
		[16] = { 56, 23, 11, 212, 5, },
		[17] = { 60, 24, 14, 265, 5, },
		[18] = { 64, 25, 17, 332, 6, },
		[19] = { 67, 26, 21, 392, 6, },
		[20] = { 70, 26, 24, 461, 6, },
		[21] = { 72, 27, 27, 514, 7, },
		[22] = { 74, 27, 30, 573, 7, },
		[23] = { 76, 28, 34, 638, 7, },
		[24] = { 78, 28, 37, 710, 8, },
		[25] = { 80, 29, 42, 790, 8, },
		[26] = { 82, 29, 46, 878, 8, },
		[27] = { 84, 30, 51, 975, 9, },
		[28] = { 86, 30, 57, 1083, 9, },
		[29] = { 88, 31, 63, 1202, 9, },
		[30] = { 90, 31, 70, 1334, 10, },
	},
}
skills["LightningTrap"] = {
	name = "Lightning Trap",
	gemTags = {
		projectile = true,
		trap = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		duration = true,
		lightning = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		trap = true,
		projectile = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [10] = true, [3] = true, [37] = true, [19] = true, [12] = true, [35] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("damageEffectiveness", 0.9), 
		skill("critChance", 5), 
		skill("cooldown", 2), 
		--"base_trap_duration" = 16000
		mod("ProjectileCount", "BASE", 8), --"number_of_additional_projectiles" = 8
		--"projectiles_nova" = ?
		--"is_trap" = ?
		--"base_skill_is_trapped" = ?
		--"base_is_projectile" = ?
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
		skill("trapCooldown", 2), 
	},
	qualityMods = {
		mod("TrapThrowingSpeed", "INC", 0.5), --"trap_throwing_speed_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[4] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
	},
	levels = {
		[1] = { 12, 8, 3, 62, },
		[2] = { 15, 9, 4, 77, },
		[3] = { 19, 10, 5, 98, },
		[4] = { 23, 10, 7, 124, },
		[5] = { 27, 11, 8, 153, },
		[6] = { 31, 12, 10, 188, },
		[7] = { 35, 13, 12, 228, },
		[8] = { 38, 14, 14, 263, },
		[9] = { 41, 14, 16, 301, },
		[10] = { 44, 16, 18, 344, },
		[11] = { 47, 17, 21, 391, },
		[12] = { 50, 18, 23, 444, },
		[13] = { 53, 19, 26, 503, },
		[14] = { 56, 20, 30, 568, },
		[15] = { 59, 21, 34, 640, },
		[16] = { 62, 22, 38, 720, },
		[17] = { 64, 22, 41, 779, },
		[18] = { 66, 23, 44, 841, },
		[19] = { 68, 24, 48, 907, },
		[20] = { 70, 24, 52, 979, },
		[21] = { 72, 25, 56, 1055, },
		[22] = { 74, 26, 60, 1136, },
		[23] = { 76, 26, 64, 1223, },
		[24] = { 78, 27, 69, 1316, },
		[25] = { 80, 27, 74, 1415, },
		[26] = { 82, 28, 80, 1521, },
		[27] = { 84, 29, 86, 1634, },
		[28] = { 86, 30, 92, 1755, },
		[29] = { 88, 30, 99, 1884, },
		[30] = { 90, 30, 106, 2021, },
	},
}
skills["VaalLightningTrap"] = {
	name = "Vaal Lightning Trap",
	gemTags = {
		projectile = true,
		trap = true,
		intelligence = true,
		active_skill = true,
		vaal = true,
		spell = true,
		duration = true,
		lightning = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		trap = true,
		projectile = true,
		duration = true,
		lightning = true,
		vaal = true,
	},
	skillTypes = { [2] = true, [10] = true, [3] = true, [37] = true, [19] = true, [12] = true, [43] = true, [35] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("damageEffectiveness", 0.9), 
		skill("critChance", 5), 
		--"base_trap_duration" = 16000
		mod("ProjectileCount", "BASE", 8), --"number_of_additional_projectiles" = 8
		skill("duration", 4), --"base_skill_effect_duration" = 4000
		mod("PierceChance", "BASE", 100), --"pierce_%" = 100
		--"projectiles_nova" = ?
		--"is_trap" = ?
		--"base_skill_is_trapped" = ?
		--"base_is_projectile" = ?
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
		--"lightning_trap_projectiles_leave_shocking_ground" = ?
	},
	qualityMods = {
		mod("TrapThrowingSpeed", "INC", 0.5), --"trap_throwing_speed_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[3] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
	},
	levels = {
		[1] = { 12, 3, 62, },
		[2] = { 15, 4, 77, },
		[3] = { 19, 5, 98, },
		[4] = { 23, 7, 124, },
		[5] = { 27, 8, 153, },
		[6] = { 31, 10, 188, },
		[7] = { 35, 12, 228, },
		[8] = { 38, 14, 263, },
		[9] = { 41, 16, 301, },
		[10] = { 44, 18, 344, },
		[11] = { 47, 21, 391, },
		[12] = { 50, 23, 444, },
		[13] = { 53, 26, 503, },
		[14] = { 56, 30, 568, },
		[15] = { 59, 34, 640, },
		[16] = { 62, 38, 720, },
		[17] = { 64, 41, 779, },
		[18] = { 66, 44, 841, },
		[19] = { 68, 48, 907, },
		[20] = { 70, 52, 979, },
		[21] = { 72, 56, 1055, },
		[22] = { 74, 60, 1136, },
		[23] = { 76, 64, 1223, },
		[24] = { 78, 69, 1316, },
		[25] = { 80, 74, 1415, },
		[26] = { 82, 80, 1521, },
		[27] = { 84, 86, 1634, },
		[28] = { 86, 92, 1755, },
		[29] = { 88, 99, 1884, },
		[30] = { 90, 106, 2021, },
	},
}
skills["LightningWarp"] = {
	name = "Lightning Warp",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
		movement = true,
		lightning = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		duration = true,
		movement = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [36] = true, [38] = true, [45] = true, [35] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("damageEffectiveness", 0.6), 
		skill("critChance", 5), 
		--"is_area_damage" = 1
		--"skill_override_pvp_scaling_time_ms" = 1000
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
	},
	qualityMods = {
		mod("Speed", "INC", 1, ModFlag.Cast), --"base_cast_speed_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[4] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
		[5] = mod("Duration", "INC", nil), --"skill_effect_duration_+%"
	},
	levels = {
		[1] = { 10, 15, 1, 19, 0, },
		[2] = { 13, 16, 1, 24, -2, },
		[3] = { 17, 17, 2, 33, -4, },
		[4] = { 21, 18, 2, 44, -6, },
		[5] = { 25, 18, 3, 58, -8, },
		[6] = { 29, 20, 4, 75, -10, },
		[7] = { 33, 21, 5, 96, -12, },
		[8] = { 36, 22, 6, 115, -14, },
		[9] = { 39, 23, 7, 137, -16, },
		[10] = { 42, 24, 9, 162, -18, },
		[11] = { 45, 26, 10, 192, -20, },
		[12] = { 48, 26, 12, 226, -22, },
		[13] = { 51, 27, 14, 266, -24, },
		[14] = { 54, 28, 16, 312, -26, },
		[15] = { 57, 29, 19, 365, -28, },
		[16] = { 60, 30, 22, 426, -30, },
		[17] = { 63, 30, 26, 497, -32, },
		[18] = { 66, 31, 30, 579, -34, },
		[19] = { 68, 32, 34, 640, -36, },
		[20] = { 70, 33, 37, 707, -38, },
		[21] = { 72, 34, 41, 780, -40, },
		[22] = { 74, 34, 45, 861, -42, },
		[23] = { 76, 34, 50, 949, -44, },
		[24] = { 78, 34, 55, 1046, -46, },
		[25] = { 80, 35, 61, 1152, -48, },
		[26] = { 82, 35, 67, 1269, -50, },
		[27] = { 84, 36, 73, 1396, -52, },
		[28] = { 86, 37, 81, 1536, -54, },
		[29] = { 88, 37, 89, 1689, -56, },
		[30] = { 90, 37, 98, 1856, -58, },
	},
}
skills["VaalLightningWarpInstant"] = {
	name = "Vaal Lightning Warp",
	gemTags = {
		intelligence = true,
		active_skill = true,
		vaal = true,
		spell = true,
		area = true,
		duration = true,
		lightning = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		duration = true,
		lightning = true,
		vaal = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [43] = true, [35] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("damageEffectiveness", 0.5), 
		skill("critChance", 5), 
		--"is_area_damage" = 1
		--"skill_override_pvp_scaling_time_ms" = 1000
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
	},
	qualityMods = {
		mod("Speed", "INC", 1, ModFlag.Cast), --"base_cast_speed_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[3] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
		[4] = mod("Duration", "INC", nil), --"skill_effect_duration_+%"
	},
	levels = {
		[1] = { 10, 1, 18, 0, },
		[2] = { 13, 1, 24, -2, },
		[3] = { 17, 2, 32, -4, },
		[4] = { 21, 2, 42, -6, },
		[5] = { 25, 3, 54, -8, },
		[6] = { 29, 4, 70, -10, },
		[7] = { 33, 5, 88, -12, },
		[8] = { 36, 5, 104, -14, },
		[9] = { 39, 6, 123, -16, },
		[10] = { 42, 8, 145, -18, },
		[11] = { 45, 9, 170, -20, },
		[12] = { 48, 10, 199, -22, },
		[13] = { 51, 12, 232, -24, },
		[14] = { 54, 14, 270, -26, },
		[15] = { 57, 17, 314, -28, },
		[16] = { 60, 19, 364, -30, },
		[17] = { 63, 22, 420, -32, },
		[18] = { 66, 26, 485, -34, },
		[19] = { 68, 28, 534, -36, },
		[20] = { 70, 31, 586, -38, },
		[21] = { 72, 34, 644, -40, },
		[22] = { 74, 37, 707, -42, },
		[23] = { 76, 41, 775, -44, },
		[24] = { 78, 45, 850, -46, },
		[25] = { 80, 49, 931, -48, },
		[26] = { 82, 54, 1019, -50, },
		[27] = { 84, 59, 1116, -52, },
		[28] = { 86, 64, 1221, -54, },
		[29] = { 88, 70, 1335, -56, },
		[30] = { 90, 77, 1459, -58, },
	},
}
skills["MagmaOrb"] = {
	name = "Magma Orb",
	gemTags = {
		projectile = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		fire = true,
		chaining = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		area = true,
		chaining = true,
		fire = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [17] = true, [19] = true, [18] = true, [36] = true, [33] = true, [3] = true, [26] = true, [23] = true, },
	baseMods = {
		skill("castTime", 0.7), 
		skill("damageEffectiveness", 1.25), 
		skill("critChance", 5), 
		--"is_area_damage" = ?
		--"base_is_projectile" = ?
	},
	qualityMods = {
		mod("Damage", "INC", 1, 0, 0, nil), --"damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("FireMin", nil), --"spell_minimum_base_fire_damage"
		[4] = skill("FireMax", nil), --"spell_maximum_base_fire_damage"
		[5] = mod("ChainCount", "BASE", nil), --"number_of_additional_projectiles_in_chain"
	},
	levels = {
		[1] = { 1, 5, 6, 9, 1, },
		[2] = { 2, 6, 7, 10, 1, },
		[3] = { 4, 6, 8, 12, 1, },
		[4] = { 7, 7, 11, 17, 1, },
		[5] = { 11, 7, 16, 24, 1, },
		[6] = { 16, 8, 25, 37, 1, },
		[7] = { 20, 9, 33, 50, 1, },
		[8] = { 24, 10, 44, 66, 1, },
		[9] = { 28, 11, 58, 87, 1, },
		[10] = { 32, 12, 75, 112, 2, },
		[11] = { 36, 13, 96, 144, 2, },
		[12] = { 40, 14, 122, 183, 2, },
		[13] = { 44, 15, 154, 232, 2, },
		[14] = { 48, 16, 194, 291, 2, },
		[15] = { 52, 18, 243, 365, 2, },
		[16] = { 56, 19, 303, 454, 2, },
		[17] = { 60, 20, 376, 564, 2, },
		[18] = { 64, 21, 466, 698, 2, },
		[19] = { 67, 21, 545, 818, 2, },
		[20] = { 70, 22, 637, 956, 2, },
		[21] = { 72, 23, 707, 1060, 3, },
		[22] = { 74, 23, 784, 1175, 3, },
		[23] = { 76, 24, 868, 1302, 3, },
		[24] = { 78, 24, 961, 1442, 3, },
		[25] = { 80, 25, 1063, 1595, 3, },
		[26] = { 82, 26, 1176, 1764, 3, },
		[27] = { 84, 26, 1300, 1950, 3, },
		[28] = { 86, 27, 1437, 2155, 3, },
		[29] = { 88, 27, 1587, 2380, 3, },
		[30] = { 90, 28, 1752, 2628, 3, },
	},
}
skills["OrbOfStorms"] = {
	name = "Orb of Storms",
	gemTags = {
		lightning = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		duration = true,
		area = true,
		chaining = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		chaining = true,
		duration = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [10] = true, [35] = true, [12] = true, [11] = true, [23] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("damageEffectiveness", 0.2), 
		skill("critChance", 5), 
		skill("cooldown", 0.5), 
		skill("duration", 6), --"base_skill_effect_duration" = 6000
		mod("ChainCount", "BASE", 0), --"number_of_additional_projectiles_in_chain" = 0
		--"storm_cloud_charged_damage_+%_final" = 0
		--"skill_can_add_multiple_charges_per_action" = ?
	},
	qualityMods = {
		mod("LightningDamage", "INC", 1), --"lightning_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[4] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
		--[5] = "projectile_number_to_split"
	},
	levels = {
		[1] = { 4, 11, 1, 3, 2, },
		[2] = { 6, 12, 1, 3, 2, },
		[3] = { 9, 13, 1, 4, 2, },
		[4] = { 12, 14, 2, 6, 2, },
		[5] = { 16, 15, 3, 8, 2, },
		[6] = { 20, 16, 3, 10, 2, },
		[7] = { 24, 17, 4, 13, 2, },
		[8] = { 28, 18, 6, 17, 2, },
		[9] = { 32, 19, 7, 22, 3, },
		[10] = { 36, 20, 10, 29, 3, },
		[11] = { 40, 21, 12, 36, 3, },
		[12] = { 44, 22, 15, 45, 3, },
		[13] = { 48, 23, 19, 56, 3, },
		[14] = { 52, 24, 23, 70, 3, },
		[15] = { 55, 25, 27, 82, 3, },
		[16] = { 58, 26, 32, 96, 3, },
		[17] = { 61, 26, 37, 112, 4, },
		[18] = { 64, 27, 44, 131, 4, },
		[19] = { 67, 27, 51, 152, 4, },
		[20] = { 70, 28, 59, 177, 4, },
		[21] = { 72, 28, 65, 195, 4, },
		[22] = { 74, 29, 72, 215, 4, },
		[23] = { 76, 29, 79, 238, 4, },
		[24] = { 78, 30, 87, 262, 4, },
		[25] = { 80, 30, 96, 289, 5, },
		[26] = { 82, 30, 106, 318, 5, },
		[27] = { 84, 30, 117, 350, 5, },
		[28] = { 86, 31, 128, 385, 5, },
		[29] = { 88, 31, 141, 424, 5, },
		[30] = { 90, 32, 155, 466, 5, },
	},
}
skills["PowerSiphon"] = {
	name = "Power Siphon",
	gemTags = {
		intelligence = true,
		active_skill = true,
		attack = true,
		projectile = true,
	},
	color = 3,
	baseFlags = {
		attack = true,
		projectile = true,
	},
	skillTypes = { [1] = true, [48] = true, [6] = true, [3] = true, [22] = true, [17] = true, [19] = true, },
	weaponTypes = {
		["Wand"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		--"kill_enemy_on_hit_if_under_10%_life" = ?
		--"skill_can_fire_wand_projectiles" = ?
	},
	qualityMods = {
		mod("Damage", "INC", 1, 0, 0, nil), --"damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = mod("Damage", "MORE", nil, ModFlag.Attack), 
	},
	levels = {
		[1] = { 12, 13, 30, },
		[2] = { 15, 13, 31.6, },
		[3] = { 19, 13, 33.2, },
		[4] = { 23, 13, 34.8, },
		[5] = { 27, 13, 36.4, },
		[6] = { 31, 13, 38, },
		[7] = { 35, 13, 39.6, },
		[8] = { 38, 14, 41.2, },
		[9] = { 41, 14, 42.8, },
		[10] = { 44, 14, 44.4, },
		[11] = { 47, 14, 46, },
		[12] = { 50, 14, 47.6, },
		[13] = { 53, 14, 49.2, },
		[14] = { 56, 14, 50.8, },
		[15] = { 59, 14, 52.4, },
		[16] = { 62, 14, 54, },
		[17] = { 64, 14, 55.6, },
		[18] = { 66, 14, 57.2, },
		[19] = { 68, 15, 58.8, },
		[20] = { 70, 15, 60.4, },
		[21] = { 72, 15, 62, },
		[22] = { 74, 15, 63.6, },
		[23] = { 76, 15, 65.2, },
		[24] = { 78, 15, 66.8, },
		[25] = { 80, 15, 68.4, },
		[26] = { 82, 16, 70, },
		[27] = { 84, 16, 71.6, },
		[28] = { 86, 16, 73.2, },
		[29] = { 88, 16, 74.8, },
		[30] = { 90, 16, 76.4, },
	},
}
skills["VaalPowerSiphon"] = {
	name = "Vaal Power Siphon",
	gemTags = {
		intelligence = true,
		active_skill = true,
		vaal = true,
		attack = true,
		projectile = true,
	},
	color = 3,
	baseFlags = {
		attack = true,
		projectile = true,
		vaal = true,
	},
	skillTypes = { [1] = true, [48] = true, [6] = true, [3] = true, [22] = true, [17] = true, [19] = true, [43] = true, },
	weaponTypes = {
		["Wand"] = true,
	},
	baseMods = {
		skill("castTime", 1), 
		--"power_siphon_fire_at_all_targets" = ?
		--"skill_can_add_multiple_charges_per_action" = ?
		skill("cannotBeEvaded", true), --"global_always_hit" = ?
		--"kill_enemy_on_hit_if_under_10%_life" = ?
		--"skill_can_fire_wand_projectiles" = ?
	},
	qualityMods = {
		mod("Damage", "INC", 1, 0, 0, nil), --"damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Attack), 
	},
	levels = {
		[1] = { 12, 25, },
		[2] = { 15, 26.6, },
		[3] = { 19, 28.2, },
		[4] = { 23, 29.8, },
		[5] = { 27, 31.4, },
		[6] = { 31, 33, },
		[7] = { 35, 34.6, },
		[8] = { 38, 36.2, },
		[9] = { 41, 37.8, },
		[10] = { 44, 39.4, },
		[11] = { 47, 41, },
		[12] = { 50, 42.6, },
		[13] = { 53, 44.2, },
		[14] = { 56, 45.8, },
		[15] = { 59, 47.4, },
		[16] = { 62, 49, },
		[17] = { 64, 50.6, },
		[18] = { 66, 52.2, },
		[19] = { 68, 53.8, },
		[20] = { 70, 55.4, },
		[21] = { 72, 57, },
		[22] = { 74, 58.6, },
		[23] = { 76, 60.2, },
		[24] = { 78, 61.8, },
		[25] = { 80, 63.4, },
		[26] = { 82, 65, },
		[27] = { 84, 66.6, },
		[28] = { 86, 68.2, },
		[29] = { 88, 69.8, },
		[30] = { 90, 71.4, },
	},
}
skills["Purity"] = {
	name = "Purity of Elements",
	gemTags = {
		aura = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		aura = true,
		area = true,
	},
	skillTypes = { [2] = true, [11] = true, [5] = true, [15] = true, [27] = true, [16] = true, [18] = true, [44] = true, },
	baseMods = {
		skill("castTime", 1.2), 
		skill("manaCost", 35), 
		skill("cooldown", 1.2), 
		mod("FireResistMax", "BASE", 0, 0, 0, { type = "GlobalEffect", effectType = "Aura" }), --"base_maximum_fire_damage_resistance_%" = 0
		mod("ColdResistMax", "BASE", 0, 0, 0, { type = "GlobalEffect", effectType = "Aura" }), --"base_maximum_cold_damage_resistance_%" = 0
		mod("LightningResistMax", "BASE", 0, 0, 0, { type = "GlobalEffect", effectType = "Aura" }), --"base_maximum_lightning_damage_resistance_%" = 0
		--"base_deal_no_damage" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 1), --"base_skill_area_of_effect_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("ElementalResist", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Aura" }), --"base_resist_all_elements_%"
		[3] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
	},
	levels = {
		[1] = { 24, 12, 0, },
		[2] = { 27, 13, 3, },
		[3] = { 30, 14, 6, },
		[4] = { 33, 15, 9, },
		[5] = { 36, 15, 12, },
		[6] = { 39, 16, 15, },
		[7] = { 42, 17, 18, },
		[8] = { 45, 18, 21, },
		[9] = { 48, 19, 23, },
		[10] = { 50, 20, 25, },
		[11] = { 52, 20, 27, },
		[12] = { 54, 21, 29, },
		[13] = { 56, 22, 31, },
		[14] = { 58, 23, 33, },
		[15] = { 60, 24, 35, },
		[16] = { 62, 25, 36, },
		[17] = { 64, 25, 37, },
		[18] = { 66, 26, 38, },
		[19] = { 68, 27, 39, },
		[20] = { 70, 27, 40, },
		[21] = { 72, 28, 41, },
		[22] = { 74, 29, 42, },
		[23] = { 76, 29, 43, },
		[24] = { 78, 30, 44, },
		[25] = { 80, 31, 45, },
		[26] = { 82, 31, 46, },
		[27] = { 84, 32, 47, },
		[28] = { 86, 33, 48, },
		[29] = { 88, 33, 49, },
		[30] = { 90, 34, 50, },
	},
}
skills["LightningResistAura"] = {
	name = "Purity of Lightning",
	gemTags = {
		aura = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		lightning = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		aura = true,
		area = true,
	},
	skillTypes = { [2] = true, [11] = true, [5] = true, [15] = true, [27] = true, [16] = true, [18] = true, [44] = true, [35] = true, },
	baseMods = {
		skill("castTime", 1.2), 
		skill("manaCost", 35), 
		skill("cooldown", 1.2), 
		--"base_deal_no_damage" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 1), --"base_skill_area_of_effect_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("LightningResist", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Aura" }), --"base_lightning_damage_resistance_%"
		[3] = mod("LightningResistMax", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Aura" }), --"base_maximum_lightning_damage_resistance_%"
		[4] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
	},
	levels = {
		[1] = { 24, 22, 0, 0, },
		[2] = { 27, 23, 0, 3, },
		[3] = { 30, 24, 0, 6, },
		[4] = { 33, 25, 0, 9, },
		[5] = { 36, 26, 1, 12, },
		[6] = { 39, 27, 1, 15, },
		[7] = { 42, 28, 1, 18, },
		[8] = { 45, 29, 1, 21, },
		[9] = { 48, 30, 1, 23, },
		[10] = { 50, 31, 1, 25, },
		[11] = { 52, 32, 2, 27, },
		[12] = { 54, 33, 2, 29, },
		[13] = { 56, 34, 2, 31, },
		[14] = { 58, 35, 2, 33, },
		[15] = { 60, 36, 2, 35, },
		[16] = { 62, 37, 2, 36, },
		[17] = { 64, 38, 3, 37, },
		[18] = { 66, 39, 3, 38, },
		[19] = { 68, 40, 3, 39, },
		[20] = { 70, 41, 4, 40, },
		[21] = { 72, 42, 4, 41, },
		[22] = { 74, 43, 4, 42, },
		[23] = { 76, 44, 5, 43, },
		[24] = { 78, 45, 5, 44, },
		[25] = { 80, 46, 5, 45, },
		[26] = { 82, 47, 5, 46, },
		[27] = { 84, 48, 5, 47, },
		[28] = { 86, 49, 5, 48, },
		[29] = { 88, 50, 5, 49, },
		[30] = { 90, 51, 5, 50, },
	},
}
skills["RaiseSpectre"] = {
	name = "Raise Spectre",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		minion = true,
	},
	minionList = {
	},
	color = 3,
	baseFlags = {
		spell = true,
		minion = true,
		spectre = true,
	},
	skillTypes = { [2] = true, [9] = true, [21] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [49] = true, },
	minionSkillTypes = { [1] = true, [24] = true, [25] = true, [28] = true, [2] = true, [10] = true, [11] = true, [3] = true, [23] = true, [12] = true, [30] = true, [37] = true, [41] = true, [40] = true, [58] = true, [32] = true, [48] = true, },
	baseMods = {
		skill("castTime", 0.85), 
		mod("ActiveSpectreLimit", "BASE", 1), --"base_number_of_spectres_allowed" = 1
		mod("MinionModifier", "LIST", { mod = mod("MovementSpeed", "MORE", 55) }), --"active_skill_minion_movement_velocity_+%_final" = 55
		--"movement_velocity_cap" = -89
		--"damage_taken_+%_from_arrow_traps_final" = -90
		mod("MinionModifier", "LIST", { mod = mod("ElementalResist", "BASE", 30) }), --"minion_elemental_resistance_%" = 30
	},
	qualityMods = {
		mod("MinionModifier", "LIST", { mod = mod("MovementSpeed", "INC", 1) }), --"minion_movement_speed_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = mod("MinionModifier", "LIST", { mod = mod("Damage", "MORE", nil) }), --"active_skill_minion_damage_+%_final"
		[4] = mod("MinionModifier", "LIST", { mod = mod("Life", "MORE", nil) }), --"active_skill_minion_life_+%_final"
		[5] = mod("MinionModifier", "LIST", { mod = mod("EnergyShield", "MORE", nil) }), --"active_skill_minion_energy_shield_+%_final"
	},
	levels = {
		[1] = { 28, 21, -30, -20, -20, },
		[2] = { 31, 23, -25, -19, -19, },
		[3] = { 34, 24, -21, -18, -18, },
		[4] = { 37, 26, -17, -17, -17, },
		[5] = { 40, 27, -14, -16, -16, },
		[6] = { 42, 28, -11, -15, -15, },
		[7] = { 44, 29, -8, -14, -14, },
		[8] = { 46, 30, -6, -13, -13, },
		[9] = { 48, 31, -4, -12, -12, },
		[10] = { 50, 32, -2, -11, -11, },
		[11] = { 52, 33, 0, -10, -10, },
		[12] = { 54, 34, 1, -9, -9, },
		[13] = { 56, 35, 2, -8, -8, },
		[14] = { 58, 36, 3, -7, -7, },
		[15] = { 60, 37, 4, -6, -6, },
		[16] = { 62, 38, 5, -5, -5, },
		[17] = { 64, 39, 6, -4, -4, },
		[18] = { 66, 40, 7, -3, -3, },
		[19] = { 68, 41, 8, -2, -2, },
		[20] = { 70, 42, 10, 0, 0, },
		[21] = { 72, 43, 12, 2, 2, },
		[22] = { 74, 44, 14, 4, 4, },
		[23] = { 76, 44, 16, 6, 6, },
		[24] = { 78, 45, 18, 8, 8, },
		[25] = { 80, 46, 20, 10, 10, },
		[26] = { 82, 47, 22, 12, 12, },
		[27] = { 84, 48, 24, 14, 14, },
		[28] = { 86, 49, 26, 16, 16, },
		[29] = { 88, 50, 28, 18, 18, },
		[30] = { 90, 51, 30, 20, 20, },
	},
}
skills["RaiseZombie"] = {
	name = "Raise Zombie",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		minion = true,
	},
	minionList = {
		"RaisedZombie",
	},
	color = 3,
	baseFlags = {
		spell = true,
		minion = true,
	},
	skillTypes = { [2] = true, [9] = true, [21] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [49] = true, },
	minionSkillTypes = { [1] = true, [24] = true, [25] = true, [28] = true, [11] = true, },
	baseMods = {
		skill("castTime", 0.85), 
		mod("ActiveZombieLimit", "BASE", 3), --"base_number_of_zombies_allowed" = 3
		mod("MinionModifier", "LIST", { mod = mod("Damage", "MORE", 0) }), --"active_skill_minion_damage_+%_final" = 0
		--"display_minion_monster_type" = 1
	},
	qualityMods = {
		mod("MinionModifier", "LIST", { mod = mod("Life", "INC", 1) }), --"minion_maximum_life_+%" = 1
		mod("MinionModifier", "LIST", { mod = mod("MovementSpeed", "INC", 1) }), --"minion_movement_speed_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("minionLevel", nil), --"display_minion_monster_level"
	},
	levels = {
		[1] = { 1, 10, 2, },
		[2] = { 2, 11, 3, },
		[3] = { 4, 12, 5, },
		[4] = { 7, 13, 8, },
		[5] = { 11, 14, 12, },
		[6] = { 16, 16, 16, },
		[7] = { 20, 18, 20, },
		[8] = { 24, 21, 24, },
		[9] = { 28, 24, 28, },
		[10] = { 32, 26, 32, },
		[11] = { 36, 28, 36, },
		[12] = { 40, 30, 40, },
		[13] = { 44, 31, 44, },
		[14] = { 48, 32, 48, },
		[15] = { 52, 33, 52, },
		[16] = { 56, 34, 56, },
		[17] = { 60, 35, 60, },
		[18] = { 64, 36, 64, },
		[19] = { 67, 37, 67, },
		[20] = { 70, 38, 70, },
		[21] = { 72, 38, 72, },
		[22] = { 74, 38, 74, },
		[23] = { 76, 38, 76, },
		[24] = { 78, 39, 78, },
		[25] = { 80, 40, 80, },
		[26] = { 82, 40, 82, },
		[27] = { 84, 41, 84, },
		[28] = { 86, 42, 86, },
		[29] = { 88, 42, 88, },
		[30] = { 90, 42, 90, },
	},
}
skills["RighteousFire"] = {
	name = "Righteous Fire",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		fire = true,
	},
	setupFunc = function(actor, output)
		if actor.mainSkill.skillFlags.totem then
			actor.mainSkill.skillData.FireDot = output.TotemLife * 0.5
		else
			actor.mainSkill.skillData.FireDot = (output.Life + output.EnergyShield) * 0.5
		end
	end,
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		fire = true,
	},
	skillTypes = { [2] = true, [5] = true, [11] = true, [18] = true, [29] = true, [36] = true, [40] = true, [33] = true, },
	baseMods = {
		skill("castTime", 1), 
		--"base_righteous_fire_%_of_max_life_to_deal_to_nearby_per_minute" = 3000
		--"base_nonlethal_fire_damage_%_of_maximum_life_taken_per_minute" = 5400
		--"base_righteous_fire_%_of_max_energy_shield_to_deal_to_nearby_per_minute" = 3000
		--"base_nonlethal_fire_damage_%_of_maximum_energy_shield_taken_per_minute" = 4200
	},
	qualityMods = {
		mod("Damage", "INC", 1, ModFlag.Spell, 0, { type = "GlobalEffect", effectType = "Buff" }), --"spell_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Spell, 0, { type = "GlobalEffect", effectType = "Buff" }), --"righteous_fire_spell_damage_+%_final"
		--[3] = "active_skill_base_radius_+"
	},
	levels = {
		[1] = { 16, 40, 0, },
		[2] = { 20, 41, 0, },
		[3] = { 24, 42, 0, },
		[4] = { 28, 43, 1, },
		[5] = { 31, 44, 1, },
		[6] = { 34, 45, 1, },
		[7] = { 37, 46, 1, },
		[8] = { 40, 47, 2, },
		[9] = { 43, 48, 2, },
		[10] = { 46, 49, 2, },
		[11] = { 49, 50, 2, },
		[12] = { 52, 51, 3, },
		[13] = { 55, 52, 3, },
		[14] = { 58, 53, 3, },
		[15] = { 60, 54, 3, },
		[16] = { 62, 55, 4, },
		[17] = { 64, 56, 4, },
		[18] = { 66, 57, 4, },
		[19] = { 68, 58, 4, },
		[20] = { 70, 59, 5, },
		[21] = { 72, 60, 5, },
		[22] = { 74, 61, 5, },
		[23] = { 76, 62, 5, },
		[24] = { 78, 63, 6, },
		[25] = { 80, 64, 6, },
		[26] = { 82, 65, 6, },
		[27] = { 84, 66, 6, },
		[28] = { 86, 67, 7, },
		[29] = { 88, 68, 7, },
		[30] = { 90, 69, 7, },
	},
}
skills["VaalRighteousFire"] = {
	name = "Vaal Righteous Fire",
	gemTags = {
		intelligence = true,
		active_skill = true,
		vaal = true,
		spell = true,
		area = true,
		fire = true,
	},
	setupFunc = function(actor, output)
		actor.mainSkill.skillData.FireMin = output.EnergyShield + output.Life - 1
		actor.mainSkill.skillData.FireMax = output.EnergyShield + output.Life - 1
	end,
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		fire = true,
		vaal = true,
	},
	skillTypes = { [2] = true, [11] = true, [10] = true, [43] = true, [33] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("critChance", 5), 
		--"damage_cannot_be_reflected" = ?
		--"is_area_damage" = ?
	},
	qualityMods = {
		mod("Damage", "INC", 1, ModFlag.Spell, 0, nil), --"spell_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("Damage", "MORE", nil, ModFlag.Hit), --"active_skill_damage_+%_final"
	},
	levels = {
		[1] = { 16, 20, },
		[2] = { 20, 21, },
		[3] = { 24, 22, },
		[4] = { 28, 23, },
		[5] = { 31, 24, },
		[6] = { 34, 25, },
		[7] = { 37, 26, },
		[8] = { 40, 27, },
		[9] = { 43, 28, },
		[10] = { 46, 29, },
		[11] = { 49, 30, },
		[12] = { 52, 31, },
		[13] = { 55, 32, },
		[14] = { 58, 33, },
		[15] = { 60, 34, },
		[16] = { 62, 35, },
		[17] = { 64, 36, },
		[18] = { 66, 37, },
		[19] = { 68, 38, },
		[20] = { 70, 39, },
		[21] = { 72, 40, },
		[22] = { 74, 41, },
		[23] = { 76, 42, },
		[24] = { 78, 43, },
		[25] = { 80, 44, },
		[26] = { 82, 45, },
		[27] = { 84, 46, },
		[28] = { 86, 47, },
		[29] = { 88, 48, },
		[30] = { 90, 49, },
	},
}
skills["FireBeam"] = {
	name = "Scorching Ray",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		fire = true,
		duration = true,
		channelling = true,
	},
	parts = {
		{
			name = "1 Stage",
		},
		{
			name = "4 Stages",
		},
		{
			name = "8 Stages",
		},
	},
	color = 3,
	baseFlags = {
		spell = true,
		duration = true,
		fire = true,
	},
	skillTypes = { [2] = true, [18] = true, [40] = true, [33] = true, [29] = true, [12] = true, [58] = true, [59] = true, [52] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("duration", 1.5), --"base_skill_effect_duration" = 1500
		--"fire_beam_additional_stack_damage_+%_final" = -40
		--"display_max_fire_beam_stacks" = 8
		mod("FireResist", "BASE", -3, 0, 0, { type = "GlobalEffect", effectType = "Debuff" }), --"fire_beam_enemy_fire_resistance_%_per_stack" = -3
		--"fire_beam_enemy_fire_resistance_%_maximum" = -24
		skill("dotIsSpell", true), --"spell_damage_modifiers_apply_to_damage_over_time" = ?
		skill("stackCount", 4, { type = "SkillPart", skillPart = 2 }), 
		skill("stackCount", 8, { type = "SkillPart", skillPart = 3 }), 
		mod("Damage", "MORE", 180, 0, 0, { type = "SkillPart", skillPart = 2 }), 
		mod("Damage", "MORE", 420, 0, 0, { type = "SkillPart", skillPart = 3 }), 
	},
	qualityMods = {
		--"fire_beam_length_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("FireDot", nil), --"base_fire_damage_to_deal_per_minute"
	},
	levels = {
		[1] = { 12, 4, 9.6833333333333, },
		[2] = { 15, 4, 12.65, },
		[3] = { 19, 4, 17.683333333333, },
		[4] = { 23, 5, 24.233333333333, },
		[5] = { 27, 5, 32.716666666667, },
		[6] = { 31, 5, 43.666666666667, },
		[7] = { 35, 6, 57.7, },
		[8] = { 38, 6, 70.75, },
		[9] = { 41, 6, 86.4, },
		[10] = { 44, 7, 105.13333333333, },
		[11] = { 47, 7, 127.55, },
		[12] = { 50, 7, 154.3, },
		[13] = { 53, 8, 186.2, },
		[14] = { 56, 8, 224.16666666667, },
		[15] = { 59, 8, 269.33333333333, },
		[16] = { 62, 9, 322.96666666667, },
		[17] = { 64, 9, 364.18333333333, },
		[18] = { 66, 9, 410.36666666667, },
		[19] = { 68, 10, 462.06666666667, },
		[20] = { 70, 10, 519.93333333333, },
		[21] = { 72, 10, 584.7, },
		[22] = { 74, 11, 657.13333333333, },
		[23] = { 76, 11, 738.1, },
		[24] = { 78, 11, 828.61666666667, },
		[25] = { 80, 12, 929.73333333333, },
		[26] = { 82, 12, 1042.6833333333, },
		[27] = { 84, 12, 1168.8, },
		[28] = { 86, 13, 1309.5833333333, },
		[29] = { 88, 13, 1466.6666666667, },
		[30] = { 90, 13, 1641.9166666667, },
	},
}
skills["ShockNova"] = {
	name = "Shock Nova",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		lightning = true,
	},
	parts = {
		{
			name = "Ring",
		},
		{
			name = "Nova",
		},
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [45] = true, [35] = true, [43] = true, },
	baseMods = {
		skill("castTime", 0.75), 
		skill("damageEffectiveness", 0.6), 
		skill("critChance", 6), 
		mod("Damage", "MORE", -80, 0, 0, { type = "SkillPart", skillPart = 1 }), --"newshocknova_first_ring_damage_+%_final" = -80
		mod("EnemyShockChance", "BASE", 20), --"base_chance_to_shock_%" = 20
		--"is_area_damage" = ?
	},
	qualityMods = {
		mod("EnemyShockDuration", "INC", 2), --"shock_duration_+%" = 2
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[4] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
	},
	levels = {
		[1] = { 28, 13, 26, 79, },
		[2] = { 31, 14, 32, 95, },
		[3] = { 34, 15, 38, 115, },
		[4] = { 37, 16, 46, 137, },
		[5] = { 40, 17, 55, 164, },
		[6] = { 42, 18, 61, 184, },
		[7] = { 44, 18, 69, 206, },
		[8] = { 46, 19, 77, 231, },
		[9] = { 48, 19, 86, 258, },
		[10] = { 50, 20, 96, 288, },
		[11] = { 52, 20, 107, 321, },
		[12] = { 54, 21, 119, 358, },
		[13] = { 56, 22, 133, 399, },
		[14] = { 58, 22, 148, 443, },
		[15] = { 60, 23, 164, 493, },
		[16] = { 62, 23, 182, 547, },
		[17] = { 64, 24, 202, 607, },
		[18] = { 66, 25, 224, 673, },
		[19] = { 68, 25, 248, 745, },
		[20] = { 70, 26, 275, 825, },
		[21] = { 72, 26, 304, 913, },
		[22] = { 74, 27, 336, 1009, },
		[23] = { 76, 28, 372, 1115, },
		[24] = { 78, 28, 411, 1232, },
		[25] = { 80, 29, 453, 1360, },
		[26] = { 82, 29, 500, 1501, },
		[27] = { 84, 30, 552, 1655, },
		[28] = { 86, 31, 608, 1824, },
		[29] = { 88, 31, 670, 2010, },
		[30] = { 90, 32, 738, 2214, },
	},
}
skills["Spark"] = {
	name = "Spark",
	gemTags = {
		projectile = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		duration = true,
		lightning = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		duration = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [3] = true, [10] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [45] = true, [35] = true, },
	baseMods = {
		skill("castTime", 0.65), 
		skill("damageEffectiveness", 0.7), 
		skill("critChance", 6), 
		skill("duration", 1.5), --"base_skill_effect_duration" = 1500
		--"base_is_projectile" = ?
	},
	qualityMods = {
		mod("ProjectileSpeed", "INC", 1), --"base_projectile_speed_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[4] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
		[5] = mod("ProjectileCount", "BASE", nil), --"number_of_additional_projectiles"
	},
	levels = {
		[1] = { 1, 5, 1, 20, 4, },
		[2] = { 2, 6, 1, 22, 4, },
		[3] = { 4, 7, 1, 27, 4, },
		[4] = { 7, 8, 2, 36, 4, },
		[5] = { 11, 9, 3, 49, 4, },
		[6] = { 16, 10, 4, 69, 4, },
		[7] = { 20, 11, 5, 88, 4, },
		[8] = { 24, 12, 6, 110, 4, },
		[9] = { 28, 14, 7, 136, 5, },
		[10] = { 32, 16, 9, 167, 5, },
		[11] = { 36, 17, 11, 202, 5, },
		[12] = { 40, 18, 13, 243, 5, },
		[13] = { 44, 19, 15, 291, 5, },
		[14] = { 48, 20, 18, 345, 5, },
		[15] = { 52, 21, 22, 409, 5, },
		[16] = { 56, 22, 25, 481, 5, },
		[17] = { 60, 22, 30, 565, 6, },
		[18] = { 64, 22, 35, 661, 6, },
		[19] = { 67, 22, 39, 742, 6, },
		[20] = { 70, 23, 44, 832, 6, },
		[21] = { 72, 23, 47, 897, 6, },
		[22] = { 74, 24, 51, 967, 6, },
		[23] = { 76, 24, 55, 1041, 6, },
		[24] = { 78, 25, 59, 1120, 6, },
		[25] = { 80, 25, 63, 1205, 7, },
		[26] = { 82, 26, 68, 1296, 7, },
		[27] = { 84, 26, 73, 1393, 7, },
		[28] = { 86, 26, 79, 1496, 7, },
		[29] = { 88, 26, 85, 1607, 7, },
		[30] = { 90, 27, 91, 1725, 7, },
	},
}
skills["VaalSparkSpiralNova"] = {
	name = "Vaal Spark",
	gemTags = {
		projectile = true,
		intelligence = true,
		active_skill = true,
		vaal = true,
		spell = true,
		duration = true,
		lightning = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		projectile = true,
		duration = true,
		lightning = true,
		vaal = true,
	},
	skillTypes = { [2] = true, [3] = true, [10] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [43] = true, [35] = true, },
	baseMods = {
		skill("castTime", 0.65), 
		skill("damageEffectiveness", 0.4), 
		skill("critChance", 5), 
		skill("duration", 2), --"base_skill_effect_duration" = 2000
		--"base_number_of_projectiles_in_spiral_nova" = 100
		--"projectile_spiral_nova_time_ms" = 3000
		--"projectile_spiral_nova_angle" = 0
		--"base_is_projectile" = ?
	},
	qualityMods = {
		mod("ProjectileSpeed", "INC", 1), --"base_projectile_speed_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[3] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
	},
	levels = {
		[1] = { 1, 1, 11, },
		[2] = { 2, 1, 12, },
		[3] = { 4, 1, 15, },
		[4] = { 7, 1, 19, },
		[5] = { 11, 1, 27, },
		[6] = { 16, 2, 37, },
		[7] = { 20, 3, 48, },
		[8] = { 24, 3, 60, },
		[9] = { 28, 4, 74, },
		[10] = { 32, 5, 91, },
		[11] = { 36, 6, 110, },
		[12] = { 40, 7, 133, },
		[13] = { 44, 8, 159, },
		[14] = { 48, 10, 188, },
		[15] = { 52, 12, 223, },
		[16] = { 56, 14, 263, },
		[17] = { 60, 16, 308, },
		[18] = { 64, 19, 361, },
		[19] = { 67, 21, 405, },
		[20] = { 70, 24, 454, },
		[21] = { 72, 26, 489, },
		[22] = { 74, 28, 527, },
		[23] = { 76, 30, 568, },
		[24] = { 78, 32, 611, },
		[25] = { 80, 35, 658, },
		[26] = { 82, 37, 707, },
		[27] = { 84, 40, 760, },
		[28] = { 86, 43, 816, },
		[29] = { 88, 46, 877, },
		[30] = { 90, 50, 941, },
	},
}
skills["SpiritOffering"] = {
	name = "Spirit Offering",
	gemTags = {
		minion = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		duration = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		duration = true,
	},
	skillTypes = { [2] = true, [5] = true, [12] = true, [36] = true, [9] = true, [49] = true, [17] = true, [19] = true, [18] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("duration", 3), --"base_skill_effect_duration" = 3000
		--"offering_skill_effect_duration_per_corpse" = 500
		--"spirit_offering_life_%_added_as_base_maximum_energy_shield_per_corpse_consumed" = 2
		--"base_deal_no_damage" = ?
		skill("offering", true), 
	},
	qualityMods = {
		mod("Duration", "INC", 0.5), --"skill_effect_duration_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = mod("PhysicalDamageGainAsChaos", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"physical_damage_%_to_add_as_chaos"
		[4] = mod("ElementalResist", "BASE", nil, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"base_resist_all_elements_%"
	},
	levels = {
		[1] = { 12, 16, 20, 20, },
		[2] = { 15, 17, 20, 21, },
		[3] = { 19, 18, 21, 21, },
		[4] = { 23, 19, 21, 22, },
		[5] = { 27, 20, 22, 22, },
		[6] = { 31, 21, 22, 23, },
		[7] = { 35, 22, 23, 23, },
		[8] = { 38, 23, 23, 24, },
		[9] = { 41, 24, 24, 24, },
		[10] = { 44, 25, 24, 25, },
		[11] = { 47, 26, 25, 25, },
		[12] = { 50, 27, 25, 26, },
		[13] = { 53, 28, 26, 26, },
		[14] = { 56, 29, 26, 27, },
		[15] = { 59, 29, 27, 27, },
		[16] = { 62, 30, 27, 28, },
		[17] = { 64, 30, 28, 28, },
		[18] = { 66, 31, 28, 29, },
		[19] = { 68, 32, 29, 29, },
		[20] = { 70, 33, 29, 30, },
		[21] = { 72, 34, 30, 30, },
		[22] = { 74, 34, 30, 31, },
		[23] = { 76, 35, 31, 31, },
		[24] = { 78, 36, 31, 32, },
		[25] = { 80, 37, 32, 32, },
		[26] = { 82, 38, 32, 33, },
		[27] = { 84, 38, 33, 33, },
		[28] = { 86, 39, 33, 34, },
		[29] = { 88, 40, 34, 34, },
		[30] = { 90, 41, 34, 35, },
	},
}
skills["StormCall"] = {
	name = "Storm Call",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
		lightning = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		duration = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [36] = true, [26] = true, [45] = true, [35] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("damageEffectiveness", 0.8), 
		skill("critChance", 6), 
		skill("duration", 1.5), --"base_skill_effect_duration" = 1500
		--"is_area_damage" = ?
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[4] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
		--[5] = "active_skill_base_radius_+"
	},
	levels = {
		[1] = { 12, 6, 13, 24, 0, },
		[2] = { 15, 7, 16, 30, 0, },
		[3] = { 19, 8, 22, 40, 1, },
		[4] = { 23, 9, 28, 53, 1, },
		[5] = { 27, 10, 37, 68, 1, },
		[6] = { 31, 11, 46, 86, 2, },
		[7] = { 35, 12, 58, 108, 2, },
		[8] = { 38, 13, 69, 128, 2, },
		[9] = { 41, 13, 81, 151, 3, },
		[10] = { 44, 14, 95, 177, 3, },
		[11] = { 47, 14, 111, 206, 3, },
		[12] = { 50, 15, 130, 241, 4, },
		[13] = { 53, 16, 151, 280, 4, },
		[14] = { 56, 16, 175, 325, 4, },
		[15] = { 59, 17, 202, 376, 5, },
		[16] = { 62, 18, 234, 434, 5, },
		[17] = { 64, 18, 257, 478, 5, },
		[18] = { 66, 19, 283, 525, 6, },
		[19] = { 68, 19, 310, 577, 6, },
		[20] = { 70, 19, 341, 633, 6, },
		[21] = { 72, 20, 374, 694, 7, },
		[22] = { 74, 21, 410, 761, 7, },
		[23] = { 76, 21, 449, 834, 7, },
		[24] = { 78, 21, 492, 914, 8, },
		[25] = { 80, 22, 538, 1000, 8, },
		[26] = { 82, 23, 589, 1094, 8, },
		[27] = { 84, 23, 644, 1196, 9, },
		[28] = { 86, 23, 704, 1308, 9, },
		[29] = { 88, 24, 769, 1429, 9, },
		[30] = { 90, 24, 840, 1560, 10, },
	},
}
skills["VaalStormCall"] = {
	name = "Vaal Storm Call",
	gemTags = {
		intelligence = true,
		active_skill = true,
		vaal = true,
		spell = true,
		area = true,
		duration = true,
		lightning = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		duration = true,
		lightning = true,
		vaal = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [43] = true, [35] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("damageEffectiveness", 0.8), 
		skill("critChance", 6), 
		skill("duration", 3), --"base_skill_effect_duration" = 3000
		--"is_area_damage" = ?
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[3] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
	},
	levels = {
		[1] = { 12, 13, 25, },
		[2] = { 15, 17, 31, },
		[3] = { 19, 22, 41, },
		[4] = { 23, 29, 53, },
		[5] = { 27, 36, 67, },
		[6] = { 31, 46, 85, },
		[7] = { 35, 57, 105, },
		[8] = { 38, 67, 124, },
		[9] = { 41, 78, 144, },
		[10] = { 44, 90, 168, },
		[11] = { 47, 105, 194, },
		[12] = { 50, 121, 225, },
		[13] = { 53, 140, 259, },
		[14] = { 56, 161, 298, },
		[15] = { 59, 184, 343, },
		[16] = { 62, 211, 393, },
		[17] = { 64, 231, 429, },
		[18] = { 66, 253, 470, },
		[19] = { 68, 276, 513, },
		[20] = { 70, 302, 560, },
		[21] = { 72, 329, 611, },
		[22] = { 74, 359, 666, },
		[23] = { 76, 391, 726, },
		[24] = { 78, 426, 791, },
		[25] = { 80, 464, 861, },
		[26] = { 82, 504, 937, },
		[27] = { 84, 549, 1019, },
		[28] = { 86, 596, 1108, },
		[29] = { 88, 648, 1204, },
		[30] = { 90, 704, 1307, },
	},
}
skills["SummonChaosGolem"] = {
	name = "Summon Chaos Golem",
	gemTags = {
		intelligence = true,
		active_skill = true,
		chaos = true,
		minion = true,
		spell = true,
		golem = true,
	},
	minionList = {
		"SummonedChaosGolem",
	},
	color = 3,
	baseFlags = {
		spell = true,
		minion = true,
		golem = true,
		chaos = true,
	},
	skillTypes = { [36] = true, [50] = true, [19] = true, [9] = true, [21] = true, [26] = true, [2] = true, [18] = true, [17] = true, [49] = true, [62] = true, },
	minionSkillTypes = { [1] = true, [24] = true, [25] = true, [12] = true, [2] = true, [10] = true, [11] = true, [28] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 6), 
		mod("ActiveGolemLimit", "BASE", 1), --"base_number_of_golems_allowed" = 1
		--"display_minion_monster_type" = 5
		flag("Condition:HaveChaosGolem", { type = "GlobalEffect", effectType = "Buff" }), 
	},
	qualityMods = {
		mod("MinionModifier", "LIST", { mod = mod("Life", "INC", 1) }), --"minion_maximum_life_+%" = 1
		mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", 1) }), --"minion_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		--[3] = "base_actor_scale_+%"
		--[4] = "chaos_golem_grants_additional_physical_damage_reduction_%"
		[5] = mod("MinionModifier", "LIST", { mod = mod("Life", "INC", nil) }), --"minion_maximum_life_+%"
		[6] = skill("minionLevel", nil), --"display_minion_monster_level"
	},
	levels = {
		[1] = { 34, 30, 0, 3, 30, 34, },
		[2] = { 36, 32, 1, 3, 32, 36, },
		[3] = { 38, 34, 1, 3, 34, 38, },
		[4] = { 40, 36, 2, 3, 36, 40, },
		[5] = { 42, 38, 2, 3, 38, 42, },
		[6] = { 44, 40, 3, 3, 40, 44, },
		[7] = { 46, 42, 3, 3, 42, 46, },
		[8] = { 48, 44, 4, 3, 44, 48, },
		[9] = { 50, 44, 4, 3, 46, 50, },
		[10] = { 52, 46, 5, 3, 48, 52, },
		[11] = { 54, 48, 5, 3, 50, 54, },
		[12] = { 56, 48, 6, 4, 52, 56, },
		[13] = { 58, 50, 6, 4, 54, 58, },
		[14] = { 60, 50, 7, 4, 56, 60, },
		[15] = { 62, 52, 7, 4, 58, 62, },
		[16] = { 64, 52, 8, 4, 60, 64, },
		[17] = { 66, 52, 8, 4, 62, 66, },
		[18] = { 68, 52, 9, 4, 64, 68, },
		[19] = { 69, 54, 9, 4, 66, 69, },
		[20] = { 70, 54, 10, 4, 68, 70, },
		[21] = { 72, 56, 10, 4, 70, 72, },
		[22] = { 74, 56, 11, 5, 72, 74, },
		[23] = { 76, 58, 11, 5, 74, 76, },
		[24] = { 78, 58, 12, 5, 76, 78, },
		[25] = { 80, 60, 12, 5, 78, 80, },
		[26] = { 82, 60, 13, 5, 80, 82, },
		[27] = { 84, 60, 13, 5, 82, 84, },
		[28] = { 86, 60, 14, 5, 84, 86, },
		[29] = { 88, 62, 14, 5, 86, 88, },
		[30] = { 90, 62, 15, 5, 88, 90, },
	},
}
skills["SummonLightningGolem"] = {
	name = "Summon Lightning Golem",
	gemTags = {
		intelligence = true,
		active_skill = true,
		lightning = true,
		minion = true,
		spell = true,
		golem = true,
	},
	minionList = {
		"SummonedLightningGolem",
	},
	color = 3,
	baseFlags = {
		spell = true,
		minion = true,
		golem = true,
		lightning = true,
	},
	skillTypes = { [36] = true, [35] = true, [19] = true, [9] = true, [21] = true, [26] = true, [2] = true, [18] = true, [17] = true, [49] = true, [45] = true, [62] = true, },
	minionSkillTypes = { [10] = true, [11] = true, [44] = true, [3] = true, [12] = true, [2] = true, [5] = true, },
	baseMods = {
		skill("castTime", 1), 
		skill("cooldown", 6), 
		mod("ActiveGolemLimit", "BASE", 1), --"base_number_of_golems_allowed" = 1
		--"display_minion_monster_type" = 11
		flag("Condition:HaveLightningGolem", { type = "GlobalEffect", effectType = "Buff" }), 
	},
	qualityMods = {
		mod("MinionModifier", "LIST", { mod = mod("Life", "INC", 1) }), --"minion_maximum_life_+%" = 1
		mod("MinionModifier", "LIST", { mod = mod("Damage", "INC", 1) }), --"minion_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		--[3] = "base_actor_scale_+%"
		[4] = mod("Speed", "INC", nil, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"lightning_golem_grants_attack_and_cast_speed_+%"
		[5] = mod("MinionModifier", "LIST", { mod = mod("Life", "INC", nil) }), --"minion_maximum_life_+%"
		[6] = skill("minionLevel", nil), --"display_minion_monster_level"
	},
	levels = {
		[1] = { 34, 30, 0, 6, 30, 34, },
		[2] = { 36, 32, 1, 6, 32, 36, },
		[3] = { 38, 34, 2, 6, 34, 38, },
		[4] = { 40, 36, 3, 6, 36, 40, },
		[5] = { 42, 38, 4, 6, 38, 42, },
		[6] = { 44, 40, 5, 7, 40, 44, },
		[7] = { 46, 42, 6, 7, 42, 46, },
		[8] = { 48, 44, 7, 7, 44, 48, },
		[9] = { 50, 44, 8, 7, 46, 50, },
		[10] = { 52, 46, 9, 7, 48, 52, },
		[11] = { 54, 48, 10, 8, 50, 54, },
		[12] = { 56, 48, 11, 8, 52, 56, },
		[13] = { 58, 50, 12, 8, 54, 58, },
		[14] = { 60, 50, 13, 8, 56, 60, },
		[15] = { 62, 52, 14, 8, 58, 62, },
		[16] = { 64, 52, 15, 9, 60, 64, },
		[17] = { 66, 52, 16, 9, 62, 66, },
		[18] = { 68, 52, 17, 9, 64, 68, },
		[19] = { 69, 54, 18, 9, 66, 69, },
		[20] = { 70, 54, 19, 9, 68, 70, },
		[21] = { 72, 56, 20, 10, 70, 72, },
		[22] = { 74, 56, 21, 10, 72, 74, },
		[23] = { 76, 58, 22, 10, 74, 76, },
		[24] = { 78, 58, 23, 10, 76, 78, },
		[25] = { 80, 60, 24, 10, 78, 80, },
		[26] = { 82, 60, 25, 11, 80, 82, },
		[27] = { 84, 60, 26, 11, 82, 84, },
		[28] = { 86, 60, 27, 11, 84, 86, },
		[29] = { 88, 62, 28, 11, 86, 88, },
		[30] = { 90, 62, 29, 11, 88, 90, },
	},
}
skills["SummonRagingSpirit"] = {
	name = "Summon Raging Spirit",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		minion = true,
		duration = true,
		fire = true,
	},
	minionList = {
		"SummonedRagingSpirit",
	},
	color = 3,
	baseFlags = {
		spell = true,
		minion = true,
		duration = true,
		fire = true,
	},
	skillTypes = { [2] = true, [9] = true, [12] = true, [21] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [49] = true, [33] = true, },
	minionSkillTypes = { [1] = true, [24] = true, [25] = true, [28] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("duration", 5), --"base_skill_effect_duration" = 5000
		mod("ActiveRagingSpiritLimit", "BASE", 20), --"base_number_of_raging_spirits_allowed" = 20
		skill("minionDamageEffectiveness", -30), --"active_skill_minion_added_damage_+%_final" = -30
	},
	qualityMods = {
		mod("MinionModifier", "LIST", { mod = mod("MovementSpeed", "INC", 1) }), --"minion_movement_speed_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
	},
	levels = {
		[1] = { 4, 4, },
		[2] = { 6, 4, },
		[3] = { 9, 5, },
		[4] = { 12, 5, },
		[5] = { 16, 6, },
		[6] = { 20, 6, },
		[7] = { 24, 6, },
		[8] = { 28, 7, },
		[9] = { 32, 7, },
		[10] = { 36, 8, },
		[11] = { 40, 8, },
		[12] = { 44, 9, },
		[13] = { 48, 9, },
		[14] = { 52, 10, },
		[15] = { 55, 10, },
		[16] = { 58, 10, },
		[17] = { 61, 11, },
		[18] = { 64, 11, },
		[19] = { 67, 11, },
		[20] = { 70, 12, },
		[21] = { 72, 12, },
		[22] = { 74, 13, },
		[23] = { 76, 13, },
		[24] = { 78, 13, },
		[25] = { 80, 14, },
		[26] = { 82, 14, },
		[27] = { 84, 14, },
		[28] = { 86, 15, },
		[29] = { 88, 15, },
		[30] = { 90, 15, },
	},
}
skills["SummonSkeletons"] = {
	name = "Summon Skeletons",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		minion = true,
		duration = true,
	},
	minionList = {
		"RaisedSkeleton",
		"RaisedSkeletonCaster",
	},
	color = 3,
	baseFlags = {
		spell = true,
		minion = true,
		duration = true,
	},
	skillTypes = { [2] = true, [9] = true, [12] = true, [21] = true, [17] = true, [18] = true, [19] = true, [26] = true, [36] = true, [49] = true, },
	minionSkillTypes = { [1] = true, [24] = true, [25] = true, [54] = true, [28] = true, },
	baseMods = {
		skill("castTime", 0.8), 
		--"number_of_melee_skeletons_to_summon" = 2
		skill("duration", 20), --"base_skill_effect_duration" = 20000
		skill("minionDamageEffectiveness", -50), --"active_skill_minion_added_damage_+%_final" = -50
		--"display_minion_monster_type" = 2
	},
	qualityMods = {
		mod("Damage", "INC", 1, 0, 0, nil), --"damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = mod("ActiveSkeletonLimit", "BASE", nil), --"base_number_of_skeletons_allowed"
		[4] = skill("minionLevel", nil), --"display_minion_monster_level"
	},
	levels = {
		[1] = { 10, 6, 4, 10, },
		[2] = { 13, 7, 4, 13, },
		[3] = { 17, 8, 4, 16, },
		[4] = { 21, 9, 4, 19, },
		[5] = { 25, 10, 4, 22, },
		[6] = { 29, 11, 4, 25, },
		[7] = { 33, 12, 4, 28, },
		[8] = { 36, 12, 4, 32, },
		[9] = { 39, 13, 5, 36, },
		[10] = { 42, 14, 5, 40, },
		[11] = { 45, 15, 5, 44, },
		[12] = { 48, 15, 5, 47, },
		[13] = { 51, 16, 5, 50, },
		[14] = { 54, 17, 5, 53, },
		[15] = { 57, 17, 5, 56, },
		[16] = { 60, 18, 6, 59, },
		[17] = { 63, 19, 6, 62, },
		[18] = { 66, 20, 6, 64, },
		[19] = { 68, 20, 6, 66, },
		[20] = { 70, 21, 6, 68, },
		[21] = { 72, 21, 6, 70, },
		[22] = { 74, 22, 6, 72, },
		[23] = { 76, 22, 6, 74, },
		[24] = { 78, 22, 6, 76, },
		[25] = { 80, 23, 6, 78, },
		[26] = { 82, 23, 6, 80, },
		[27] = { 84, 24, 6, 82, },
		[28] = { 86, 24, 6, 84, },
		[29] = { 88, 25, 6, 86, },
		[30] = { 90, 25, 6, 88, },
	},
}
skills["VaalSummonSkeletons"] = {
	name = "Vaal Summon Skeletons",
	gemTags = {
		intelligence = true,
		active_skill = true,
		vaal = true,
		spell = true,
		minion = true,
		duration = true,
	},
	minionList = {
		"RaisedSkeleton",
		"RaisedSkeletonCaster",
		"RaisedSkeletonArcher",
	},
	color = 3,
	baseFlags = {
		spell = true,
		minion = true,
		duration = true,
	},
	skillTypes = { [2] = true, [9] = true, [12] = true, [21] = true, [17] = true, [18] = true, [19] = true, [26] = true, [43] = true, },
	minionSkillTypes = { [1] = true, [24] = true, [25] = true, [3] = true, [48] = true, [28] = true, [2] = true, [11] = true, },
	baseMods = {
		skill("castTime", 0.8), 
		--"number_of_leader_skeletons_to_summon" = 1
		skill("duration", 20), --"base_skill_effect_duration" = 20000
		--"display_minion_monster_type" = 2
	},
	qualityMods = {
		mod("Damage", "INC", 1, 0, 0, nil), --"damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		--[2] = "number_of_melee_skeletons_to_summon"
		--[3] = "number_of_archer_skeletons_to_summon"
		--[4] = "number_of_mage_skeletons_to_summon"
		[5] = mod("ActiveSkeletonLimit", "BASE", nil), --"base_number_of_skeletons_allowed"
		[6] = skill("minionLevel", nil), --"display_minion_monster_level"
	},
	levels = {
		[1] = { 10, 14, 2, 0, 17, 10, },
		[2] = { 13, 15, 2, 0, 18, 13, },
		[3] = { 17, 15, 3, 0, 19, 16, },
		[4] = { 21, 16, 3, 0, 20, 19, },
		[5] = { 25, 16, 4, 0, 21, 22, },
		[6] = { 29, 17, 4, 0, 22, 25, },
		[7] = { 33, 17, 5, 0, 23, 28, },
		[8] = { 36, 18, 5, 0, 24, 32, },
		[9] = { 39, 18, 5, 1, 25, 36, },
		[10] = { 42, 18, 6, 1, 26, 40, },
		[11] = { 45, 18, 6, 2, 27, 44, },
		[12] = { 48, 19, 6, 2, 28, 47, },
		[13] = { 51, 19, 6, 3, 29, 50, },
		[14] = { 54, 20, 6, 3, 30, 53, },
		[15] = { 57, 20, 7, 3, 31, 56, },
		[16] = { 60, 20, 7, 4, 32, 59, },
		[17] = { 63, 20, 8, 4, 33, 62, },
		[18] = { 66, 21, 8, 4, 34, 64, },
		[19] = { 68, 21, 8, 5, 35, 66, },
		[20] = { 70, 21, 9, 5, 36, 68, },
		[21] = { 72, 22, 9, 5, 37, 70, },
		[22] = { 74, 22, 9, 6, 38, 72, },
		[23] = { 76, 22, 10, 6, 39, 74, },
		[24] = { 78, 23, 10, 6, 40, 76, },
		[25] = { 80, 23, 10, 7, 41, 78, },
		[26] = { 82, 23, 11, 7, 42, 80, },
		[27] = { 84, 24, 11, 7, 43, 82, },
		[28] = { 86, 24, 11, 8, 44, 84, },
		[29] = { 88, 25, 11, 8, 45, 86, },
		[30] = { 90, 25, 12, 8, 46, 88, },
	},
}
skills["TempestShield"] = {
	name = "Tempest Shield",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		lightning = true,
		chaining = true,
		duration = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		duration = true,
		chaining = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [10] = true, [13] = true, [27] = true, [35] = true, [23] = true, [45] = true, [36] = true, [12] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		skill("damageEffectiveness", 0.6), 
		skill("critChance", 6), 
		mod("BlockChance", "BASE", 3, 0, 0, { type = "GlobalEffect", effectType = "Buff" }), --"shield_block_%" = 3
		--"skill_override_pvp_scaling_time_ms" = 700
		mod("ChainCount", "BASE", 1), --"number_of_additional_projectiles_in_chain" = 1
		skill("duration", 12), --"base_skill_effect_duration" = 12000
		--"skill_can_add_multiple_charges_per_action" = ?
		skill("showAverage", true), --"base_skill_show_average_damage_instead_of_dps" = ?
	},
	qualityMods = {
		mod("LightningDamage", "INC", 1), --"lightning_damage_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("LightningMin", nil), --"spell_minimum_base_lightning_damage"
		[4] = skill("LightningMax", nil), --"spell_maximum_base_lightning_damage"
	},
	levels = {
		[1] = { 16, 17, 24, 36, },
		[2] = { 20, 17, 31, 46, },
		[3] = { 24, 17, 39, 58, },
		[4] = { 28, 18, 48, 72, },
		[5] = { 31, 18, 55, 83, },
		[6] = { 34, 18, 64, 96, },
		[7] = { 37, 18, 74, 111, },
		[8] = { 40, 19, 85, 127, },
		[9] = { 43, 19, 97, 145, },
		[10] = { 46, 19, 110, 165, },
		[11] = { 49, 20, 125, 187, },
		[12] = { 52, 20, 141, 212, },
		[13] = { 55, 20, 159, 239, },
		[14] = { 58, 20, 180, 269, },
		[15] = { 60, 20, 194, 291, },
		[16] = { 62, 21, 210, 315, },
		[17] = { 64, 21, 227, 340, },
		[18] = { 66, 21, 245, 367, },
		[19] = { 68, 21, 264, 396, },
		[20] = { 70, 21, 284, 426, },
		[21] = { 72, 22, 306, 459, },
		[22] = { 74, 22, 330, 494, },
		[23] = { 76, 22, 354, 532, },
		[24] = { 78, 22, 381, 572, },
		[25] = { 80, 22, 410, 614, },
		[26] = { 82, 23, 440, 660, },
		[27] = { 84, 23, 472, 708, },
		[28] = { 86, 23, 507, 760, },
		[29] = { 88, 23, 543, 815, },
		[30] = { 90, 23, 583, 874, },
	},
}
skills["FrostBoltNova"] = {
	name = "Vortex",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		cold = true,
		duration = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		duration = true,
		cold = true,
	},
	skillTypes = { [2] = true, [10] = true, [11] = true, [17] = true, [18] = true, [19] = true, [26] = true, [34] = true, [36] = true, [12] = true, [60] = true, },
	baseMods = {
		skill("castTime", 0.9), 
		skill("critChance", 5), 
		skill("duration", 3), --"base_skill_effect_duration" = 3000
		--"is_area_damage" = ?
		skill("dotIsSpell", true), --"spell_damage_modifiers_apply_to_damage_over_time" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 0.5), --"base_skill_area_of_effect_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("ColdMin", nil), --"spell_minimum_base_cold_damage"
		[4] = skill("ColdMax", nil), --"spell_maximum_base_cold_damage"
		[5] = skill("ColdDot", nil), --"base_cold_damage_to_deal_per_minute"
	},
	levels = {
		[1] = { 28, 11, 50, 75, 41.633333333333, },
		[2] = { 31, 11, 60, 90, 51.983333333333, },
		[3] = { 34, 12, 71, 107, 64.466666666667, },
		[4] = { 37, 13, 85, 127, 79.45, },
		[5] = { 40, 14, 100, 150, 97.383333333333, },
		[6] = { 42, 14, 112, 168, 112.51666666667, },
		[7] = { 44, 15, 124, 187, 129.65, },
		[8] = { 46, 15, 138, 208, 149.01666666667, },
		[9] = { 48, 16, 154, 231, 170.88333333333, },
		[10] = { 50, 16, 171, 256, 195.53333333333, },
		[11] = { 52, 16, 189, 284, 223.28333333333, },
		[12] = { 54, 17, 209, 314, 254.5, },
		[13] = { 56, 17, 232, 347, 289.53333333333, },
		[14] = { 58, 18, 256, 384, 328.85, },
		[15] = { 60, 18, 283, 424, 372.9, },
		[16] = { 62, 19, 312, 468, 422.2, },
		[17] = { 64, 19, 344, 516, 477.35, },
		[18] = { 66, 20, 379, 568, 538.96666666667, },
		[19] = { 68, 20, 417, 625, 607.75, },
		[20] = { 70, 21, 458, 688, 684.46666666667, },
		[21] = { 72, 21, 504, 756, 769.96666666667, },
		[22] = { 74, 22, 554, 831, 865.18333333333, },
		[23] = { 76, 22, 608, 912, 971.15, },
		[24] = { 78, 23, 667, 1001, 1088.9833333333, },
		[25] = { 80, 23, 732, 1098, 1219.9166666667, },
		[26] = { 82, 24, 802, 1204, 1365.3333333333, },
		[27] = { 84, 24, 879, 1319, 1526.7166666667, },
		[28] = { 86, 25, 963, 1445, 1705.7166666667, },
		[29] = { 88, 25, 1055, 1582, 1904.1333333333, },
		[30] = { 90, 26, 1154, 1731, 2123.9666666667, },
	},
}
skills["Vulnerability"] = {
	name = "Vulnerability",
	gemTags = {
		curse = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		curse = true,
		area = true,
		duration = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [17] = true, [18] = true, [19] = true, [26] = true, [32] = true, [36] = true, },
	baseMods = {
		skill("castTime", 0.5), 
		mod("DotTaken", "INC", 33, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"degen_effect_+%" = 33
		--"base_deal_no_damage" = ?
		skill("debuff", true), 
	},
	qualityMods = {
		mod("PhysicalDamageTaken", "INC", 0.5, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"physical_damage_taken_+%" = 0.5
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = skill("duration", nil), --"base_skill_effect_duration"
		[4] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
		[5] = mod("PhysicalDamageTaken", "INC", nil, 0, 0, { type = "GlobalEffect", effectType = "Curse" }), --"physical_damage_taken_+%"
	},
	levels = {
		[1] = { 24, 24, 9, 0, 20, },
		[2] = { 27, 26, 9.1, 4, 20, },
		[3] = { 30, 27, 9.2, 8, 21, },
		[4] = { 33, 29, 9.3, 12, 21, },
		[5] = { 36, 30, 9.4, 16, 22, },
		[6] = { 39, 32, 9.5, 20, 22, },
		[7] = { 42, 34, 9.6, 24, 23, },
		[8] = { 45, 35, 9.7, 28, 23, },
		[9] = { 48, 37, 9.8, 32, 24, },
		[10] = { 50, 38, 9.9, 36, 24, },
		[11] = { 52, 39, 10, 40, 25, },
		[12] = { 54, 40, 10.1, 44, 25, },
		[13] = { 56, 42, 10.2, 48, 26, },
		[14] = { 58, 43, 10.3, 52, 26, },
		[15] = { 60, 44, 10.4, 56, 27, },
		[16] = { 62, 45, 10.5, 60, 27, },
		[17] = { 64, 46, 10.6, 64, 28, },
		[18] = { 66, 47, 10.7, 68, 28, },
		[19] = { 68, 48, 10.8, 72, 29, },
		[20] = { 70, 50, 10.9, 76, 29, },
		[21] = { 72, 51, 11, 80, 30, },
		[22] = { 74, 52, 11.1, 84, 30, },
		[23] = { 76, 53, 11.2, 88, 31, },
		[24] = { 78, 54, 11.3, 92, 31, },
		[25] = { 80, 56, 11.4, 96, 32, },
		[26] = { 82, 57, 11.5, 100, 32, },
		[27] = { 84, 58, 11.6, 104, 33, },
		[28] = { 86, 59, 11.7, 108, 33, },
		[29] = { 88, 60, 11.8, 112, 34, },
		[30] = { 90, 61, 11.9, 116, 34, },
	},
}
skills["Wither"] = {
	name = "Wither",
	gemTags = {
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		duration = true,
		chaos = true,
		channelling = true,
	},
	parts = {
		{
			name = "1 Stack",
		},
		{
			name = "5 Stacks",
		},
		{
			name = "10 Stacks",
		},
		{
			name = "20 Stacks",
		},
	},
	color = 3,
	baseFlags = {
		spell = true,
		area = true,
		duration = true,
		chaos = true,
	},
	skillTypes = { [2] = true, [11] = true, [12] = true, [18] = true, [50] = true, [58] = true, },
	baseMods = {
		skill("castTime", 0.28), 
		mod("ChaosDamageTaken", "INC", 7, 0, 0, { type = "GlobalEffect", effectType = "Debuff" }), --"chaos_damage_taken_+%" = 7
		nil, --"base_skill_effect_duration" = 500
		skill("duration", 2), --"base_secondary_skill_effect_duration" = 2000
		skill("stackCount", 5, { type = "SkillPart", skillPart = 2 }), 
		skill("stackCount", 10, { type = "SkillPart", skillPart = 3 }), 
		skill("stackCount", 20, { type = "SkillPart", skillPart = 4 }), 
	},
	qualityMods = {
		mod("Duration", "INC", 1), --"skill_effect_duration_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = skill("manaCost", nil), 
		[3] = mod("MovementSpeed", "INC", nil, 0, 0, { type = "GlobalEffect", effectType = "Debuff" }), --"base_movement_velocity_+%"
		[4] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
	},
	levels = {
		[1] = { 10, 4, -30, 0, },
		[2] = { 13, 4, -30, 1, },
		[3] = { 17, 4, -30, 2, },
		[4] = { 21, 5, -31, 3, },
		[5] = { 25, 5, -31, 4, },
		[6] = { 29, 5, -31, 5, },
		[7] = { 33, 6, -32, 6, },
		[8] = { 36, 6, -32, 7, },
		[9] = { 39, 6, -32, 8, },
		[10] = { 42, 7, -33, 9, },
		[11] = { 45, 7, -33, 10, },
		[12] = { 48, 7, -33, 11, },
		[13] = { 51, 8, -34, 12, },
		[14] = { 54, 8, -34, 13, },
		[15] = { 57, 8, -34, 14, },
		[16] = { 60, 9, -35, 15, },
		[17] = { 63, 9, -35, 16, },
		[18] = { 66, 9, -35, 17, },
		[19] = { 68, 10, -36, 18, },
		[20] = { 70, 10, -36, 19, },
		[21] = { 72, 10, -36, 20, },
		[22] = { 74, 11, -37, 21, },
		[23] = { 76, 11, -37, 22, },
		[24] = { 78, 11, -37, 23, },
		[25] = { 80, 12, -38, 24, },
		[26] = { 82, 12, -38, 25, },
		[27] = { 84, 12, -38, 26, },
		[28] = { 86, 13, -39, 27, },
		[29] = { 88, 13, -39, 28, },
		[30] = { 90, 13, -39, 29, },
	},
}
skills["Wrath"] = {
	name = "Wrath",
	gemTags = {
		aura = true,
		intelligence = true,
		active_skill = true,
		spell = true,
		area = true,
		lightning = true,
	},
	color = 3,
	baseFlags = {
		spell = true,
		aura = true,
		area = true,
		lightning = true,
	},
	skillTypes = { [2] = true, [11] = true, [5] = true, [15] = true, [27] = true, [16] = true, [18] = true, [44] = true, [35] = true, },
	baseMods = {
		skill("castTime", 1.2), 
		skill("manaCost", 50), 
		skill("cooldown", 1.2), 
		--"base_deal_no_damage" = ?
	},
	qualityMods = {
		mod("AreaOfEffect", "INC", 1), --"base_skill_area_of_effect_+%" = 1
	},
	levelMods = {
		[1] = skill("levelRequirement", nil), 
		[2] = mod("LightningMin", "BASE", nil, ModFlag.Attack, 0, { type = "GlobalEffect", effectType = "Aura" }), --"attack_minimum_added_lightning_damage"
		[3] = mod("LightningMax", "BASE", nil, ModFlag.Attack, 0, { type = "GlobalEffect", effectType = "Aura" }), --"attack_maximum_added_lightning_damage"
		[4] = mod("AreaOfEffect", "INC", nil), --"base_skill_area_of_effect_+%"
		[5] = mod("LightningDamage", "MORE", nil, ModFlag.Spell, 0, { type = "GlobalEffect", effectType = "Aura" }), --"wrath_aura_spell_lightning_damage_+%_final"
	},
	levels = {
		[1] = { 24, 2, 37, 0, 15, },
		[2] = { 27, 3, 43, 3, 15, },
		[3] = { 30, 3, 50, 6, 15, },
		[4] = { 33, 4, 57, 9, 16, },
		[5] = { 36, 4, 66, 12, 16, },
		[6] = { 39, 5, 75, 15, 16, },
		[7] = { 42, 5, 85, 18, 17, },
		[8] = { 45, 6, 97, 21, 17, },
		[9] = { 48, 7, 109, 23, 17, },
		[10] = { 50, 7, 118, 25, 18, },
		[11] = { 52, 8, 128, 27, 18, },
		[12] = { 54, 9, 138, 29, 18, },
		[13] = { 56, 9, 149, 31, 19, },
		[14] = { 58, 10, 161, 33, 19, },
		[15] = { 60, 11, 173, 35, 19, },
		[16] = { 62, 12, 186, 36, 20, },
		[17] = { 64, 13, 200, 37, 20, },
		[18] = { 66, 13, 215, 38, 20, },
		[19] = { 68, 14, 231, 39, 21, },
		[20] = { 70, 16, 248, 40, 21, },
		[21] = { 72, 17, 267, 41, 21, },
		[22] = { 74, 18, 286, 42, 22, },
		[23] = { 76, 19, 306, 43, 22, },
		[24] = { 78, 20, 328, 44, 22, },
		[25] = { 80, 22, 351, 45, 23, },
		[26] = { 82, 23, 375, 46, 23, },
		[27] = { 84, 25, 401, 47, 23, },
		[28] = { 86, 27, 429, 48, 24, },
		[29] = { 88, 29, 458, 49, 24, },
		[30] = { 90, 31, 490, 50, 24, },
	},
}