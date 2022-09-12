extends Node2D

onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")


var playerPosition = Vector2(50, 290)

var player

func iniciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player
	
func _ready():
	player = iniciarPlayer(playerPosition)
	
	add_child(player)

#Funções que indicam a próxima fase e o mapa anterior

func _on_Area2D2_body_entered(body):
	get_tree().change_scene("res://Cenas/fase2facil.tscn")
	
func _on_Area2D_body_entered(body):
	if Global.fase1 == true:
		get_tree().change_scene("res://Cenas/Ginasio-02/fase2dificil.tscn")
	else:
		print("nn terminou") #fazer com balao de fala
	
