extends Node2D

# ACESSANDO E PROCESSANDO AS CENAS QUE SERÃO EXIGIDAS E EXIBIDAS DURANTE A FASE
onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var conteudo = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()
onready var hud = preload("res://Cenas/Ginasio-01/Ginasio01_HUD.tscn")
onready var preLivro = preload("res://Cenas/Outros/Books/LivroPreenchidoAbsorver.tscn")

# DEFININDO A POSIÇÃO DO PLAYER E DOS LIVROS QUE SERÃO CONSUMIDOS
var playerPosition = Vector2(12,878)

var livroPosition1 = Vector2(608, 526)
var livroPosition2 = Vector2(608, 736)
var livroPosition3 = Vector2(1100, 326)
var livroPosition4 = Vector2(1288, 326)
var livroPosition5 = Vector2(1680, 256)

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

#Através da função genérica "iniciarX", a variável de cada objeto puxa sua respectiva cena e sua respectiva posição
func _ready():
	$DarkScene3.play()
	#ATIVANDO O HUD DO GINÁSIO
	hud_ginasio01.ativarHUDGinasio01()
	Global.numLivros = 0
	
#	add_child(conteudo)
#	Global.current_dialogo = Global.dialogo["language"]["eng"]["instructions"]["gym1"]
#	conteudo.load_Instru()
	
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
	player.camera.limit_bottom = 1024
	player.camera.limit_top = 0
	player.camera.limit_right = 2054
	player.camera.zoom = Vector2(1, 1)
	
	yield(get_tree().create_timer(5.0),"timeout")
	add_child(conteudo)
	Global.current_dialogo = Global.dialogo["language"]["eng"]["instructions"]["gym1-outros"]
	conteudo.load_Instru()
	
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
	
# FUNÇÃO PARA MUDAR DE CENA NA SAÍDA
func _on_Area2D_body_entered(body):
	$DarkScene3.playing = false
	$LevelCompleted.play()
	get_tree().change_scene("res://Cenas/Ginasio-01/Ginasio01_pre_boss_fight.tscn")
	hud_ginasio01.desativarHUDGinasio01()
	Global.numLivros = 0
	Global.dinamicaLobbyCondition = false


func _on_LivroBalaoUm_body_entered(body):
	if statusBalaoUm == true:
		add_child(conteudo)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["contentGym1Level3"]["star1"]
		conteudo.load_balao()
		statusBalaoUm = false


func _on_LivroBalaoDois_body_entered(body):
	if statusBalaoDois == true:
		add_child(conteudo)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["contentGym1Level3"]["star2"]
		conteudo.load_balao()
		statusBalaoDois = false


func _on_LivroBalaoTres_body_entered(body):
	if statusBalaoTres == true:
		add_child(conteudo)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["contentGym1Level3"]["star3"]
		conteudo.load_balao()
		statusBalaoTres = false


func _on_LivroBalaoQuatro_body_entered(body):
	if statusBalaoQuatro == true:
		add_child(conteudo)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["contentGym1Level3"]["star4"]
		conteudo.load_balao()
		statusBalaoQuatro = false


func _on_LivroBalaoCinco_body_entered(body):
	if statusBalaoCinco == true:
		add_child(conteudo)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["contentGym1Level3"]["star5"]
		conteudo.load_balao()
		statusBalaoCinco = false
