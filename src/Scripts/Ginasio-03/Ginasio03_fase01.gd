extends Node2D

onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var conteudo = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()
onready var hud_colunas1 = preload("res://Cenas/Ginasio-03/HUD_Colunas1.tscn").instance()


var playerPosition = Vector2(525,215)

var player



func _ready():
	
	player = inciarPlayer(playerPosition)
	
	add_child(player)
	add_child(hud_colunas1)
	
	player.camera.current = true
	
	player.camera.limit_left = 0
	player.camera.limit_bottom = 2511
	player.camera.limit_top = 0
	player.camera.limit_right = 875
	
	player.camera.zoom = Vector2(0.855, 0.855)
	
	#adicionando o balao de instrução para dizer ao player o próximo passo dentro do jogo

	add_child(conteudo)
	Global.current_dialogo = Global.dialogo["language"]["eng"]["instructions"]["gym3Level01"]
	conteudo.load_Instru()

func inciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_tree().reload_current_scene()

func _on_End_body_entered(body):
	get_tree().change_scene("res://Cenas/Ginasio-03/Ginasio03_fase02.tscn")

func _on_Area2D1_body_entered(body):
	add_child(conteudo) 
	Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instructionsGym3"]["doubleDiamond"]["instrucaoUm"]
	conteudo.load_balao()

func _on_Area2D2_body_entered(body):
	add_child(conteudo) 
	Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instructionsGym3"]["lean"]["instrucaoUm"]
	conteudo.load_balao()

func _on_Area2D3_body_entered(body):
	add_child(conteudo) 
	Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instructionsGym3"]["humanCenterDesigned"]["instrucaoUm"]
	conteudo.load_balao()

func _on_Area2D4_body_entered(body):
	add_child(conteudo) 
	Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["instructionsGym3"]["XP"]["instrucaoDois"]
	conteudo.load_balao()
	

#func _on_Area2D5_body_entered(body):
#	add_child(conteudo)
##	balao.load_Instru('ginasio3fase34')
