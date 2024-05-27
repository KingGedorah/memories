class_name Prolog
extends Control

@onready var start_level = preload("res://scenes/game.tscn") as PackedScene

func _input(event : InputEvent):
	if(event.is_action_pressed("action")):
		get_tree().change_scene_to_packed(start_level)
