audio_play_sound(snd_kill_character, 5, false)

lives -= 1
if(lives > 0){
	room_restart()
}else{
	global.game_over = true	
}