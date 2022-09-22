extends Node2D

# ACESSANDO E PROCESSANDO AS CENAS QUE SERÃO EXIGIDAS E EXIBIDAS DURANTE A FASE
onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var balao = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()
onready var hud = preload("res://Cenas/Ginasio-01/Ginasio01_HUD.tscn")
onready var livro = preload("res://Cenas/Outros/Books/LivroPreenchidoAbsorver.tscn").instance()

# DEFININDO A POSIÇÃO DO PLAYER E DOS LIVROS QUE SERÃO CONSUMIDOS
var livroPosition1 = Vector2(1370, 752)
var livroPosition2 = Vector2(432, 616)
var livroPosition3 = Vector2(520, 56)
var livroPosition4 = Vector2(896, 200)
var livroPosition5 = Vector2(2008, 256)
var playerPosition = Vector2(45, 710)

# DECLARANDO VARIÁVEIS
var player
var statusBalaoUm = true
var statusBalaoDois = true
var statusBalaoTres = true
var statusBalaoQuatro = true
var statusBalaoCinco = true

var livro1

#Através da função genérica "iniciarX", a variável de cada objeto puxa sua respectiva cena e sua respectiva posição
func _ready():
	Global.numLivros = 0
	#$DarkScene2.play()

#	 INSTANCIANDO E INSERINDO OUTRAS CENAS NA FASE
	livro1 = iniciarLivro(livroPosition1)
	
	player = iniciarPlayer(playerPosition)
	
#	 ALTERANDO PROPRIEDADES DO PLAYER PARA SEREM RELATIVAS AO MAPA
	player.lanterna.enabled = true
	player.camera.limit_left = 0
	player.camera.limit_bottom = 1024
	player.camera.limit_top = 0
	player.camera.limit_right = 2054
	player.camera.zoom = Vector2(1, 1)
	
func _process(delta):
#	 AUMENTANDO O RANGE DA LANTERNA DE ACORDO COM A VARIÁVEL GLOBAL
	player.lanterna.texture_scale = Global.percentVisionGinasio01


# FUNÇÃO PARA INSTANCIAR O PLAYER
func iniciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	add_child(player)
	return player

# FUNÇÃO PARA INSTANCIAR O LIVRO
func iniciarLivro(posicao):
	livro.position = posicao
	add_child(livro)
	return livro

# FUNÇÃO PARA MUDAR DE CENA NA SAÍDA
func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Cenas/Ginasio-01/Ginasio01_fase03.tscn")
	hud_ginasio01.resetLivrosPreenchidos()
