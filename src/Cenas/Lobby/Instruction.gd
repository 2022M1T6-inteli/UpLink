extends Node2D

onready var prePlayer = preload("res://Cenas/Outros/Player/Player.tscn")

onready var conteudo = preload("res://Cenas/Outros/Conteudo/Conteudo.tscn").instance()

var playerPosition = Vector2(64,320)



var player
var NPC
var NPC1
var NPC2
var NPC3
var NPC4

func _process(delta):
	if Global.statusTalkNPC == false and Global.statusTalkNPC1 == false and Global.statusTalkNPC2 == false and Global.statusTalkNPC3 == false and Global.statusTalkNPC4 == false:
		Global.statusPreLobby = true

func _ready():
#	onreadyvar balao = preBalao.instance()
	
	
	#$AudioStreamPlayer2D.play()
	

	
	player = iniciarPlayer(playerPosition)

	player.lanterna.enabled = false
	player.camera.limit_left = 0
	player.camera.limit_bottom = 672
	player.camera.limit_top = 0
	player.camera.limit_right = 920
	player.camera.zoom = Vector2(0.9, 0.9)
	


	yield(get_tree().create_timer(10.0),"timeout")
	add_child(conteudo)
	Global.current_dialogo = Global.dialogo["instructionInit"]
	conteudo.load_Instru()



	
func iniciarPlayer(posicao):
	var player = prePlayer.instance()
	player.position = posicao
	add_child(player)
	return player
	



func _on_PreLobbyRoom_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Cenas/Menu/Dialogue.tscn")

