extends Area2D


@onready var game_2 = preload("res://scenes/game2.tscn") as PackedScene
@onready var end_scene = preload("res://scenes/end.tscn") as PackedScene

func _on_body_entered(body):
	if (body.get_name() == "Player"):
		get_tree().change_scene_to_packed(game_2)


func _on_area_2d_3_body_entered(body):
	if (body.get_name() == "Player"):
		body.position = Vector2(-2307.53, 698.258)


func _on_area_2d_4_body_entered(body):
	if (body.get_name() == "Player"):
		body.position = Vector2(-2305.354, 683.037)

func _on_area_portal_1_body_entered(body):
	if (body.get_name() == "Player"):
		body.position = Vector2(-1233, 623)


func _on_area_2d_5_body_entered(body):
	if (body.get_name() == "Player"):
		body.position = Vector2(-1233, 623)


func _on_area_portal_2_body_entered(body):
	if (body.get_name() == "Player"):
		body.position = Vector2(-967.639, 636.467)


func _on_area_portal_3_body_entered(body):
	if (body.get_name() == "Player"):
		body.position = Vector2(-786, 644)


func _on_area_portal_end_body_entered(body):
	if (body.get_name() == "Player"):
		get_tree().change_scene_to_packed(end_scene)
