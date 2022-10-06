extends Node2D

onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var balao = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()
onready var hud_colunas3 = preload("res://Cenas/Ginasio-03/HUD_Colunas3.tscn").instance()
onready var conteudo = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()


var playerPosition = Vector2(525,15)

var player

func _ready():

	player = inciarPlayer(playerPosition)
	
	add_child(hud_colunas3)
	add_child(player)
	
	player.camera.current = true
	player.camera.limit_left = 82
	player.camera.limit_bottom = 2860
	player.camera.limit_top = 0
	player.camera.limit_right = 958
	player.camera.zoom = Vector2(0.855, 0.855)
	
	add_child(conteudo)
	Global.current_dialogo = Global.dialogo["language"]["eng"]["instructions"]["gym3Level02"]
	conteudo.load_Instru()
	
	
func inciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()
		#fechar dialogo pergunta
		#abrir nova pergunta de dialogo

func _on_End_body_entered(body):
	get_tree().change_scene("res://Cenas/Ginasio-03/Ginasio03_fase01.tscn")

#ao entrar colocar pergunta 1

func _on_Area2D0_body_entered(body):
	add_child(conteudo) 
	Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instructionsGym3"]["Data"]["instrucaoUm"]
	conteudo.load_balao()

func _on_Area2D1_body_entered(body):
	add_child(conteudo) 
	Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instructionsGym3"]["Visao"]["instrucaoUm"]
	conteudo.load_balao()
	
func _on_Area2D2_body_entered(body):
	add_child(conteudo) 
	Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instructionsGym3"]["Stakeholders"]["instrucaoUm"]
	conteudo.load_balao()
	
func _on_Area2D3_body_entered(body):
	add_child(conteudo) 
	Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instructionsGym3"]["Road"]["instrucaoUm"]
	conteudo.load_balao()

func _on_Area2D4_body_entered(body):
	add_child(conteudo) 
	Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instructionsGym3"]["Back"]["instrucaoUm"]
	conteudo.load_balao()

#func _on_Area2D5_body_entered(body): # nn util só teste
#	add_child(balao)
#	balao.load_Instru('ginasio3fase35')
#	# tirar pergunta 5


