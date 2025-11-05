//code to set mode to climbing
if(instance_place(x, y, obj_ladder)){
	if(keyboard_check(vk_up) or keyboard_check(vk_down)){
		vspeed = 0
		gravity = 0
		climbing = true
		sprite_index = spr_climbing
	}
}else{
	climbing = false
	sprite_index = spr_player
}

//climbing code
if(climbing){
	if(keyboard_check(vk_up)) vspeed = -climb_speed
	if(keyboard_check(vk_down)) vspeed = climb_speed
	if(instance_place(x, y+sprite_yoffset, obj_block)) climbing = false
}else{
	//non climbing code
	if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_block)) {
		x += -move_speed
		image_xscale = -1
	}

	if (keyboard_check(vk_right)  and !instance_place(x+move_speed, y, obj_block)) {
		x += move_speed
		image_xscale = 1
	}

	if(keyboard_check(vk_up)){
			show_debug_message("Jumping...")
			if(instance_place(x, y+1, obj_block)){
				vspeed = jump_height
			}
	}

	if(!instance_place(x, y+1, obj_block)){
		gravity = 0.25
	}else{
		gravity = 0
	}

	if(vspeed > 12){
		vspeed = 12	
	}
	
	//sword code
	if(keyboard_check_pressed(ord("Z"))){
		instance_create_layer(x, y, "Instances", obj_sword)
	}
}