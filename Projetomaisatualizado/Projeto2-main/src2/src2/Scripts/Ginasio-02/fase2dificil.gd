extends Node2D

onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")


var playerPosition = Vector2(50, 290)

var player

func iniciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player

func _ready():
#	$Player/Camera.current = false
#
#	$Camera2D.limit_left = 0
#	$Camera2D.limit_bottom = 1023
#	$Camera2D.limit_top = 0
#	$Camera2D.limit_right = 2054
	player = iniciarPlayer(playerPosition)

	add_child(player)
	playerPosition.x = 0
	player.lanterna.enabled = false
	#player.camera.limit_left = 0
	#player.camera.limit_bottom = 1023
	#player.camera.limit_top = 0
	#player.camera.limit_right = 2054
	#player.lanterna.texture_scale = 0.3

#Funções que indicam a próxima fase e o mapa anterior

func _on_Area2D2_body_entered(body):
	get_tree().change_scene("res://Cenas/fase2medio.tscn")
	
func _on_Area2D_body_entered(body):
	if Global.fase1 == true:
		get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")
	else:
		print("nn terminou") #fazer com balao de fala
