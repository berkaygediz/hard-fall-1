{
{
draw_set_alpha(1)
if yoff>0draw_sprite_warp(sprite_get_texture(bina_grafigi,1),xstart-(sprite_height/2),ystart-(sprite_height/2),xstart+(sprite_width/2),ystart-(sprite_height/2),xstart-(sprite_width/2)+xoff,ystart-(sprite_height/2)+yoff,xstart+(sprite_width/2)+xoff,ystart-(sprite_height/2)+yoff,stepud)
if xoff>0 draw_sprite_warp(sprite_get_texture(bina_grafigi,0),xstart-(sprite_height/2),ystart-(sprite_height/2),xstart-(sprite_width/2)+xoff,ystart-(sprite_height/2)+yoff,xstart-(sprite_height/2),ystart+(sprite_height/2),xstart-(sprite_width/2)+xoff,ystart+(sprite_height/2)+yoff,stepud)
if yoff<0draw_sprite_warp(sprite_get_texture(bina_grafigi,2),xstart-(sprite_height/2),ystart+(sprite_height/2),xstart+(sprite_width/2),ystart+(sprite_height/2),xstart-(sprite_width/2)+xoff,ystart+(sprite_height/2)+yoff,xstart+(sprite_width/2)+xoff,ystart+(sprite_height/2)+yoff,stepud)
if xoff<0 draw_sprite_warp(sprite_get_texture(bina_grafigi,1),xstart+(sprite_height/2),ystart-(sprite_height/2),xstart+(sprite_width/2),ystart+(sprite_height/2),xstart+(sprite_width/2)+xoff,ystart-(sprite_height/2)+yoff,xstart+(sprite_width/2)+xoff,ystart+(sprite_height/2)+yoff,stepud)
}
draw_sprite(s_bina2,image_index,drawx,drawy)
}

