if alpha = 0
{
audio_play_sound(ses_oyna, 0, false);
alarm[0] = 1;
depth -= 1;
}

achievement_post("CgkI0IGoi5scEAIQAg",200)


global.puan=+1
achievement_post_score("CgkI0IGoi5scEAIQAg",global.puan)


if achievement_available(){
achievement_login()
}


action_end_sound(ses_menu_arkaplan);
