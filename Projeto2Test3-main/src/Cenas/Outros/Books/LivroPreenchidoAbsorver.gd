extends Area2D

func _ready():
	$LivroPreenchidoAbsorver2/AnimationPlayer.play("Star")
	
func _on_LivroPreenchidoAbsorver_body_entered(body):
	if body.name == "Player":
		Global.numLivros += 1
		hud_ginasio01.livroConsumido(Global.numLivros)
		Global.percentVisionGinasio01 += 0.03
		queue_free()
