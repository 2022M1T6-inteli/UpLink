extends KinematicBody2D

export onready var lanterna = $Lanterna
export onready var camera = $Camera


#Inicialização de valores a serem usados na movimentação do personagem

const aceleracao = 300
const atrito = 20000
const velocidade_Max = 300
#const velocidade_Max = 800

var velocidade = Vector2.ZERO 

onready var animationPlayer = $AnimationPlayer

#Função responsável por identificar a direção de deslocamento e modularizar a intensidade do movimento, já chamando as animações respectivas a cada movimento

func _physics_process(delta):
	
	if !Global.stop:
		var input_vector = Vector2.ZERO 
		input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
		input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
		input_vector = input_vector.normalized()
		
		
		if input_vector != Vector2.ZERO:
			if input_vector.x != 0:
				if input_vector.x > 0:
					animationPlayer.play("Direita")
				else:
					animationPlayer.play("Esquerda")
			else:
					if input_vector.y > 0:
						animationPlayer.play("Baixo")
					else: 
						animationPlayer.play("Cima")
			velocidade = velocidade.move_toward(input_vector * velocidade_Max, 100)
		else: 
			#animationPlayer.play("paradodireita")
			animationPlayer.stop()
			velocidade = velocidade.move_toward(Vector2.ZERO, 100)

		velocidade = move_and_slide(velocidade)

#func _ready():
#	position.x = Global.checkpoint_pos
	
func hit_checkpoint():
	Global.checkpoint_pos = position.x
