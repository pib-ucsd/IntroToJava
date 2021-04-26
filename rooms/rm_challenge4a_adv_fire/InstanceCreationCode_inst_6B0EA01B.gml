ds_map_clear(global.answers);
ds_map_add(global.answers, inst_1141B5A, ["int i = 0; i < fireLevels.length; i++", "int i = 0; i <= fireLevels.length - 1; i++", "int i = 0; i < fireLevels.length; i+=1", "int i = 0; i <= fireLevels.length - 1; i+=1"])
ds_map_add(global.answers, inst_76F690A9, ["fireLevels[i] > 0", "0 < fireLevels[i]"])
ds_map_add(global.answers, inst_141416CF, "fire1.levelUp();")
ds_map_add(global.answers, inst_2BF846F3, ["if (fire1.currentFireLevel >= LEVEL_UP_THRESHOLD)", "if(fire1.currentFireLevel > LEVEL_UP_THRESHOLD - 1)", "if(LEVEL_UP_THRESHOLD <= fire1.currentFireLevel)"])
ds_map_add(global.answers, inst_4D68144E, ["else if (fire1.currentFireLevel > 0)", "else if (0 < fire1.currentFireLevel)"])
ds_map_add(global.answers, inst_56BFA51, "else")
