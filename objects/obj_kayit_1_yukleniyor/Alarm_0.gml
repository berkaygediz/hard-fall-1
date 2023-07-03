action_load_game("kayit1.hf1");
    if instance_number(obj_fade) = 0 {
        instance_create(0,0,obj_fade)
        for(i=0;i<instance_number(obj_fade);i++) {
            var inst = instance_find(obj_fade,i);
            
        }
    }

action_end_sound(ses_yukleniyor);
if global.dil=0 {show_message("Kontrol Ediliyor...Kayıt Bulunamazsa Başlatılamaz.");}
if global.dil=1 {show_message("Checking... It does not Initialize record found.");}

