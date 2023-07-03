action_another_room(oda_bolum_1_final);
action_move("000010000", 0);
achievement_post("CgkI0J2D4fIaEAIQBA",200)


global.puan=+1
achievement_post_score("CgkI0J2D4fIaEAIQBA",global.puan)


if achievement_available(){
achievement_login()
}


