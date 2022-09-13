extends Node2D

onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")


var playerPosition = Vector2(70, 290)

var player

func iniciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player

func _ready():
#	$Player/Camera.current = false

	player = iniciarPlayer(playerPosition)

	add_child(player)
	
	player.camera.limit_left = 0
	player.camera.limit_bottom = 480
	player.camera.limit_top = 0
	player.camera.limit_right = 1010
	player.camera.zoom = Vector2(0.5, 0.5)
	
func _process(delta):
	if Global.count >= 14:
		Global.fase1 = true
	else: 
		Global.fase1 = false

#Funções que indicam a próxima fase e o mapa anterior

func _on_Area2D2_body_entered(body):
	get_tree().change_scene("res://Cenas/fase2medio.tscn")
	
func _on_Area2D_body_entered(body):
	if Global.fase1 == true:
		get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")
