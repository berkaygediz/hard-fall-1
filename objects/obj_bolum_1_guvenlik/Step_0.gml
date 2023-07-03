/// @description ////////// ENEMY LOGIC STEP EVENT


// Update info on nearest enemy
if instance_exists(my_enemy)
{
    enemy_nearest = instance_nearest(x,y,my_enemy)
    enemy_in_sight = !collision_line(x,y,enemy_nearest.x,enemy_nearest.y,wall_parent,prec_wall_collision,0)
    enemy_angle = point_direction(x,y,enemy_nearest.x,enemy_nearest.y)
}
else
{
    enemy_nearest = noone
    enemy_in_sight = 0
}



// Moves object toward the next point on the path (if its meant to be moving)
if moving = 1
{

    if next_point < max_points
    {
        if !collision_line(x,y,path_get_point_x(path_id,next_point+1),path_get_point_y(path_id,next_point+1),wall_parent,prec_wall_collision,1)
        {
            next_point += 1
        }
    }
    
    // move toward next point in path
    mp_potential_step(path_get_point_x(path_id,next_point),path_get_point_y(path_id,next_point),move_speed,0)
    
    if spotted = 0
    {
        dir = point_direction(x,y,path_get_point_x(path_id,next_point),path_get_point_y(path_id,next_point))
    }
    else
    {
        if enemy_in_sight = 0
        {
            dir = point_direction(x,y,path_get_point_x(path_id,next_point),path_get_point_y(path_id,next_point))
        }
    }
    
    // if reached destination
    if point_distance(x,y,path_get_point_x(path_id,max_points-1),path_get_point_y(path_id,max_points-1)) < sprite_width/2
    {
        moving = 0
        path_clear_points(path_id)
        can_move = 0
        alarm[1] = 1
        
        if spotted = 0 // if player has not been spotted yet, then look around.
        {
            alarm[1] = pause_time+random(pause_time)
            
            if floor(random(2)) = 1
            {
                dir += max_view_angle + random(max_view_angle)
            }
            else
            {
                dir -= max_view_angle + random(max_view_angle)
            }
        }
    }
}


// destroy the enemy if his health is 0
if hp <= 0
{
    instance_destroy();
}


// This rotates the image angle towards dir.
d = dir - image_angle

if d<-180 {d+=360}
if d>180 {d-=360}

image_angle+=d*turn_speed


////////////////////////////
////// MAIN LOGIC

if spotted = 1
{
    if instance_exists(enemy_nearest)
    {
        if enemy_in_sight = 1
        {
            dir = enemy_angle
            
            /// Check if the enemy is shootable            
            df = dir - image_angle
            if df<-180 {df+=360}
            if df>180 {df-=360}
            df = df*df
            df = sqrt(df)
            
            if can_shoot = 1
            && df < inaccuracy*2
            && collision_line(x,y,x+lengthdir_x(800,dir),y+lengthdir_y(800,dir),enemy_nearest,1,1)
            && !collision_line(x,y,x+lengthdir_x(800,dir),y+lengthdir_y(800,dir),ally,0,1)
            {
                event_user(1) // shoot
            }
            
            // if the enemy should try to strafe to dodge the bullet        
            if instance_exists(bullet)
            {
                if point_distance(x,y,instance_nearest(x,y,bullet).x,instance_nearest(x,y,bullet).y) < 200
                && floor(random(bravery)) = 0
                {
                    if hp <= critical_health
                    {
                        //// if health is critical, then try and take cover.
                        gx = x+lengthdir_x(random(100),random(360))
                        gy = y+lengthdir_y(random(100),random(360))
        
                        if place_free(gx,gy)
                        && collision_line(enemy_nearest.x,enemy_nearest.y,gx,gy,wall_parent,prec_wall_collision,1)
                        {
                            /// calculate path to the destination
                            if mp_grid_path(global.mp_grid,path_id,x,y,gx,gy,1)
                            {
                                moving = 1
                                max_points = path_get_number(path_id)
                                next_point = 0
                                can_move = 0
                                alarm[1] = path_get_length(path_id)/move_speed+random(pause_time*3)
                                alarm[0] = path_get_length(path_id)/move_speed+30
                            }
                        }
                        else
                        {
                            //// cant take cover, so just strafe to try and avoid
                            gx = x + lengthdir_x(sprite_width+random(60),dir+90+random(180))
                            gy = y + lengthdir_y(sprite_width+random(60),dir+90+random(180))
        
                            if place_free(gx,gy)
                            {
                                /// calculate path to the destination
                                {
                                    moving = 1
                                    max_points = path_get_number(path_id)
                                    next_point = 0
                                    alarm[0] = path_get_length(path_id)/move_speed+30
                                }
                            }
                        }

                    }
                    else
                    {
                        //// else just try avoid it
                        gx = x + lengthdir_x(sprite_width+random(60),dir+90+random(180))
                        gy = y + lengthdir_y(sprite_width+random(60),dir+90+random(180))
        
                        if place_free(gx,gy)
                        {
                            /// calculate path to the destination
                            {
                                moving = 1
                                max_points = path_get_number(path_id)
                                next_point = 0
                                alarm[0] = path_get_length(path_id)/move_speed+30
                            }
                        }
                    }
                }
            }
        }
        else
        {
            if can_move = 1
            {
                //// out of sight! move toward enemy!
                gx = x+lengthdir_x(point_distance(x,y,enemy_nearest.x,enemy_nearest.y)-random(300)+random(300),enemy_angle-random(max_view_angle)+random(max_view_angle))
                gy = y+lengthdir_y(point_distance(x,y,enemy_nearest.x,enemy_nearest.y)-random(300)+random(300),enemy_angle-random(max_view_angle)+random(max_view_angle))
        
                if place_free(gx,gy)
                && !collision_line(enemy_nearest.x,enemy_nearest.y,gx,gy,wall_parent,prec_wall_collision,1)
                {
                    /// calculate path to the destination
                    {
                        moving = 1
                        max_points = path_get_number(path_id)
                        next_point = 0
                        alarm[0] = path_get_length(path_id)/move_speed+30
                        can_move = 0
                        alarm[1] = pause_time+30+random(30)
                    }
                }
            }
        }
    }
}
else
{
    if moving = 0
    && can_move = 1
    {
        event_user(0)
    }
    
    // The player has not yet been spotted, check if player is in view
    if instance_exists(my_enemy)
    {
        /// Check if the enemy is within viewing angle
        df = enemy_angle - image_angle
        if df<-180 {df+=360}
        if df>180 {df-=360}
        df = df*df
        df = sqrt(df)
        
        if enemy_in_sight = 1
        && df <= max_view_angle
        {
            alarm[2] = 1
            can_spot = 0
        }
        
        if instance_exists(bullet)
        {
            if !collision_line(x,y,instance_nearest(x,y,bullet).x,instance_nearest(x,y,bullet).y,wall_parent,0,1)
            {
                alarm[2] = pause_time/bravery
                can_spot = 0
            }
        }
    }
}

