extends Node2D

onready var preEstrela = preload("res://Cenas/Outros/Estrelas/Star.tscn")
onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var balao = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()
onready var hud_colunas3 = preload("res://Cenas/Ginasio-03/HUD_Colunas3.tscn").instance()

var estrelaPosition1 = Vector2(678, 770 )
var estrelaPosition2 = Vector2(356, 1200 )
var estrelaPosition3 = Vector2(678, 1352 )
var playerPosition = Vector2(525,115)

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
	
	add_child(hud_colunas3)
	add_child(estrela1)
	add_child(estrela2)
	add_child(estrela3)
	add_child(player)
	
	player.camera.current = true
	player.camera.limit_left = 82
	player.camera.limit_bottom = 2860
	player.camera.limit_top = 0
	player.camera.limit_right = 958
	player.camera.zoom = Vector2(0.855, 0.855)
	
func inciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()
		#fechar dialogo pergunta
		#abrir nova pergunta de dialogo

func _on_End_body_entered(body):
	get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")

#ao entrar colocar pergunta 1

func _on_Area2D0_body_entered(body):
	add_child(balao)
	balao.load_Instru('Data')

func _on_Area2D1_body_entered(body):
	add_child(balao)
	balao.load_Instru('Visao')
	# tirar pergunta e colocar pergunta 2 
	
func _on_Area2D2_body_entered(body):
	add_child(balao)
	balao.load_Instru('Stake')
	# tirar pergunta 2 e colocar pergunta 3
	
func _on_Area2D3_body_entered(body):
	add_child(balao)
	balao.load_Instru('Road')
	# tirar pergunta 3 e colocar pergunta 4

func _on_Area2D4_body_entered(body):
	add_child(balao)
	balao.load_Instru('Back')
	# tirar pergunta 4 e colocar pergunta 5

func _on_Area2D5_body_entered(body): # nn util só teste
	add_child(balao)
	balao.load_Instru('ginasio3fase35')
	# tirar pergunta 5


