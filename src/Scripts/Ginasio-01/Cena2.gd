extends Node2D

#As linhas de código abaixo tem função apenas de tornar de fácil acesso e processamento as cenas que serão exigidas e exibidas durante a fase
onready var preEstrela = preload("res://Cenas/Outros/Estrelas/Star.tscn")
onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var preBalao2 = preload("res://Cenas/Outros/Balao2.tscn").instance()

#As linhas de codigo abaixo criam variáveis que assumem a posição de cada elemento através de um vetor posição
var estrelaPosition1 = Vector2(300, 157)
var estrelaPosition2 = Vector2(875, 850)
var estrelaPosition3 = Vector2(1130, 345)
var playerPosition = Vector2(45, 710)

#Abaixo temos a declaração de variáveis correspondentes a cada elemento utilizado na tela
var estrela1
var estrela2
var estrela3

var player

#Através da função genérica "iniciarX", a variável de cada objeto puxa sua respectiva cena e sua respectiva posição
func _ready():
	estrela1 = iniciarEstrela(estrelaPosition1)
	estrela2 = iniciarEstrela(estrelaPosition2)
	estrela3 = iniciarEstrela(estrelaPosition3)
	
	player = iniciarPlayer(playerPosition)
	
	hud_global.controleEstrelaMapa(true)
	
	#Com o método add_child(), fazemos com que todos os elementos criados sejam representados em tela
	add_child(estrela1)
	add_child(estrela2)
	add_child(estrela3)
	
	add_child(player)
	
	#Declara-se uma variável que indica o número de estrelas na cena
	Global.stars = 3
	
	player.lanterna.enabled = true
	player.camera.limit_left = 0
	player.camera.limit_bottom = 1024
	player.camera.limit_top = 0
	player.camera.limit_right = 2054
	player.camera.zoom = Vector2(1, 1)
	player.lanterna.texture_scale = 0.36
	
func _process(delta):
	if Global.openDialogue:
		$CanvasModulate.visible = false
		add_child(preBalao2)
		Global.stop = true
		Global.openDialogue = false
		
func iniciarEstrela(posicao):
	var estrela = preEstrela.instance()
	estrela.position = posicao
	return estrela
	
func iniciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player
	
func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Cenas/Ginasio-01/Cena3.tscn")
	
	
	
	
	#Nesse bloco acima, em específico, cria-se a cena da estrela preenchida, o que representa que a estrela foi coletada, mas inicialmente precisamos da estrela preta apenas, por isso, ao criar o nó, logo em seguida utiliza-se o método hide() para que as estrelas não sejam visíveis
