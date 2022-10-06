extends Node2D

onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var conteudo = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()

func _on_Area2D2_body_entered():
	add_child(conteudo)
	conteudo.load_Instru('ginasio2fase2')


var playerPosition = Vector2(50, 290)

var player

func iniciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player
	
func _ready():
	$SoundX.play()
	player = iniciarPlayer(playerPosition)
	add_child(player)
	
	add_child(conteudo)
	Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instruGym2Level2"]["talk01"]
	conteudo.load_Instru()
	
	player.camera.limit_left = 0
	player.camera.limit_bottom = 735
	player.camera.limit_top = 0
	player.camera.limit_right = 1500
	player.camera.zoom = Vector2(1, 1)
	
	Global.countX = 15
	Global.countO = 0
	Global.countT = 0
	Global.countMov = 0
	
	
func _process(delta):
	if Global.countX <= 1 and Global.countT  >= 9 :
		Global.Gin02Fase03Enabled = true

#Funções que indicam a próxima fase e o mapa anterior
	

func _on_ChangeFase03_body_entered(body):
	if Global.Gin02Fase03Enabled == true:
		get_tree().change_scene("res://Cenas/Ginasio-02/Ginasio02_fase03.tscn")
		Global.countMov = 0
	else: 
		add_child(conteudo)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instruGym2Level1"]["talk02"]
		conteudo.load_balao()
