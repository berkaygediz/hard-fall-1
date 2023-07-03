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
                if instance_number(obj_server)=1 {
                    with(obj_server) {
                        network_destroy(tcp)
                    }
                }
                if instance_number(obj_client)=1 {
                    with(obj_client) {
                    // Lets Send data abot client which left from game.
                    buffer_seek(buff,buffer_seek_start,0);
                    buffer_write(buff,buffer_u8,4);
                    buffer_write(buff,buffer_string,global.name);
                    network_send_packet(socket,buff,buffer_get_size(buff));
                    game_restart();
                    }
                }
                game_restart();
            }
        }
        target = 0
        alpha = 1.2
    }
}else {
if type = 1 {
    if alpha >= 1.2 {
            if instance_number(obj_client) = 1 {
                with(obj_client) {
                    // Lets Send data abot client which left from game.
                    buffer_seek(buff,buffer_seek_start,0);
                    buffer_write(buff,buffer_u8,4);
                    buffer_write(buff,buffer_string,global.name);
                    network_send_packet(socket,buff,buffer_get_size(buff));
                    game_restart();
                }
            }
        }
    }else {
        if type = 2 {
            if alpha>=1.2 {
                if instance_number(obj_server) = 1 {
                    with(obj_server) {
                        for(i=0;i<ds_list_size(player_socket);i++) {
                            network_destroy(ds_list_find_value(player_socket,i));
                        }
                        ds_list_clear(player_socket)
                        ds_list_clear(player_data)
                        ds_list_clear(player_names)
                        ds_list_clear(team1);
                        ds_list_clear(team2);
                        ds_list_clear(ready_players);
                        ds_list_clear(killed_unit);
                        ds_list_clear(player_id);
                        network_destroy(tcp)
                        instance_destroy();
                    }
                }
                if instance_number(obj_client) = 1 {
                    with(obj_client) {
                        network_destroy(socket)
                        instance_destroy();
                    }
                }
                room_goto(target);
                target = 0
            }
        }
    }
}
    

