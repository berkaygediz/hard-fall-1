xx=device_mouse_x(0);
yy=device_mouse_y(0);
xxl=device_mouse_x(1);
yyl=device_mouse_y(1);

x=__view_get( e__VW.XView, 0 )+x_mesafe;
y=__view_get( e__VW.YView, 0 )+y_mesafe;

if(device_mouse_check_button(0,mb_left) and position_meeting(xx,yy,id))
{
    dir=point_direction(x,y,xx,yy);
    obj_karakter.direction=dir;
    obj_karakter.sprite_index=s_karakter_yuru_pistol;
    obj_karakter.speed=3;
    obj_karakter.image_angle=dir;
         
}
else
{
obj_karakter.sprite_index=s_karakter;
obj_karakter.speed=0;
}

