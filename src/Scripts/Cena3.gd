extends Node2D

onready var preEstrelaPreta = preload("res://Cenas/EstrelaPreta.tscn")
onready var preEstrelaInventario = preload("res://Cenas/Estrelinha.tscn")
onready var preEstrela = preload("res://Cenas/Star.tscn")
onready var prePlayer = preload("res://Cenas/Player.tscn")
onready var preBalao3 = preload("res://Cenas/Balão3.tscn").instance()

#Bloco de código acima tem função apenas de tornar de fácil acesso e processamento as cenas que serão exigidas e exibidas durante a fase

var estrelaPosition1 = Vector2(40,34)
var estrelaPosition2 = Vector2(641,109)
var estrelaPosition3 = Vector2(416,468)

var estrelaInventarioPosition1 = Vector2(983, 37)
var estrelaInventarioPosition2 = Vector2(935, 37)
var estrelaInventarioPosition3 = Vector2(887, 37)

var estrelaPretaPosition1 = Vector2(983, 37)
var estrelaPretaPosition2 = Vector2(935, 37)
var estrelaPretaPosition3 = Vector2(887, 37)

var playerPosition = Vector2(27,524)
var preBalaoPosition = Vector2(533,355)

#Os 3 Blocos acima criam variáveis que assumem a posição de cada elemento através de um vetor posição

var estrela1
var estrela2
var estrela3

var estrelaInventario1
var estrelaInventario2
var estrelaInventario3

var estrelaPreta1
var estrelaPreta2
var estrelaPreta3

var player

#Acima temos a declaração de variáveis correspondentes a cada elemento utilizado na tela 

func _ready():
	estrela1 = inciarEstrela(estrelaPosition1)
	estrela2 = inciarEstrela(estrelaPosition2)
	estrela3 = inciarEstrela(estrelaPosition3)
	
	estrelaPreta1 = iniciarEstrelaPreta(estrelaPretaPosition1)
	estrelaPreta2 = iniciarEstrelaPreta(estrelaPretaPosition2)
	estrelaPreta3 = iniciarEstrelaPreta(estrelaPretaPosition3)
	
	estrelaInventario1 = iniciarEstrelaInventario(estrelaInventarioPosition1)
	estrelaInventario2 = iniciarEstrelaInventario(estrelaInventarioPosition2)
	estrelaInventario3 = iniciarEstrelaInventario(estrelaInventarioPosition3)
	
	player = inciarPlayer(playerPosition)
	
#Ao chamarmos a função genérica "iniciaX" fazemos com que cada elemento tenha uma variável respectiva
	
	add_child(estrela1)
	add_child(estrela2)
	add_child(estrela3)
	
	add_child(estrelaPreta1)
	add_child(estrelaPreta2)
	add_child(estrelaPreta3)

#Com o método add_child(), fazemos com que todos os elementos criados sejam representados em tela
	
	add_child(estrelaInventario1)
	estrelaInventario1.hide()
	add_child(estrelaInventario2)
	estrelaInventario2.hide()
	add_child(estrelaInventario3)
	estrelaInventario3.hide()
	
	#Nesse bloco acima, em específico, cria-se a cena da estrela preenchida, o que representa que a estrela foi coletada, mas inicialmente precisamos da estrela preta apenas, por isso, ao criar o nó, logo em seguida utiliza-se o método hide() para que as estrelas não sejam visíveis
	
	add_child(player)
	Global.stars = 3
	
	player.light2d.enabled = true
	player.light2d.texture_scale = 0.7
	
	#Declara-se uma variável que indica o número de estrelas na cena
	
func _process(delta):
	if Global.stars == 2:
		estrelaInventario3.show()
	if Global.stars == 1:
		estrelaInventario2.show()
	if Global.stars == 0:
		estrelaInventario1.show()
		
#Cada "if" acima representa a lógica de que se há 2 estrelas no labirinto, 1 já foi coletada e, através do método show(), exibimos as estrelas coletadas com base no número de estrelas restantes
	
	if Global.openDialogue:
		$CanvasModulate.visible = false
		add_child(preBalao3)
		Global.stop = true
		Global.openDialogue = false
	print(is_instance_valid(estrela1))
	
func iniciarEstrelaPreta(posicao):
	var estrela = preEstrelaPreta.instance()
	estrela.position = posicao
	return estrela
	
func iniciarEstrelaInventario(posicao):
	var estrela = preEstrelaInventario.instance()
	estrela.position = posicao
	return estrela

func inciarEstrela(posicao):
	var estrela = preEstrela.instance()
	estrela.position = posicao
	return estrela
	
func inciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player
	
func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Cenas/mapaprovisorio.tscn")
