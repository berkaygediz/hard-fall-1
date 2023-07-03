xx=device_mouse_x(0);
yy=device_mouse_y(0);
xxl=device_mouse_x(1);
yyl=device_mouse_y(1);

if((device_mouse_check_button_pressed(0,mb_left) or device_mouse_check_button_pressed(1,mb_left)) and (position_meeting(xx,yy,id) or position_meeting(xxl,yyl,id)))
{
    obj_karakter.sprite_index=s_karakter_ates_et_pistol;
    instance_create(obj_karakter.x,obj_karakter.y,obj_kursun_pistol);
    audio_play_sound(ses_pistol,0,false);
    image_angle=direction;
}
else
{
obj_karakter.sprite_index=s_karakter;
}
x=__view_get( e__VW.XView, 0 )+x_mesafe;
y=__view_get( e__VW.YView, 0 )+y_mesafe;

