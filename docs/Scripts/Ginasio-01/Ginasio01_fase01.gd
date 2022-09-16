extends Node2D

#As linhas de código abaixo tem função apenas de tornar de fácil acesso e processamento as cenas que serão exigidas e exibidas durante a fase
onready var preEstrela = preload("res://Cenas/Outros/Estrelas/Star.tscn")
onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
#onready var preBalao = preload("res://Cenas/Outros/Balao.tscn").instance()
onready var hud = preload("res://Cenas/Ginasio-01/Ginasio01_HUD.tscn")

#As linhas de codigo abaixo criam variáveis que assumem a posição de cada elemento através de um vetor posição
var estrelaPosition1 = Vector2(80, 50)
var estrelaPosition2 = Vector2(840, 795)
var estrelaPosition3 = Vector2(1330, 170)
var playerPosition = Vector2(12,878)

#Abaixo temos a declaração de variáveis correspondentes a cada elemento utilizado na tela
var estrela1
var estrela2
var estrela3

var player

#Através da função genérica "iniciarX", a variável de cada objeto puxa sua respectiva cena e sua respectiva posição
func _ready():
	hud_ginasio01.ativarHUDGinasio01()
	Global.numStars = 0
	$DarkScene.play()
	estrela1 = iniciarEstrela(estrelaPosition1)
	estrela2 = iniciarEstrela(estrelaPosition2)
	estrela3 = iniciarEstrela(estrelaPosition3)
	
	player = iniciarPlayer(playerPosition)
		
	player.lanterna.enabled = true
	player.camera.limit_left = 0
	player.camera.limit_bottom = 1023
	player.camera.limit_top = 0
	player.camera.limit_right = 2054
	player.camera.zoom = Vector2(1, 1)

	
	
func _process(delta):
	player.lanterna.texture_scale = Global.percentVisionGinasio01
	
	#if Global.openDialogue:
	#	$CanvasModulate.visible = false
	#	add_child(preBalao)
	#	Global.stop = true
	#	Global.openDialogue = false

func iniciarEstrela(posicao):
	var estrela = preEstrela.instance()
	estrela.position = posicao
	add_child(estrela)
	return estrela

func iniciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	add_child(player)
	return player
	
func _on_Area2D_body_entered(body):
		get_tree().change_scene("res://Cenas/Ginasio-01/Ginasio01_fase02.tscn")
		hud_ginasio01.resetEstrelasPreenchidas()
