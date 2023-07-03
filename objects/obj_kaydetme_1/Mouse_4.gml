action_save_game("kayit1.hf1");
if alpha = 0
{
audio_play_sound(ses_oyna, 0, false);
alarm[0] = 1;
depth -= 1;
}

action_message("Basariyla Kaydedildi!!!");
if global.dil=0 {show_message("Başarıyla Kaydedildi.");}
if global.dil=1 {show_message("It saved successfully .");}

