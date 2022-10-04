extends Node2D
#Preparação da cena e variável Player que será chamada e posição definida
onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var preLivro = preload("res://Cenas/Outros/Books/LivroPreenchidoAbsorver.tscn")
onready var hud = preload("res://Cenas/Ginasio-01/Ginasio01_HUD.tscn")
onready var conteudo = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()

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

var statusDynamic = true

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
		add_child(conteudo)
		ativarDinamicaLivros()
		Global.current_dialogo = Global.dialogo["language"]["eng"]["instructions"]["collectBooksLobby"]
		conteudo.load_Instru()
		
		$LivroBalaoUm/LivroUm.disabled = false
		$LivroBalaoDois/LivroDois.disabled = false
		$LivroBalaoTres/LivroTres.disabled = false
		$LivroBalaoQuatro/LivroQuatro.disabled = false
		$LivroBalaoCinco/LivroCinco.disabled = false
		
	$SoundLobby.play()
	$Park.play()

	#inicialização da variável como nó e criação desse nó Player
	player = iniciarPlayer(Global.playerPosition)
	add_child(player)
	player.camera.current = true
	player.camera.zoom.x = 1.5
	player.camera.zoom.y = 1.5
	
	if Global.preGinasio == "Ginasio02":
		add_child(conteudo)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["instructions"]["instrucAfterGym1"]
		conteudo.load_Instru()
	elif Global.preGinasio == "Ginasio03":
		add_child(conteudo)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["instructions"]["instrucAfterGym2"]
		conteudo.load_Instru()

#Função responsável por fazer com que variável receba o nó chamando a cena correta e definindo sua posição
func iniciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player

func _process(delta):
	if Global.numLivrosLobby == 5 and statusDynamic and Global.Gin01_enabled == true:
		statusDynamic = false
		yield(get_tree().create_timer(4.0),"timeout")
		remove_child(conteudo)
		add_child(conteudo)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["instructions"]["collectedBooksLobby"]
		conteudo.load_Instru()
		
func _on_Office_body_entered(body):
	if Global.ginasio3final > 0:
		get_tree().change_scene("res://Cenas/Ginasio-01/Ginasio01_fase02.tscn")
		Global.playerPosition = Vector2(45, -1929)

#Funções abaixo são para transições de cenas para os ginásios e demais espaços
func _on_Ginasio_01_body_entered(body):
	Global.playerPosition = Vector2(783, 1370)
	
	if Global.numLivrosLobby >= 5 and statusDynamic == false and Global.Gin01_enabled == true:
		hud_ginasio01.resetLivrosPreenchidos()
		get_tree().change_scene("res://Cenas/Ginasio-01/Ginasio01_fase01.tscn")
		Global.dinamicaLobbyCondition = false

func _on_Ginasio_02_body_entered(body):
	if Global.Gin01_enabled == false:
		get_tree().change_scene("res://Cenas/Ginasio-02/Ginasio02_fase01.tscn")
		Global.playerPosition = Vector2(1230, -1220)

func _on_Ginasio_03_body_entered(body):
	if Global.Gin02_enabled == false:
		get_tree().change_scene("res://Cenas/Ginasio-03/Ginasio03_fase01.tscn")
		Global.playerPosition = Vector2(1889, -118)

func _on_Biblioteca1_body_entered(body):
	get_tree().change_scene("res://Cenas/Biblioteca/Inventario.tscn")
	Global.playerPosition = Vector2(-4, -87)

func _on_CarWash_body_entered(body):
	get_tree().change_scene("res://Cenas/Outros/CarWash.tscn")
	Global.playerPosition = Vector2(-225, 1758)
	
func _on_Market_body_entered(body):
	get_tree().change_scene("res://Cenas/Outros/Market.tscn")
	Global.playerPosition = Vector2(2207, 703)

#func _on_Office_body_entered(body):
#	get_tree().change_scene("res://Cenas/Office/Office.tscn")
#	Global.playerPosition = Vector2(45, -1929)
	
#funçoes abaixo são para chamar o conteúdo do dicionario na tela quando o player coletar os livros
func _on_LivroBalaoUm_body_entered(player): #livro de baixo
	if statusBalaoUm == true:
		Global.numLivrosLobby+=1
		add_child(conteudo)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["contentLobby"]["intro"]
		conteudo.load_balao()
		statusBalaoUm = false

func _on_LivroBalaoDois_body_entered(body):
	if statusBalaoDois == true:
		Global.numLivrosLobby+=1
		add_child(conteudo)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["contentLobby"]["lean"]
		conteudo.load_balao()
		statusBalaoDois = false

func _on_LivroBalaoTres_body_entered(body):
	if statusBalaoTres == true:
		Global.numLivrosLobby+=1
		add_child(conteudo)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["contentLobby"]["hcd"]
		conteudo.load_balao()
		statusBalaoTres = false

func _on_LivroBalaoQuatro_body_entered(body):
	if statusBalaoQuatro == true:
		Global.numLivrosLobby+=1
		add_child(conteudo)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["contentLobby"]["xp"]
		conteudo.load_balao()
		statusBalaoQuatro = false
		
func _on_LivroBalaoCinco_body_entered(body):
	if statusBalaoCinco == true:
		Global.numLivrosLobby+=1
		add_child(conteudo)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["contentLobby"]["doubleDiamond"]
		conteudo.load_balao()
		statusBalaoCinco = false
		

		
	
		
