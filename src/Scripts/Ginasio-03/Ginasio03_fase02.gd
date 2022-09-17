extends Node2D

onready var preEstrela = preload("res://Cenas/Outros/Estrelas/Star.tscn")
onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")

var estrelaPosition1 = Vector2(77, -300 )
var estrelaPosition2 = Vector2(73, 201 )
var estrelaPosition3 = Vector2(196, 360  )
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
		get_tree().reload_current_scene()

func _on_End_body_entered(body):
	get_tree().change_scene("res://Cenas/Ginasio-03/Ginasio03_fase03.tscn")
