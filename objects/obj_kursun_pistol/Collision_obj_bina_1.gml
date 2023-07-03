action_kill_object();
action_sound(ses_bina_siyirma, 0);
achievement_post("CgkI0IGoi5scEAIQBQ",200)


global.puan=+1
achievement_post_score("CgkI0IGoi5scEAIQBQ",global.puan)


if achievement_available(){
achievement_login()
}


