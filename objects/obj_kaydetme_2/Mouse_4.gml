action_save_game("kayit2.hf1");
if alpha = 0
{
audio_play_sound(ses_oyna, 0, false);
alarm[0] = 1;

}

if global.dil=0 {show_message("Başarıyla Kaydedildi.");}
if global.dil=1 {show_message("It saved successfully .");}

