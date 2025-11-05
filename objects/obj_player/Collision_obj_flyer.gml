if(vspeed > 0 and y < other.y){
	instance_destroy(other)	
	vspeed = jump_height
}else{
	instance_destroy()	
}