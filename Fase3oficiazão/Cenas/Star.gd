extends Area2D


func _on_Star_body_entered(body):
	if body.name == "Player":
		queue_free()
