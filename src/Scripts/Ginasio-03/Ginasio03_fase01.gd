extends Node2D

onready var preEstrela = preload("res://Cenas/Outros/Estrelas/Star.tscn")
onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var conteudo = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()
onready var hud_colunas1 = preload("res://Cenas/Ginasio-03/HUD_Colunas1.tscn").instance()

var estrelaPosition1 = Vector2(351, 846 )
var estrelaPosition2 = Vector2(570, 1097 )
var estrelaPosition3 = Vector2(563, 1474 )
var playerPosition = Vector2(525,215)

var estrela1
var estrela2
var estrela3
var player

func iniciarEstrela(posicao):
	var estrela = preEstrela.instance()
	estrela.position = posicao
	return estrela

func _ready():
	
	estrela1 = iniciarEstrela(estrelaPosition1)
	estrela2 = iniciarEstrela(estrelaPosition2)
	estrela3 = iniciarEstrela(estrelaPosition3)
	player = inciarPlayer(playerPosition)
	
	add_child(estrela1)
	add_child(estrela2)
	add_child(estrela3)
	add_child(player)
	add_child(hud_colunas1)
	
	player.camera.current = true
	
	player.camera.limit_left = 0
	player.camera.limit_bottom = 2511
	player.camera.limit_top = 0
	player.camera.limit_right = 875
	
	player.camera.zoom = Vector2(0.855, 0.855)
	
	#adicionando o balao de instrução para dizer ao player o próximo passo dentro do jogo

func inciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()

func _on_End_body_entered(body):
	get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")

func _on_Area2D1_body_entered(body):
#	balao.load_Instru('DD')
	add_child(conteudo)
	global.current_dialogo = global.dialogo["language"]["eng"]["dialogo"]["contentLobby"]["doubleDiamond"]
	conteudo.load_Instru()

func _on_Area2D2_body_entered(body):
	add_child(conteudo)
#	balao.load_Instru('Lean')

func _on_Area2D3_body_entered(body):
	add_child(conteudo)
#	balao.load_Instru('Human')

func _on_Area2D4_body_entered(body):
	add_child(conteudo)
#	balao.load_Instru('XP')

func _on_Area2D5_body_entered(body):
	add_child(conteudo)
#	balao.load_Instru('ginasio3fase34')
