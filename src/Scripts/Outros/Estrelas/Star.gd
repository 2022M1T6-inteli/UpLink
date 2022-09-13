extends Area2D

func _ready():
	$Star/AnimationPlayer.play("Star")
	
	#Chama a animação da estrela

func _on_Star_body_entered(body):
	if body.name == "Player":
		
		Global.stars -= 1
		if Global.stars == 0:
			Global.openDialogue = true
		queue_free()

#Bloco para identificar no algoritmo de que o personagem capturou uma estrela e, através do método queue_free(), sumir a estrela do mapa
