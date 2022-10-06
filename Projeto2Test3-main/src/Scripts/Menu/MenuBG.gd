extends Node
#variável para definir o tempo de scrolling
export(float) var scroll_speed = 0.03
#para fazer o scroll

func _ready():
	$MenuSound.play()
	self.material.set_shader_param( "scroll_speed", scroll_speed)

#sair do jogo
func _on_QuitButton_button_up():
	get_tree().quit()

#começar o jogo
func _on_StartButton_button_up():
	get_tree().change_scene("res://Cenas/Menu/Dialogue.tscn")
	#$Botton.play()
	

#extends TextureRect

#export(float) var scroll_speed = 0.03
#para fazer o scroll
#func _ready():
#	self.material.set_shader_param( "scroll_speed", scroll_speed)


func _on_SettingsButton_pressed():
	get_tree().change_scene("res://Cenas/Menu/Cena_de_comandos.tscn")
	
	
