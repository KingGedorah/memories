extends Node
class_name SplashScreen

@export var current_splash : int = 1

func _input(event : InputEvent): 
	if(event.is_action_pressed("action")):
		var next_number = current_splash+ 1
		if next_number == 4:
			get_tree().change_scene_to_file("res://scenes/menu.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/SplashScreen#" + str(next_number) + ".tscn")
