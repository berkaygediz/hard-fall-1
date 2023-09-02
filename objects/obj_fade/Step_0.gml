if type = 0 or type = 2{
    if alpha<1.2 and target!=0{
        alpha+=0.05
    }
}
if type = 1 {
    if alpha<1.2{
        alpha+=0.05
    } 
}
if type = 0 or type = 2{
    if target = 0 {
        if alpha>0 {
            alpha-=0.05
        }
    }
}

if type = 0 or type = 2{
    if alpha <=0 {
        instance_destroy();
    }
}
if type = 0 {
    if alpha >= 1.2 and target!=0 {
        if target!= 9999 {
        room_goto(target)
        }else {
            if target = 9999 {
                game_restart();
            }
        }
        target = 0
        alpha = 1.2
    }
}else {
if type = 1 {
    if alpha >= 1.2 {
		
        }
    }else {
        if type = 2 {
            if alpha>=1.2 {
                room_goto(target);
                target = 0
            }
        }
    }
}
    

