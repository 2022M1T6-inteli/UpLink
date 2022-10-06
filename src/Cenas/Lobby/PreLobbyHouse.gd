extends Node2D

onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var preNPC1 = preload("res://Cenas/NPC's/NPC1.tscn")
onready var preMentor1 = preload("res://Cenas/NPC's/NPC1.tscn")
onready var preMentor2 = preload("res://Cenas/NPC's/NPC3.tscn")
onready var preMentor3 = preload("res://Cenas/NPC's/NPC4.tscn")
onready var balao = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()



var playerPosition = Vector2(70,320)
var NPCPosition = Vector2(150, 175)

var mentor1Position = Vector2(815, 144)
var mentor2Position = Vector2(870, 195)
var mentor3Position = Vector2(815, 245)

var player
var NPC
var mentor1
var mentor2
var mentor3
var statusTalkCloud = false


func _ready():
	if Global.stepPreLobbyHouse == 1:
		mentor1 = iniciarMentor1(mentor1Position)
		mentor2 = iniciarMentor2(mentor2Position)
		mentor3 = iniciarMentor3(mentor3Position)
		add_child(balao)
		Global.current_dialogo = Global.dialogo["preLobbyInstructionCloud"]
		balao.load_Instru()
	else: 
		add_child(balao)
		Global.current_dialogo = Global.dialogo["preLobbyInstructionCloud"]
		balao.load_Instru()
		

		
	#$AudioStreamPlayer2D.play()
	NPC = iniciarNPC(NPCPosition)
	player = iniciarPlayer(playerPosition)
	



	player.lanterna.enabled = false
	player.camera.limit_left = 0
	player.camera.limit_bottom = 674
	player.camera.limit_top = 0
	player.camera.limit_right = 924
	player.camera.zoom = Vector2(0.9, 0.9)
	


func _on_NPC_body_entered(body):
	if Global.preLobbystatusTalkNPC == true and body.name == "Player" and Global.stepPreLobbyHouse == 1:
		add_child(balao)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["preLobby"]["preLobby"]["talk7"]
		balao.load_dialogo()
		Global.preLobbystatusTalkNPC = false
		statusTalkCloud = true
	elif Global.preLobbystatusTalkNPC == true and body.name == "Player" and Global.stepPreLobbyHouse == 2:
		add_child(balao)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["preLobby"]["preLobby"]["talk9"]
		balao.load_dialogo()
		Global.preLobbystatusTalkNPC = false		



func iniciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	add_child(player)
	return player

func iniciarNPC(posicao):
	var NPC = preNPC1.instance()
	NPC.position = posicao
	add_child(NPC)
	return NPC
	
func iniciarMentor1(posicao):
	var Mentor1 = preMentor1.instance()
	Mentor1.position = posicao
	add_child(Mentor1)
	return Mentor1

func iniciarMentor2(posicao):
	var Mentor2 = preMentor2.instance()
	Mentor2.position = posicao
	add_child(Mentor2)
	return Mentor2
	
func iniciarMentor3(posicao):
	var Mentor3 = preMentor3.instance()
	Mentor3.position = posicao
	add_child(Mentor3)
	return Mentor3
	
func _on_PreLobbyRoom_body_entered(body):
	if body.name == "Player":
		add_child(balao)
		Global.current_dialogo = Global.dialogo["preLobbyHouseRoomBlocked"]
		balao.load_balao()


func _on_Lobby_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")


func _on_NPCs_body_entered(body):
	if Global.statusPreLobbyHouseTalkNPCs == true and body.name == "Player" and statusTalkCloud == true:
		add_child(balao)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["preLobby"]["preLobby"]["talk8"]
		balao.load_dialogo()
		Global.statusPreLobbyHouseTalkNPCs = false
	elif Global.statusPreLobbyHouseTalkNPCs == true and body.name == "Player" and statusTalkCloud == false:
		add_child(balao)
		Global.current_dialogo = Global.dialogo["preLobbyInstructionCloudStatus"]
		balao.load_balao()
		
#		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["preLobby"]["preLobby"]["talk8"]
#		balao.load_balao()
#		Global.statusPreLobbyHouseTalkNPCs = false
		
func _on_NPCs_body_exited(body):
	if body.name == "Player" and Global.statusPreLobbyHouseTalkNPCs == false:
		add_child(balao)
		Global.current_dialogo = Global.dialogo["preLobbyHouseWait"]
		balao.load_balao()
		
		yield(get_tree().create_timer(7.0),"timeout")
		Global.stepPreLobbyHouse = 2
		get_tree().reload_current_scene()
		
		Global.preLobbystatusTalkNPC = true

func _on_NPC_body_exited(body):
	if body.name == "Player" and Global.statusPreLobbyHouseTalkNPCs == false and Global.preLobbystatusTalkNPC == false:
		add_child(balao)
		Global.current_dialogo = Global.dialogo["preLobbyInstructionOutsideBook"]
		balao.load_Instru()
		
func _input(event):
	if event.is_action_pressed("pause"):
#		set_visible(!get_tree().paused)
#		get_tree().paused = !get_tree().paused
		remove_child(balao)
	if 	Global.resume_pause == true:
		add_child(balao)
		Global.resume_pause = false 
