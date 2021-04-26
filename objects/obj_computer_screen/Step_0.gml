/// @description decrease computer screen size
// You can write your code in this editor

image_xscale = clamp(image_xscale - (growth * 0.002), 0, 1);
image_yscale = clamp(image_yscale - (growth * 0.002), 0, 1);
growth *= .9985;