function draw_sprite_warp(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9) {
	var tex,x1,x2,x3,x4,y1,y2,y3,y3,step;
	tex = argument0;
	x1 = argument1;
	y1 = argument2;
	x2 = argument3;
	y2 = argument4;
	x3 = argument5;
	y3 = argument6;
	x4 = argument7;
	y4 = argument8;
	step = argument9;

	var w1xs,w1ys,w2xs,w2ys;

	w1xs = (x2-x1)/step;
	w1ys = (y2-y1)/step;
	w2xs = (x4-x3)/step;
	w2ys = (y4-y3)/step;

	var w1xat,w1yat,w2xat,w2yat;

	w1xat = x2;
	w1yat = y2;
	w2xat = x4;
	w2yat = y4;

	var us; us = 1/step;
	var uat; uat = 1;

	var c; c = draw_get_color();
	draw_set_color(c_white);
	draw_primitive_begin_texture(pr_trianglestrip, tex);


	repeat(step+1)
	{
	    draw_vertex_texture(w1xat,w1yat,uat,0)
	    draw_vertex_texture(w2xat,w2yat,uat,1)
	    uat-=us;
	    w1xat-=w1xs;
	    w1yat-=w1ys;
	    w2xat-=w2xs;
	    w2yat-=w2ys;
	}
	draw_primitive_end();
	draw_set_color(c);



}
