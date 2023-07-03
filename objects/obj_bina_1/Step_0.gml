drawx=xstart+xoff
drawy=ystart+yoff

if x-obj_karakter.x>0 then xoff=point_distance(x,0,obj_karakter.x,0)/bina_yuksekligi
if x-obj_karakter.x<0 then xoff=-point_distance(x,0,obj_karakter.x,0)/bina_yuksekligi
if y-obj_karakter.y>0 then yoff=point_distance(0,y,0,obj_karakter.y)/bina_yuksekligi
if y-obj_karakter.y<0 then yoff=-point_distance(0,y,0,obj_karakter.y)/bina_yuksekligi


if distance_to_object(obj_karakter)>900 { visible = 0 } else { visible = 1 }

