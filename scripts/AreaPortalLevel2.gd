extends Area2D

@onready var game = preload("res://scenes/game.tscn") as PackedScene
@onready var game_3 = preload("res://scenes/game3.tscn") as PackedScene

func _on_body_entered(body):
	if (body.get_name() == "Player"):
		body.position = Vector2(-2220.469, -125.645)


func _on_area_portal_1_body_entered(body):
	if (body.get_name() == "Player"):
		body.position = Vector2(-2219, -8)
	
	
func _on_area_portal_2_body_entered(body):
	if (body.get_name() == "Player"):
		body.position = Vector2(-2220.469, -125.645)

func _on_area_portal_3_body_entered(body):
	if (body.get_name() == "Player"):
		body.position = Vector2(-2219, -8)


func _on_area_portal_4_body_entered(body):
	if (body.get_name() == "Player"):
		body.position = Vector2(-2012.777, 216.513)
		

func _on_area_portal_back_body_entered(body):
	get_tree().change_scene_to_packed(game)
	#body.position = Vector2(1876, 379)


func _on_area_portal_5_body_entered(body):
	get_tree().change_scene_to_packed(game_3)
