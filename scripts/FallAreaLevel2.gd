extends Area2D

func _on_body_entered(body):
	if (body.get_name() == "Player"):
		body.position = Vector2(-3374, 172)


func _on_area_2d_2_body_entered(body):
	if (body.get_name() == "Player"):
		body.position = Vector2(-2123, 192)
