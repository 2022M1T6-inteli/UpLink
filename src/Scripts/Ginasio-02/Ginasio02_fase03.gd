extends Node2D

onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var conteudo = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()


var playerPosition = Vector2(50, 380)

var player

func iniciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player

func _ready():
	$SoundX.play()
#	$Player/Camera.current = false

	player = iniciarPlayer(playerPosition)
	add_child(player)
	
	add_child(conteudo)
	Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instruGym2Level1"]["talk01"]
	conteudo.load_Instru()
	
	player.camera.limit_left = 0
	player.camera.limit_bottom = 768
	player.camera.limit_top = 0
	player.camera.limit_right = 1512
	player.camera.zoom = Vector2(1, 1)
	
func _process(delta):
	if Global.count >= 14:
		Global.Gin02preBoss = true

#Funções que indicam a próxima fase e o mapa anterior
	

func _on_ChangePreBoss_body_entered(body):
	if Global.Gin02preBoss == true:
		get_tree().change_scene("res://Cenas/Ginasio-02/Ginasio02_pre_boss_fight.tscn")
		Global.count = 0
	else: 
		add_child(conteudo)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instruGym2Level1"]["talk02"]
		conteudo.load_balao()
