extends Area2D


func _on_body_entered(body: PhysicsBody2D):
	if (body.get_name() == "Player"):
		body.position = Vector2(438, 153)


func _on_fall_area_2_body_entered(body):
	if (body.get_name() == "Player"):
		body.position = Vector2(1401, 171)
