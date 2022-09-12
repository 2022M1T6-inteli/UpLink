extends Node2D

onready var preEstrela = preload("res://Cenas/Outros/Estrelas/Star.tscn")
onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var preBalao = preload("res://Cenas/Outros/Balao.tscn")

#Bloco de código acima tem função apenas de tornar de fácil acesso e processamento as cenas que serão exigidas e exibidas durante a fase

var estrelaPosition1 = Vector2(300, 157)
var estrelaPosition2 = Vector2(875, 850)
var estrelaPosition3 = Vector2(1130, 345)

var playerPosition = Vector2(45, 410)


#Os 3 Blocos acima criam variáveis que assumem a posição de cada elemento através de um vetor posição

var estrela1
var estrela2
var estrela3

var player

#Acima temos a declaração de variáveis correspondentes a cada elemento utilizado na tela 

func _ready():
	estrela1 = inciarEstrela(estrelaPosition1)
	estrela2 = inciarEstrela(estrelaPosition2)
	estrela3 = inciarEstrela(estrelaPosition3)
	
	player = inciarPlayer(playerPosition)
	
#Ao chamarmos a função genérica "iniciaX" fazemos com que cada elemento tenha uma variável respectiva
	
	add_child(estrela1)
	add_child(estrela2)
	add_child(estrela3)

	#Nesse bloco acima, em específico, cria-se a cena da estrela preenchida, o que representa que a estrela foi coletada, mas inicialmente precisamos da estrela preta apenas, por isso, ao criar o nó, logo em seguida utiliza-se o método hide() para que as estrelas não sejam visíveis
	
	add_child(player)
	Global.stars = 3
	
	player.lanterna.enabled = true
	player.camera.limit_left = 0
	player.camera.limit_top = 0
	player.camera.limit_bottom = 1024
	player.camera.limit_right = 2054
	player.camera.zoom = Vector2(0.5, 0.5)
	player.lanterna.texture_scale = 0.36
	
	#Declara-se uma variável que indica o número de estrelas na cena
	
func _process(delta):
	
#Cada "if" acima representa a lógica de que se há 2 estrelas no labirinto, 1 já foi coletada e, através do método show(), exibimos as estrelas coletadas com base no número de estrelas restantes
	if Global.openDialogue:
		$Labirinto2/CanvasModulate.visible = false
#		box.visible = true
		Global.stop = true
		
#Cada "if" acima representa a lógica de que se há 2 estrelas no labirinto, 1 já foi coletada e, através do método show(), exibimos as estrelas coletadas com base no número de estrelas restantes

func inciarEstrela(posicao):
	var estrela = preEstrela.instance()
	estrela.position = posicao
	return estrela
	
func inciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player
	
#Através da função genérica "iniciarX", a variável de cada objeto puxa sua respectiva cena e sua respectiva posição
	
#func existeEstrela():
#	if not is_instance_valid(estrela1) and not is_instance_valid(estrela2) and not is_instance_valid(estrela3):
#		Global.stop = true

func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Cenas/Ginasio-01/Cena3.tscn")
