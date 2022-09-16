extends Area2D


func _ready():
	$Star/AnimationPlayer.play("Star")
	
	#Chama a animação da estrela

func _on_Star_body_entered(body):
	if body.name == "Player":
		Global.numStars += 1
		hud_ginasio01.estrelaConsumida(Global.numStars)
		queue_free()
		
		Global.percentVisionGinasio01 += 0.03

#Bloco para identificar no algoritmo de que o personagem capturou uma estrela e, através do método queue_free(), sumir a estrela do mapa
