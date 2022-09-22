extends Node2D
#Preparação da cena e variável Player que será chamada e posição definida
onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var preLivro = preload("res://Cenas/Outros/Books/LivroPreenchidoAbsorver.tscn")

onready var balao = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()

var player
var livro

var playerPosition = Vector2(0, 340)

var livroPosition1 = Vector2(80, 783)
var livroPosition2 = Vector2(462, 79)
var livroPosition3 = Vector2(976, 74)
var livroPosition4 = Vector2(1590, 73)
var livroPosition5 = Vector2(2000, 69)

var statusBalaoUm = true
var statusBalaoDois = true
var statusBalaoTres = true
var statusBalaoQuatro = true
var statusBalaoCinco = true

var livro1
var livro2
var livro3
var livro4
var livro5


func ativarDinamicaLivros():
	Global.numLivros = 0
	hud_ginasio01.ativarHUDGinasio01()
	
#	 INSTANCIANDO E INSERINDO OUTRAS CENAS NA FASE
	livro1 = iniciarLivro(livroPosition1)
	livro2 = iniciarLivro(livroPosition2)
	livro3 = iniciarLivro(livroPosition3)
	livro4 = iniciarLivro(livroPosition4)
	livro5 = iniciarLivro(livroPosition5)



# FUNÇÃO PARA INSTANCIAR O LIVRO
func iniciarLivro(posicao):
	livro = preLivro.instance()
	livro.position = posicao
	add_child(livro)
	return livro
	
	
func _ready():
	if Global.dinamicaLobbyCondition:
		ativarDinamicaLivros()
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
	if Global.numLivros == 5:
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
#		
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

func _on_Area2Dginasio1_body_entered(body):
	if Global.numLivros == 5:
		get_tree().change_scene("res://Cenas/Ginasio-02/Ginasio02_fase01.tscn")
	elif  Global.numLivros < 5: 
		add_child(balao)
		balao.load_Instru('lobbyginasio1')
	



func _on_Area2Dginasio1_body_exited(body):
	remove_child(balao)
