extends Node2D

# ACESSANDO E PROCESSANDO AS CENAS QUE SERÃO EXIGIDAS E EXIBIDAS DURANTE A FASE
onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var balao = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()
onready var hud = preload("res://Cenas/Ginasio-01/Ginasio01_HUD.tscn")
onready var preLivro = preload("res://Cenas/Outros/Books/LivroPreenchidoAbsorver.tscn")

# DEFININDO A POSIÇÃO DO PLAYER E DOS LIVROS QUE SERÃO CONSUMIDOS
var playerPosition = Vector2(12,878)
var livroPosition1 = Vector2(700, 900)
var livroPosition2 = Vector2(705, 900)
var livroPosition3 = Vector2(708, 900)
var livroPosition4 = Vector2(710, 900)
var livroPosition5 = Vector2(713, 900)

# DECLARANDO VARIÁVEIS
var player
var livro

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


func _ready():
#	 ATIVANDO O HUD DO GINÁSIO
	hud_ginasio01.ativarHUDGinasio01()
	Global.numLivros = 0
	#$DarkScene.play()
	
#	 INSTANCIANDO E INSERINDO OUTRAS CENAS NA FASE
	livro1 = iniciarLivro(livroPosition1)
	livro2 = iniciarLivro(livroPosition2)
	livro3 = iniciarLivro(livroPosition3)
	livro4 = iniciarLivro(livroPosition4)
	livro5 = iniciarLivro(livroPosition5)
	
	
	player = iniciarPlayer(playerPosition)
	
#	 ALTERANDO PROPRIEDADES DO PLAYER PARA SEREM RELATIVAS AO MAPA
	player.lanterna.enabled = true
	player.camera.limit_left = 0
	player.camera.limit_bottom = 1023
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
	livro = preLivro.instance()
	livro.position = posicao
	add_child(livro)
	return livro

# FUNÇÕES PARA COLETA DO LIVRO E EXIBIÇÃO DO BALÃO
func _on_LivroBalaoUm_body_entered(body):
	if statusBalaoUm == true:
		add_child(balao)
		balao.load_dialogo('teste2')
		statusBalaoUm = false

# FUNÇÃO PARA MUDAR DE CENA NA SAÍDA
func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Cenas/Ginasio-01/Ginasio01_fase02.tscn")
	hud_ginasio01.resetLivrosPreenchidos()
