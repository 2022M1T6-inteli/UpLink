extends Node2D

onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var preNPC1 = preload("res://Cenas/NPC's/NPC4.tscn")
onready var conteudo = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()
var NPC1Position = Vector2(682, 1352) #10 1117
var player
var NPC1

func _input(event):
	if event.is_action_pressed("pause"):
		set_visible(!get_tree().paused)
		get_tree().paused = !get_tree().paused

func _ready():
	if Global.stepGin03PreBoss == 1:
		Global.playerPosition = Vector2(688,64)
	#$AudioStreamPlayer2D.play()
	player = iniciarPlayer(Global.playerPosition)
	NPC1 = iniciarNPC1(NPC1Position)
	
#	hud_global.controleEstrelaMapa(false)

	add_child(player)
	add_child(NPC1)
	
	player.lanterna.enabled = false
	player.camera.limit_left = 0
	player.camera.limit_bottom = 1430
	player.camera.limit_top = 0
	player.camera.limit_right = 1350
	player.camera.zoom = Vector2(0.855, 0.855)
	
func iniciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	return player
	
func iniciarNPC1(posicao):
	var NPC1 = preNPC1.instance()
	NPC1.position = posicao
	return NPC1

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		Global.stepGin = 3
		print(Global.stepGin02PreBoss)

		if Global.stepGin03PreBoss == 1:
			add_child(conteudo)
			Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["preBoss03"]["talk01"]
			conteudo.load_dialogo()
			yield(get_tree().create_timer(25.0),"timeout")
			get_tree().change_scene("res://Cenas/Outros/TurnBasedCombat.tscn")
			
		elif Global.stepGin03PreBoss == 2:
			add_child(conteudo)
			Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["preBoss03"]["talk02"]
			conteudo.load_dialogo()
			yield(get_tree().create_timer(130.0),"timeout")
			get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")
			Global.preGinasio = "Ginasio<3"
			Global.Gin03_enabled = false
			Global.dinamicaLobbyCondition = false


func _on_Area2D_body_exited(body):
	if body.name == "Player" and Global.stepGin03PreBoss == 1:
		get_tree().change_scene("res://Cenas/Outros/TurnBasedCombat.tscn")
	elif body.name == "Player" and Global.stepGin03PreBoss == 2:
		get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")
		Global.preGinasio = "Ginasio<3"
		Global.Gin03_enabled = false
		Global.dinamicaLobbyCondition = false
