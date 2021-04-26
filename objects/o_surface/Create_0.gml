//surface set up
surface = -99999;
xOffset = 483;
yOffset = 95;
surface_width = 583;
surface_height = 888;
mouse_xprevious = mouse_x - xOffset;
mouse_yprevious = mouse_y - yOffset;
size = 3;
color = c_black;
prevColor = draw_get_color();
prevFont = draw_get_font();
//drawing set up
drawMode = "pencil";//1110, 930

//size thingy position
size_x = o_brushSize.x;
size_y = o_brushSize.y;

//6 color palette position variables
black_x1 = 665;
black_x2 = 710;
black_y1 = 373;
black_y2 = 415;
red_x1 = 740;
red_x2 = 785;
red_y1 = 373;
red_y2 = 415;
blue_x1 = 817;
blue_x2 = 862;
blue_y1 = 373;
blue_y2 = 415;
white_x1 = 665;
white_x2 = 710;
white_y1 = 431;
white_y2 = 475;
green_x1 = 740;
green_x2 = 785;
green_y1 = 431;
green_y2 = 475;
yellow_x1 = 817;
yellow_x2 = 862;
yellow_y1 = 431;
yellow_y2 = 475;

// start up the two autosave alarms
alarm[0] = 10;
alarm[1] = 50;

//buffer for saving the surface temp (for window resizing)
buffer = buffer_create(4*surface_width*surface_height, buffer_grow, 1);

//set up ds grid for fill
/*arr = ds_grid_create(583, 888);

for (var i = 0; i < ds_grid_width(arr); i++) {
    for (var j = 0; j < ds_grid_height(arr); j++) {
        //ds_grid_set(arr, i, j, draw_getpixel(i,j));
    }
}*/
//for combining sprites, use gpu blendmode bm_max