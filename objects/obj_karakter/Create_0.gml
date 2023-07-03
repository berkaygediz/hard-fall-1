if mouse_check_button_pressed(mb_left)
{
    direction=obj_karakter.direction;
    speed=32;
    image_angle = instance_nearest(x,y,obj_karakter).image_angle; 
    direction = image_angle;
}

