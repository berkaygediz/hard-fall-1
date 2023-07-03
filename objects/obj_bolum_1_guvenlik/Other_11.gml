/// @description  event user one: called when AI has a sight on the enemy and should shoot it.
// (I made it a user defined event for convenience of customization)

b = instance_create(x+lengthdir_x(15,image_angle),y+lengthdir_y(15,image_angle),bullet)
b.direction = image_angle+random(inaccuracy)-random(inaccuracy)
can_shoot = 0
alarm[4] = shoot_speed+random(shoot_speed_random)

