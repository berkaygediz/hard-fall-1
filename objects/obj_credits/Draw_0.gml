{
    draw_set_color(c_aqua);
    draw_set_halign(fa_center);
    draw_set_font(fnt_credits);
    draw_text(352,x,string_hash_to_newline(credits));
    if ( x < -string_height(string_hash_to_newline(credits)) ) x = room_height;
}

