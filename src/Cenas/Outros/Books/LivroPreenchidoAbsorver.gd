extends Area2D

func _on_Area2D_body_entered(body):
	pass # Replace with function body.


func _ready():
	$LivroPreenchidoAbsorver/AnimationPlayer.play("Star")
	
func _on_LivroPreenchidoAbsorver_body_entered(body):
	if body.name == "Player":
		Global.numLivros += 1
		hud_ginasio01.livroConsumido(Global.numLivros)
		queue_free()
		Global.percentVisionGinasio01 += 0.03
