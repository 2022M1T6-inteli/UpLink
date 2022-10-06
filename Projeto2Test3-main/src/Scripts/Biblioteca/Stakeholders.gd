extends Node2D

var pag=1

func _ready():
	$pag1.visible=true
	$pag2.visible=false
	
func _get_input():  # essa funcao pega as entrada dos controle
	
	if pag==1:
		pag = pag + int(Input.is_action_just_pressed("move_right"))
	elif pag==2:
		pag = pag - int(Input.is_action_just_pressed("move_left"))
	else:
		 pag = pag + int(Input.is_action_just_pressed("move_right"))-int(Input.is_action_just_pressed("move_left"))

func _process(delta):
	
	_get_input()
	
	print(pag)
	if pag == 1:
		$pag1.visible=true
		$pag2.visible=false
		
	elif pag == 2:
		$pag1.visible=false
		$pag2.visible=true


func _on_quit_pressed():
	get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")
