    if instance_number(obj_fade) = 0 {
        instance_create(0,0,obj_fade)
        for(i=0;i<instance_number(obj_fade);i++) {
            var inst = instance_find(obj_fade,i);
            inst.target = oda_bolum_1_cutscene
            
        }
    }

