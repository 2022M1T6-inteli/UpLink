extends Node2D

onready var preEstrela = preload("res://Cenas/Outros/Estrelas/Star.tscn")
onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")

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
	
	add_child(estrela1)
	add_child(estrela2)
	add_child(estrela3)
	add_child(player)
	
	player.camera.current = true
	player.camera.limit_left = 0
	player.camera.limit_bottom = 2860
	player.camera.limit_top = 0
	player.camera.limit_right = 978
	player.camera.zoom = Vector2(0.855, 0.855)
	
func inciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()
		get_tree().change_scene("res://Cenas/Ginasio-03/Ginasio03_pre_boss_fight.tscn")

#func _on_End_body_entered(body):
#	get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")

