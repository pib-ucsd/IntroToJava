//sorry, I hard coded the location and made the growth and alpha linear instead of exponential, too hard for my simple brain
while(growth < arr1[indx]){
	draw_sprite_ext(s_potat,-1,x,y-sprite_height*(growth-1)/1.9,growth*1.05,growth,0,c_red,alph);
	growth *= 1.02;
	alph *= .75;
}
growth = 1;
alph = 1;

if(flg){
	indx++;
}
else{
	indx--;
}
if(indx == 0 || indx == 5){
	flg = !flg;
}