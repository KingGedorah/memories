class_name Menu extends Control

@onready var prolog = preload("res://scenes/prolog.tscn") as PackedScene

func _ready():
	pass

func _on_play_button_pressed():
	# Change scene to prolog
	get_tree().change_scene_to_packed(prolog)

func _on_exit_button_pressed():
	# Quit the game
	get_tree().quit()
