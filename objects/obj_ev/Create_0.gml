xoff=0
yoff=0
drawx=x
drawy=y

stepud=1

bina_yuksekligi=3.3
bina_grafigi=s_ev_duvar
bina_catisi=sprite_index

image_angle=choose(0,90,180,270)

instance_create(x-100,y-100,obj_sidewalk_h)
instance_create(x-100,y+100+33,obj_sidewalk_h)
instance_create(x-100,y-100,obj_sidewalk_v)
instance_create(x+100+33,y-100,obj_sidewalk_v)

