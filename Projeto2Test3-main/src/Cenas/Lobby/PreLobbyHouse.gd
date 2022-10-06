extends Node2D

onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")
onready var preNPC = preload("res://Cenas/NPC's/NPC1.tscn")
onready var balao = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()


var playerPosition = Vector2(210,500)
var NPCPosition = Vector2(150, 175)
var NPC1Position = Vector2(250, 175)
var NPC2Position = Vector2(350, 175)
var NPC3Position = Vector2(450, 175)
var NPC4Position = Vector2(550, 175)

var player
var NPC
var NPC1
var NPC2
var NPC3
var NPC4



func _ready():
#	onreadyvar balao = preBalao.instance()
	
	
	#$AudioStreamPlayer2D.play()
	player = iniciarPlayer(playerPosition)
	NPC = iniciarNPC(NPCPosition)
	NPC1 = iniciarNPC(NPC1Position)
	NPC2 = iniciarNPC(NPC2Position)
	NPC3 = iniciarNPC(NPC3Position)
	NPC4 = iniciarNPC(NPC4Position)
	

	player.lanterna.enabled = false
	player.camera.limit_left = 0
	player.camera.limit_bottom = 674
	player.camera.limit_top = 0
	player.camera.limit_right = 924
	player.camera.zoom = Vector2(0.9, 0.9)
	
func iniciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	add_child(player)
	return player
	
func iniciarNPC(posicao):
	var NPC = preNPC.instance()
	NPC.position = posicao
	add_child(NPC)
	return NPC


func _on_NPC_body_entered(body):
	if Global.statusTalkNPC == true and body.name == "Player":
		add_child(balao)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["preLobby"]["preLobby"]["talk1"]
		balao.load_dialogo()
		Global.statusTalkNPC = false


func _on_NPC1_body_entered(body):
	if Global.statusTalkNPC1 == true and body.name == "Player":
		add_child(balao)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["preLobby"]["preLobby"]["talk2"]
		balao.load_dialogo()
		Global.statusTalkNPC1 = false


func _on_NPC2_body_entered(body):
	if Global.statusTalkNPC2 == true and body.name == "Player":
		add_child(balao)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["preLobby"]["preLobby"]["talk3"]
		balao.load_dialogo()
		Global.statusTalkNPC2 = false


func _on_NPC3_body_entered(body):
	if Global.statusTalkNPC3 == true and body.name == "Player":
		add_child(balao)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["preLobby"]["preLobby"]["talk4"]
		balao.load_dialogo()
		Global.statusTalkNPC3 = false


func _on_NPC4_body_entered(body):
	if Global.statusTalkNPC4 == true and body.name == "Player":
		add_child(balao)
		Global.current_dialogo = Global.dialogo["language"]["eng"]["dialogo"]["preLobby"]["preLobby"]["talk5"]
		balao.load_dialogo()
		Global.statusTalkNPC4 = false


func _on_PreLobbyRoom_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Cenas/Lobby/PreLobbyRoom.tscn")


func _on_Lobby_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")
