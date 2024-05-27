class_name End
extends Control

@onready var main_menu = preload("res://scenes/menu.tscn") as PackedScene

func _input(event : InputEvent):
	if(event.is_action_pressed("action")):
		get_tree().change_scene_to_packed(main_menu)
