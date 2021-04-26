if(scale != 1){
	scale		= clamp(scale + 0.0021221285, 0, 1);
	xOrigin		= posOffset * cos(-t);
	yOrigin		= posOffset * sin(-t);
	t			= clamp(t + 0.02, 0, 3*3.1415);
	image_xscale= scale;
	image_yscale= scale;
	x			= xOffset + xOrigin;
	y			= yOffset + yOrigin;
	posOffset	-= .21221285;
	if(scale == 1){
		x		= xOffset;
		y		= yOffset;
	}
}