extends Node2D
#Preparação da cena e variável Player que será chamada e posição definida
onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")

var player

var playerPosition = Vector2(0, 340)

func _ready():
	#$SoundLobby.play()
	#$Park.play()
	
	#inicialização da variável como nó e criação desse nó Player
	player = inciarPlayer(Global.playerPosition)
	add_child(player)
	player.camera.current = true
	player.camera.zoom.x = 1.5
	player.camera.zoom.y = 1.5
	
#Função responsável por fazer com que variável receba o nó chamando a cena correta e definindo sua posição
func inciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player

#Funções abaixo são responsáveis por fazer com que ao entrar em uma area2D, o player seja direcionado para uma nova cena respectiva à área

#func _on_Ginasio_01_body_entered(body):
#	get_tree().change_scene("res://Cenas/Ginasio-01/Ginasio01_fase01.tscn")
#	Global.playerPosition = Vector2(783, 1370)

func _on_Ginasio_01_body_entered(body):
	Global.playerPosition = Vector2(783, 1370)
	if Global.foi == true:
		get_tree().change_scene("res://Cenas/Ginasio-01/Ginasio01_fase01.tscn")
	else: 
		pass

func _on_Ginasio_02_body_entered(body):
	get_tree().change_scene("res://Cenas/Ginasio-02/Ginasio02_fase01.tscn")
	Global.playerPosition = Vector2(1230, -1220)

func _on_Ginasio_03_body_entered(body):
	get_tree().change_scene("res://Cenas/Ginasio-03/Ginasio03_fase01.tscn")
	Global.playerPosition = Vector2(1889, -118)


func _on_Biblioteca1_body_entered(body):
	get_tree().change_scene("res://Cenas/Biblioteca/Library.tscn")
	Global.playerPosition = Vector2(-4, -87)

func _on_CarWash_body_entered(body):
	get_tree().change_scene("res://Cenas/Outros/CarWash.tscn")
	Global.playerPosition = Vector2(-225, 1758)
	
func _on_Market_body_entered(body):
	get_tree().change_scene("res://Cenas/Outros/Market.tscn")
	Global.playerPosition = Vector2(2207, 703)

func _on_Office_body_entered(body):
	get_tree().change_scene("res://Cenas/Office/Office.tscn")
	Global.playerPosition = Vector2(45, -1929)
	
func _on_Area2D_body_entered(body):
	Global.a11 += 1
	$Area2D/Sprite.visible = false
	print(Global.a11)
	
func _on_Area2D2_body_entered(body):
	Global.a12 += 1
	$Area2D2/Sprite.visible = false
	print(Global.a12)

func _on_Area2D3_body_entered(body):
	Global.a13 += 1
	$Area2D3/Sprite.visible = false
	print(Global.a13)
	
#func _process(delta):
#	if(Global.foi == true):
#		get_tree().change_scene("res://Cenas/Ginasio-02/Ginasio02_fase01.tscn")
func _on_Area2D00_body_entered(body):
	Global.a11 += 1
	$Area2D00/Sprite.visible = false
	print(Global.a11)

func _on_Area2D01_body_entered(body):
	Global.a12 += 1
	$Area2D01/Sprite.visible = false 
	print(Global.a12)

func _on_Area2D02_body_entered(body):
	Global.a13 += 1
	$Area2D02/Sprite.visible = false 
	print(Global.a13)

func _on_Area2D03_body_entered(body):
	Global.a14 += 1 
	$Area2D03/Sprite.visible = false 
	print(Global.a14)








