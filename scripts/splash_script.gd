extends Node
class_name SplashScreen


func _input(event : InputEvent):
	if(event.is_action_pressed("action")):
		var node_name = get_tree().get_root()
		if ("#") in node_name:
			var current_number : int = int(node_name.get_slice("#",1))
			var next_number : int = current_number + 1
			if next_number == 4:
				return "res://scenes/menu.tscn"
			else:
				return "res://scenes/SplashScreen#" + str(next_number) + ".tscn"
