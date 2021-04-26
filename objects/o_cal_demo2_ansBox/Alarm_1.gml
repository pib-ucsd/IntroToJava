o_cal_chlng1_prompts.alarm[0] = -1;
o_cal_chlng1_prompts.delay = -1;
o_cal_chlng1_prompts.prompt = "Good job! Hit the green arrow below to move on.";
nextArrow = instance_create_depth(1696, 680, -1500,o_cal_demo2_arrow_);
nextArrow.image_xscale = .5;
nextArrow.image_yscale = .6;
instance_create_depth(1475, 689, -1500, o_run);