extends Area2D


var checkpoint_pos = 0

func _on_checkpoint_body_entered(body):
	if body.name == "Player":
		body.hit_checkpoint()
