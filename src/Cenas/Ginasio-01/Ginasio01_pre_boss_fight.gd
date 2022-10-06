extends Node2D

onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var preNPC1 = preload("res://Cenas/NPC's/NPC1.tscn")
onready var conteudo = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()


var NPC1Position = Vector2(927, 320)

func _input(event):
	if event.is_action_pressed("pause"):
		set_visible(!get_tree().paused)
		get_tree().paused = !get_tree().paused

var player
var NPC1

func _ready():
	$AudioStreamPlayer2D.play()
	
	if Global.stepGin01PreBoss == 1:
		Global.playerPosition = Vector2(16,310)
		
	player = iniciarPlayer(Global.playerPosition)
	NPC1 = iniciarNPC1(NPC1Position)
	
#	hud_global.controleEstrelaMapa(false)
	add_child(conteudo)
	Global.current_dialogo = Global.dialogo["language"]["eng"]["instructions"]["mentor"]
	conteudo.load_Instru()
	
	add_child(player)
	add_child(NPC1)
	Global.playerPosition = Vector2(-1760, 608)
	Global.dinamicaLobbyCondition = false
	
	player.lanterna.enabled = false
	player.camera.limit_left = 0
	player.camera.limit_bottom = 697
	player.camera.limit_top = 0
	player.camera.limit_right = 1023
	player.camera.zoom = Vector2(1, 1)
	
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
		if Global.stepGin01PreBoss == 1:
			add_child(conteudo)
			Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["preBoss01"]["talk01"]
			conteudo.load_dialogo()
			yield(get_tree().create_timer(10.0),"timeout")
			get_tree().change_scene("res://Cenas/Outros/TurnBasedCombat.tscn")
			
		elif Global.stepGin01PreBoss == 2:
			add_child(conteudo)
			Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["preBoss01"]["talk02"]
			conteudo.load_dialogo()
			yield(get_tree().create_timer(45.0),"timeout")
			get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")
			Global.preGinasio = "Ginasio02"
			Global.Gin01_enabled = false


func _on_Area2D_body_exited(body):
	if body.name == "Player" and Global.stepGin01PreBoss == 1:
		get_tree().change_scene("res://Cenas/Outros/TurnBasedCombat.tscn")
	elif body.name == "Player" and Global.stepGin01PreBoss == 2:
		get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")
		Global.preGinasio = "Ginasio02"
		Global.Gin01_enabled = false
