extends KinematicBody2D



func _physics_process(delta):
	if Global.stop == false:
		if Input.is_action_pressed("ui_left"):
			$AnimationPlayer.play('Esquerda')			
		elif Input.is_action_pressed("ui_right"):
			$AnimationPlayer.play('Direita')
		elif Input.is_action_pressed("ui_up"):
			$AnimationPlayer.play("Cima")
		elif Input.is_action_pressed("ui_down"):
			$AnimationPlayer.play("Baixo")
			
#Bloco de "if's e elif's" para rodar a animação correta segundo o input de movimentação da personagem, com verificação se a jogabilidade está parada ou não
			
		var vector_movement=Vector2.ZERO
		vector_movement.x = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
		vector_movement.y = Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
		
		move_and_slide(vector_movement*200)
		
#Acima tem-se uma identificação de qual o deslocamento do personagem no eixo x e y e uma uniformização da intensidade do movimento por tempo

	
