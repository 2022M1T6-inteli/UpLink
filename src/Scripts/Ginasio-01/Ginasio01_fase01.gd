extends Node2D

#As linhas de código abaixo tem função apenas de tornar de fácil acesso e processamento as cenas que serão exigidas e exibidas durante a fase
onready var preEstrela = preload("res://Cenas/Outros/Estrelas/Star.tscn")
onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var balao = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()
onready var hud = preload("res://Cenas/Ginasio-01/Ginasio01_HUD.tscn")
onready var livro = preload("res://Cenas/Outros/Books/LivroPreenchidoAbsorver.tscn").instance()

#As linhas de codigo abaixo criam variáveis que assumem a posição de cada elemento através de um vetor posição
var estrelaPosition1 = Vector2(80, 50)
var estrelaPosition2 = Vector2(840, 795)
var estrelaPosition3 = Vector2(1330, 170)
var playerPosition = Vector2(12,878)
var livroPosition1 = Vector2 (700, 900)

#Abaixo temos a declaração de variáveis correspondentes a cada elemento utilizado na tela
var estrela1
var estrela2
var estrela3

var player

var statusBalaoUm = true
var statusBalaoDois = true
var statusBalaoTres = true
var statusBalaoQuatro = true
var statusBalaoCinco = true

var livro1

#Através da função genérica "iniciarX", a variável de cada objeto puxa sua respectiva cena e sua respectiva posição
func _ready():
	hud_ginasio01.ativarHUDGinasio01()
	Global.numLivros = 0
	#$DarkScene.play()
	estrela1 = iniciarEstrela(estrelaPosition1)
	estrela2 = iniciarEstrela(estrelaPosition2)
	estrela3 = iniciarEstrela(estrelaPosition3)
	
	livro1 = iniciarLivro(livroPosition1)
	
	player = iniciarPlayer(playerPosition)
		
	player.lanterna.enabled = true
	player.camera.limit_left = 0
	player.camera.limit_bottom = 1023
	player.camera.limit_top = 0
	player.camera.limit_right = 2054
	player.camera.zoom = Vector2(1, 1)


func _process(delta):
	player.lanterna.texture_scale = Global.percentVisionGinasio01
	

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

func iniciarLivro(posicao):
	livro.position = posicao
	add_child(livro)
	return livro

func _on_LivroBalaoUm_body_entered(body):
	if statusBalaoUm == true:
		add_child(balao)
		balao.load_dialogo('teste2')
		statusBalaoUm = false

func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Cenas/Ginasio-01/Ginasio01_fase02.tscn")
	hud_ginasio01.resetEstrelasPreenchidas()
