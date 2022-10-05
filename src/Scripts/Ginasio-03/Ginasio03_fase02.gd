extends Node2D


onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var conteudo = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()
onready var hud_colunas2 = preload("res://Cenas/Ginasio-03/HUD_Colunas2.tscn").instance()


var playerPosition = Vector2(525,215)

var estrela1
var estrela2
var estrela3
var player
var statusTutorial = true


func _ready():

	player = inciarPlayer(playerPosition)
	
	add_child(estrela1)
	add_child(estrela2)
	add_child(estrela3)
	add_child(player)
	add_child(hud_colunas2)
	
	player.camera.current = true
	player.camera.limit_left = 0
	player.camera.limit_bottom = 2859
	player.camera.limit_top = 0
	player.camera.limit_right = 873
	player.camera.zoom = Vector2(0.855, 0.855)
	
	add_child(conteudo)
	Global.current_dialogo = Global.dialogo["language"]["eng"]["instructions"]["gym3Level03"]
	conteudo.load_Instru()
	
func inciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		player.position = playerPosition

func _on_End_body_entered(body):
	get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")

#colocar pergunta 1 ao iniciar

func _on_Area2D0_body_entered(body):
	add_child(conteudo) 
	Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instructionsGym3"]["userKpi"]["instrucaoUm"]
	conteudo.load_balao()

func _on_Area2D1_body_entered(body):
	add_child(conteudo)
	Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instructionsGym3"]["kpiBusiness"]["instrucaoUm"]
	conteudo.load_balao()
	
func _on_Area2D2_body_entered(body):
	add_child(conteudo)
	Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instructionsGym3"]["kpiQuality"]["instrucaoUm"]
	conteudo.load_balao()

func _on_Area2D3_body_entered(body):
	add_child(conteudo)
	Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instructionsGym3"]["kpiDeployment"]["instrucaoUm"]
	conteudo.load_balao()

func _on_Area2D4_body_entered(body):
	add_child(conteudo)
	Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instructionsGym3"]["kpiQuality"]["instrucaoDois"]
	conteudo.load_balao()

func _on_Area2D6_body_entered(body):
	if statusTutorial == true:
		add_child(conteudo)
#		conteudo.load_Instru('Tutorial')
		statusTutorial = false 
