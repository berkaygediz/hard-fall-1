xx=device_mouse_x(0);
yy=device_mouse_y(0);
xxl=device_mouse_x(1);
yyl=device_mouse_y(1);

x=__view_get( e__VW.XView, 0 )+x_mesafe;
y=__view_get( e__VW.YView, 0 )+y_mesafe;

if global.dil=0 { sprite_index=s_bildirim_cubugu_bolum_1_part_3tr }

if global.dil=1 { sprite_index=s_bildirim_cubugu_bolum_1_part_3en }

