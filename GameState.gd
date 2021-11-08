extends Node

var num_levels = 3
var current_level = 1

var game_scene = 'res://Main.tscn'
var title_screen = 'res://ui/TitleScreen.tscn'
var end_screen = 'res://ui/EndScreen.tscn'

func restart():
	current_level = 1
	get_tree().change_scene(title_screen)

func next_level():
	current_level += 1
	if current_level <= num_levels:
		get_tree().reload_current_scene()
	elif current_level > num_levels:
		get_tree().change_scene(end_screen)
