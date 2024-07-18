hsp = (keyboard_check(vk_right) - keyboard_check(vk_left)) * character_speed
var _jump = keyboard_check(vk_space) * jumpspeed 

if (vsp<10) vsp+=grav

if place_meeting(x,y+1,obj_wall){
	vsp=_jump
}

while place_meeting(x+hsp,y,obj_wall){
	
	hsp-=sign(hsp)
}

while place_meeting(x,y+vsp,obj_wall){
	vsp-=sign(vsp)
}

while place_meeting(x+hsp,y+vsp,obj_wall){
	hsp-=sign(hsp)
	vsp-=sign(vsp)
}

x+=hsp

y+=vsp