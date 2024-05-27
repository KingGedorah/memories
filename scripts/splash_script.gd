extends Node
class_name SplashScreen



func _input(event : InputEvent): 
	var count : int = 1
	if(event.is_action_pressed("action")):
		count = count + 1
		if count == 4:
			get_tree().change_scene_to_file("res://scenes/menu.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/SplashScreen#" + str(count) + ".tscn")
