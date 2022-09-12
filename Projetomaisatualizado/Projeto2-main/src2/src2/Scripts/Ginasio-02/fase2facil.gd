extends Node2D

onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")


var playerPosition = Vector2(50, 290)

var player

func iniciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = playerPosition
	return player
	
func _ready():
#	$Player/Camera.current = false
#
#	$Camera2D.limit_left = -5
#	$Camera2D.limit_bottom = 1023
#	$Camera2D.limit_top = 0
#	$Camera2D.limit_right = 2054
#
	player = iniciarPlayer(playerPosition)

	add_child(player)

#Funções que indicam a próxima fase e o mapa anterior

func _on_Area2D2_body_entered(body):
	get_tree().change_scene("res://Cenas/mapaginasiofase1.tscn")
	
func _on_Area2D_body_entered(body):
	if Global.fase1 == true:
		get_tree().change_scene("res://Cenas/Ginasio-02/fase2medio.tscn")
	else:
		print("nn terminou") #fazer com balao de fala
	
