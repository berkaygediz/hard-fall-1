if instance_number(obj_checkpoint_gorev_2_bildirim) = 0 {
    if instance_position(x,y,obj_checkpoint_gorev_2) {
        var ii = instance_create(0,0,obj_checkpoint_gorev_2_bildirim);
        ii.x = __view_get( e__VW.WView, 0 )-156
        ii.y = __view_get( e__VW.YView, 0 )+96
    }
}
if instance_number(obj_checkpoint_gorev_2_bildirim) = 1 {
    if !instance_position(x,y,obj_checkpoint_gorev_2) {
        with(obj_checkpoint_gorev_2_bildirim) {
            instance_destroy();
        }
    }
}
if instance_number(obj_ev_check_giris_bildirim_b_1) = 0 {
    if instance_position(x,y,obj_ev_check_giris_b_1) {
        var ii = instance_create(0,0,obj_ev_check_giris_bildirim_b_1);
        ii.x = __view_get( e__VW.WView, 0 )-156
        ii.y = __view_get( e__VW.YView, 0 )+96
    }
}
if instance_number(obj_ev_check_giris_bildirim_b_1) = 1 {
    if !instance_position(x,y,obj_ev_check_giris_b_1) {
        with(obj_ev_check_giris_bildirim_b_1) {
            instance_destroy();
        }
    }
}
if instance_number(obj_ev_check_cikis_bildirim_b_1) = 0 {
    if instance_position(x,y,obj_ev_check_cikis_b_1) {
        var ii = instance_create(0,0,obj_ev_check_cikis_bildirim_b_1);
        ii.x = __view_get( e__VW.WView, 0 )-156
        ii.y = __view_get( e__VW.YView, 0 )+96
    }
}
if instance_number(obj_ev_check_cikis_bildirim_b_1) = 1 {
    if !instance_position(x,y,obj_ev_check_cikis_b_1) {
        with(obj_ev_check_cikis_bildirim_b_1) {
            instance_destroy();
        }
    }
}
if instance_number(obj_kayit_1_collision_bildirim_b_1) = 0 {
    if instance_position(x,y,obj_kayit_1_collision_b_1) {
        var ii = instance_create(0,0,obj_kayit_1_collision_bildirim_b_1);
        ii.x = __view_get( e__VW.WView, 0 )-156
        ii.y = __view_get( e__VW.YView, 0 )+96
    }
}
if instance_number(obj_kayit_1_collision_bildirim_b_1) = 1 {
    if !instance_position(x,y,obj_kayit_1_collision_b_1) {
        with(obj_kayit_1_collision_bildirim_b_1) {
            instance_destroy();
        }
    }
}
if instance_number(obj_kayit_2_collision_bildirim_b_1) = 0 {
    if instance_position(x,y,obj_kayit_2_collision_b_1) {
        var ii = instance_create(0,0,obj_kayit_2_collision_bildirim_b_1);
        ii.x = __view_get( e__VW.WView, 0 )-156
        ii.y = __view_get( e__VW.YView, 0 )+96
    }
}
if instance_number(obj_kayit_2_collision_bildirim_b_1) = 1 {
    if !instance_position(x,y,obj_kayit_2_collision_b_1) {
        with(obj_kayit_2_collision_bildirim_b_1) {
            instance_destroy();
        }
    }
}
if instance_number(obj_ev_check_giris_bildirim_b_2) = 0 {
    if instance_position(x,y,obj_ev_check_giris_b_2) {
        var ii = instance_create(0,0,obj_ev_check_giris_bildirim_b_2);
        ii.x = __view_get( e__VW.WView, 0 )-156
        ii.y = __view_get( e__VW.YView, 0 )+96
    }
}
if instance_number(obj_ev_check_giris_bildirim_b_2) = 1 {
    if !instance_position(x,y,obj_ev_check_giris_b_2) {
        with(obj_ev_check_giris_bildirim_b_2) {
            instance_destroy();
        }
    }
}
if instance_number(obj_ev_check_cikis_bildirim_b_2) = 0 {
    if instance_position(x,y,obj_ev_check_cikis_b_2) {
        var ii = instance_create(0,0,obj_ev_check_cikis_bildirim_b_2);
        ii.x = __view_get( e__VW.WView, 0 )-156
        ii.y = __view_get( e__VW.YView, 0 )+96
    }
}
if instance_number(obj_ev_check_cikis_bildirim_b_2) = 1 {
    if !instance_position(x,y,obj_ev_check_cikis_b_2) {
        with(obj_ev_check_cikis_bildirim_b_2) {
            instance_destroy();
        }
    }
}
if instance_number(obj_checkpoint_gorev_3_bildirim) = 0 {
    if instance_position(x,y,obj_checkpoint_gorev_3) {
        var ii = instance_create(0,0,obj_checkpoint_gorev_3_bildirim);
        ii.x = __view_get( e__VW.WView, 0 )-156
        ii.y = __view_get( e__VW.YView, 0 )+96
    }
}
if instance_number(obj_checkpoint_gorev_3_bildirim) = 1 {
    if !instance_position(x,y,obj_checkpoint_gorev_3) {
        with(obj_checkpoint_gorev_3_bildirim) {
            instance_destroy();
        }
    }
}

if (os_type == os_windows){
if keyboard_check(ord("W"))
{
    y -= 20;
    obj_karakter.sprite_index=s_karakter_yuru_pistol;
}

if keyboard_check(ord("S"))
{
    y += 20;
    obj_karakter.sprite_index=s_karakter_yuru_pistol;
}

if keyboard_check(ord("A"))
{
    x -= 20;   
    obj_karakter.sprite_index=s_karakter_yuru_pistol;
}
if keyboard_check(ord("D"))
{
    x += 20;
    obj_karakter.sprite_index=s_karakter_yuru_pistol;
}

image_angle = point_direction(x,y,mouse_x,mouse_y);
}

if mouse_check_button_pressed(mb_left)
{
    obj_karakter.sprite_index=s_karakter_ates_et_pistol;
    instance_create(obj_karakter.x,obj_karakter.y,obj_kursun_pistol);
    audio_play_sound(ses_pistol,0,false);
    image_angle=direction;
}

