extends Node
class_name SplashScreen

func next_splash() -> String:
	var next_splash_number : String = str(get_number() + 1)
	if next_splash_number == "4":
		return "res://scenes/menu.tscn"
	else:
		return "res://scenes/SplashScreen#" + next_splash_number + ".tscn" 
	
func get_number() -> int:
	if("#") in name:
		return int (name.get_slice("#",1))
	else:
		return name.to_int()

func _ready():
	var current_splash = get_number()
