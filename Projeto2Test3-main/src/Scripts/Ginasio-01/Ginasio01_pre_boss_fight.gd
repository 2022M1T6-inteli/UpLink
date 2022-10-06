extends Node2D

onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var preNPC1 = preload("res://Cenas/NPC's/NPC1.tscn")

var playerPosition = Vector2(16,310)
var NPC1Position = Vector2(927, 320)

var player
var NPC1

func _ready():
	#$AudioStreamPlayer2D.play()
	player = iniciarPlayer(playerPosition)
	NPC1 = iniciarNPC1(NPC1Position)
	
#	hud_global.controleEstrelaMapa(false)
	
	add_child(player)
	add_child(NPC1)
	
	player.lanterna.enabled = false
	player.camera.limit_left = 0
	player.camera.limit_bottom = 697
	player.camera.limit_top = 0
	player.camera.limit_right = 1023
	player.camera.zoom = Vector2(1, 1)
	
func iniciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player
	
func iniciarNPC1(posicao):
	var NPC1 = preNPC1.instance()
	NPC1.position = posicao
	return NPC1


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")
