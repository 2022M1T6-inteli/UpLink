extends KinematicBody2D

const aceleracao = 100
const atrito = 50
const velocidade_Max = 420

var velocidade = Vector2.ZERO 

onready var animationPlayer = $AnimationPlayer

func _physics_process(delta):
	var input_vector = Vector2.ZERO 
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		if input_vector.x != 0:
			if input_vector.x > 0:
				animationPlayer.play("andardireita")
			else:
				animationPlayer.play("andaresquerda")
		else:
				if input_vector.y > 0:
					animationPlayer.play("andarbaixo")
				else: 
					animationPlayer.play("andarcima")
		velocidade = velocidade.move_toward(input_vector * velocidade_Max, aceleracao * delta)
	else: 
		animationPlayer.play("paradodireita")
		velocidade = velocidade.move_toward(Vector2.ZERO, atrito * delta)
		
	velocidade = move_and_slide(velocidade)


