//Needed to set or Q, because alt + r already did something on my computer
if keyboard_check_pressed(ord("R")) || keyboard_check_pressed(ord("Q")) room_restart()
if keyboard_check_pressed(ord("G")) game_restart()
if keyboard_check_pressed(ord("L")) lives += 5
if keyboard_check_pressed(ord("N")) room_goto_next()
if keyboard_check_pressed(ord("P")) room_goto_previous()