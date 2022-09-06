extends Node2D

onready var preEstrela = preload("res://Cenas/Star.tscn")
onready var preEstrelaPreta = preload("res://Cenas/EstrelaPreta.tscn")
onready var preEstrelaInventario = preload("res://Cenas/Estrelinha.tscn")
onready var prePlayer = preload("res://Cenas/Player.tscn")
onready var preBalao = preload("res://Cenas/Balão.tscn").instance()

var estrelaPosition1 = Vector2(154,95)
var estrelaPosition2 = Vector2(558,200)
var estrelaPosition3 = Vector2(428,493)

var estrelaInventarioPosition1 = Vector2(983, 37)
var estrelaInventarioPosition2 = Vector2(935, 37)
var estrelaInventarioPosition3 = Vector2(887, 37)

var estrelaPretaPosition1 = Vector2(983, 37)
var estrelaPretaPosition2 = Vector2(935, 37)
var estrelaPretaPosition3 = Vector2(887, 37)

var playerPosition = Vector2(30,415)
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
var preBalaoPosition = Vector2(533,355)

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
	add_child(estrela1)
	add_child(estrela2)
	add_child(estrela3)
	
	add_child(estrelaPreta1)
	add_child(estrelaPreta2)
	add_child(estrelaPreta3)
	
	add_child(estrelaInventario1)
	estrelaInventario1.hide()
	add_child(estrelaInventario2)
	estrelaInventario2.hide()
	add_child(estrelaInventario3)
	estrelaInventario3.hide()
	
	add_child(player)
	Global.stars = 3
	
func _process(delta):
	if Global.stars == 2:
		estrelaInventario3.show()
	if Global.stars == 1:
		estrelaInventario2.show()
	if Global.stars == 0:
		estrelaInventario1.show()
	
	if Global.openDialogue:
		add_child(preBalao)
		Global.stop = true
		Global.openDialogue = false
	print(is_instance_valid(estrela1))

func inciarEstrela(posicao):
	var estrela = preEstrela.instance()
	estrela.position = posicao
	return estrela
	
func iniciarEstrelaPreta(posicao):
	var estrela = preEstrelaPreta.instance()
	estrela.position = posicao
	return estrela
	
func iniciarEstrelaInventario(posicao):
	var estrela = preEstrelaInventario.instance()
	estrela.position = posicao
	return estrela
	
func inciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player
	
#func existeEstrela():
#	if not is_instance_valid(estrela1) and not is_instance_valid(estrela2) and not is_instance_valid(estrela3):
#		Global.stop = true

func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Cenas/Cena3.tscn")
