extends Node2D

onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
var playerPosition = Vector2(525,215)

var player

func _ready():
	player = inciarPlayer(playerPosition)
	add_child(player)
	player.camera.current = true
	player.camera.limit_left = 0
	player.camera.limit_bottom = 2200
	player.camera.limit_top = 0
	player.camera.limit_right = 1025
	player.scale = Vector2(2, 2)
	
func inciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()

func _on_End_body_entered(body):
	get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")
