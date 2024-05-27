extends Area2D


@onready var game_2 = preload("res://scenes/game2.tscn") as PackedScene

func _on_body_entered(body):
	get_tree().change_scene_to_packed(game_2)
