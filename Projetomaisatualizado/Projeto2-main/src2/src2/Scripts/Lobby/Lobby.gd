extends Node2D
#Preparação da cena e variável Player que será chamada e posição definida
onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
var playerPosition = Vector2(0, 340)

var player

func _ready():
	#inicialização da variável como nó e criação desse nó Player
	player = inciarPlayer(playerPosition)
	add_child(player)
	player.camera.current = true
	player.camera.zoom.x = 2
	player.camera.zoom.y = 2
	player.scale = Vector2 (2, 2)
	
#Função responsável por fazer com que variável receba o nó chamando a cena correta e definindo sua posição
func inciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player


#Funções abaixo são responsáveis por fazer com que ao entrar em uma area2D, o player seja direcionado para uma nova cena respectiva à área

func _on_Ginasio_01_body_entered(body):
	get_tree().change_scene("res://Cenas/Ginasio-01/Cena1.tscn")


func _on_Ginasio_02_body_entered(body):
	get_tree().change_scene("res://Cenas/Ginasio-02/fase2facil.tscn")


func _on_Ginasio_03_body_entered(body):
	get_tree().change_scene("res://Cenas/Ginasio-03/ginasio3-fase01.tscn")


func _on_Biblioteca1_body_entered(body):
	get_tree().change_scene("res://Cenas/Biblioteca/Library.tscn")


func _on_CarWash_body_entered(body):
	get_tree().change_scene("res://Cenas/Outros/CarWash.tscn")


func _on_Market_body_entered(body):
	get_tree().change_scene("res://Cenas/Outros/Market.tscn")


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Cenas/Outros/Store.tscn")


func _on_Office_body_entered(body):
	get_tree().change_scene("res://Cenas/Office/Office.tscn")
