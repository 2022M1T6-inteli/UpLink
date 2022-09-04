extends Area2D

func _ready():
	$Star/AnimationPlayer.play("Star")

func _on_Star_body_entered(body):
	if body.name == "Player":
		Global.stars -= 1
		if Global.stars == 0:
			Global.openDialogue = true
		queue_free()
