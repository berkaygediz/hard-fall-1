/// @description  User event 0 - called when AI has not spotted the enemy yet. (in this example, the AI just runs around the room.)
/// @param in this example
/// @param  the AI just runs around the room.
//
//// find random place in room
gx = round(random(room_width))
gy = round(random(room_height))

if place_free(gx,gy)
{
    {
        moving = 1
        max_points = path_get_number(path_id)
        next_point = 0
        alarm[0] = path_get_length(path_id)/move_speed+30
    }
}

