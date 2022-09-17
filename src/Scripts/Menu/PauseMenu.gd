extends CanvasLayer

#Comando para fazer com que a cena "PauseMenu" não esteja visível em default
func _ready():
	set_visible(false)

#Função criada para identificar quando a tecla "Esc" fo pressionada, ou seja, identificar o pause e fazer com que a cena PauseMenu se torne visível;
func _input(event):
	if event.is_action_pressed("pause"):
		set_visible(!get_tree().paused)
		get_tree().paused = !get_tree().paused
		
#Função que f
func set_visible(is_visible):
	for node in get_children():
		node.visible = is_visible

#Função que desativa a visibilidade da cena PauseMenu
func _on_Resume_button_up():
	#set_visible(!get_tree().paused)
	#get_tree().paused = !get_tree().paused
	get_tree().paused = false
	set_visible(false)

#Função que faz com que ao apertar o botão Quit, o jogo feche
func _on_Quit_button_up():
	set_visible(!get_tree().paused)
	get_tree().paused = !get_tree().paused
	get_tree().change_scene("res://Cenas/Menu/Menu.tscn")
