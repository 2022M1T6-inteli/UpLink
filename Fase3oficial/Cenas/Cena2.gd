extends Node2D

onready var preEstrela = preload("res://Cenas/Star.tscn")
onready var prePlayer = preload("res://Cenas/Player.tscn")
onready var preBalao = preload("res://Cenas/Balão.tscn").instance()

var estrelaPosition1 = Vector2(154,95)
var estrelaPosition2 = Vector2(558,200)
var estrelaPosition3 = Vector2(428,493)
var playerPosition = Vector2(30,415)
var estrela1
var estrela2
var estrela3
var player
var preBalaoPosition = Vector2(533,355)

func _ready():
	estrela1 = inciarEstrela(estrelaPosition1)
	estrela2 = inciarEstrela(estrelaPosition2)
	estrela3 = inciarEstrela(estrelaPosition3)
	player = inciarPlayer(playerPosition)
	add_child(estrela1)
	add_child(estrela2)
	add_child(estrela3)
	add_child(player)
	Global.stars = 3
	
func _process(delta):
	if Global.openDialogue:
		add_child(preBalao)
		Global.stop = true
		Global.openDialogue = false
	print(is_instance_valid(estrela1))

func inciarEstrela(posicao):
	var estrela = preEstrela.instance()
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
