extends Node2D

onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var conteudo = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()

#func _on_Area2D2_body_entered(body):

var playerPosition = Vector2(50, 290)

var player

func iniciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = playerPosition
	return player
	
func _ready():
	$SoundX.play()
	#$Player/Camera.current = false
	player = iniciarPlayer(playerPosition)

	add_child(player)
	
	#adicionando o balao de instrução para dizer ao player o próximo passo dentro do jogo
	add_child(conteudo)
	Global.current_dialogo = Global.dialogo["language"]["eng"]["instructions"]["gym2"]
	conteudo.load_balao()
	
	player.camera.limit_left = 0
	player.camera.limit_bottom = 736
	player.camera.limit_top = 0
	player.camera.limit_right = 1504
	player.camera.zoom = Vector2(1, 1)
	
	Global.countX = 14
	Global.countO = 0
	Global.countO = 0
	Global.countMov = 0
	
	

	add_child(conteudo)
	Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instruGym2Level1"]["talk01"]
	conteudo.load_Instru()

	
func _process(delta):
	if Global.countX <= 2 and Global.countT >= 7:
		Global.Gin02Fase02Enabled = true


#Funções que indicam a próxima fase e o mapa anterior

func _on_ChangeFase02_body_entered(body):
	if Global.Gin02Fase02Enabled == true:
		get_tree().change_scene("res://Cenas/Ginasio-02/Ginasio02_fase02.tscn")
		Global.countMov = 0
	else: 
		add_child(conteudo)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instruGym2Level1"]["talk02"]
		#"Resolva o desafio antes de ir para a próxima fase"
		conteudo.load_balao()
		
