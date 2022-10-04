extends Node2D

onready var preEstrela = preload("res://Cenas/Outros/Estrelas/Star.tscn")
onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var conteudo = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()
onready var hud_colunas2 = preload("res://Cenas/Ginasio-03/HUD_Colunas2.tscn").instance()

var estrelaPosition1 = Vector2(308, 1061)
var estrelaPosition2 = Vector2(566,622)
var estrelaPosition3 = Vector2(398, 846)
var playerPosition = Vector2(525,215)

var estrela1
var estrela2
var estrela3
var player
var statusTutorial = true

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
	add_child(hud_colunas2)
	
	player.camera.current = true
	player.camera.limit_left = 0
	player.camera.limit_bottom = 2859
	player.camera.limit_top = 0
	player.camera.limit_right = 873
	player.camera.zoom = Vector2(0.855, 0.855)
	
func inciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		player.position = playerPosition

func _on_End_body_entered(body):
	get_tree().change_scene("res://Cenas/Ginasio-03/Ginasio03_fase03.tscn")

#colocar pergunta 1 ao iniciar

func _on_Area2D0_body_entered(body):
	#add_child(conteudo)
	#conteudo.load_Instru('UserKP')
	conteudo.load_Instru()


func _on_Area2D1_body_entered(body):
	pass
#	conteudo.load_Instru('Buss')
	#tirar pergunta 1 e colocar pergunta 2

func _on_Area2D2_body_entered(body):
	add_child(conteudo)
	
#	conteudo.load_Instru('Quali')
	#tirar pergunta 2 e colocar pergunta 3

func _on_Area2D3_body_entered(body):
	add_child(conteudo)
#	conteudo.load_Instru('Dev')
	#tirar pergunta 3 e colocar pergunta 4

func _on_Area2D4_body_entered(body):
	add_child(conteudo)
	conteudo.load_Instru('ginasio3fase3')

func _on_Area2D6_body_entered(body):
	if statusTutorial == true:
		add_child(conteudo)
#		conteudo.load_Instru('Tutorial')
		statusTutorial = false 

