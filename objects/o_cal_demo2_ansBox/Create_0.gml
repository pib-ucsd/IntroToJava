aft = "";
flag = true;
selectedPrev = "NOT ME";

allow = true;
a = 10;
del = 4;
left = false;
str = ""
keyboard_string = "";
numCharLine = 58;

cursor = "|";
delay = 20;
alarm[0] = delay;

left = 1;
right = 1;

rst_button = instance_create_depth(x+sprite_width-222,y+sprite_height-108,depth - 1,o_reset);
nextArrow = -1;

feedback = ""
target = false;


global.selectedID = false;

// selecting white boxes must happen after they are all created
alarm[11] = 1;
