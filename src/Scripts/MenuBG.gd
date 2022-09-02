extends Node
#variável para definir o tempo de scrolling
export(float) var scroll_speed = 0.03
#para fazer o scroll
func _ready():
	self.material.set_shader_param( "scroll_speed", scroll_speed)

#sair do jogo
func _on_QuitButton_button_up():
	get_tree().quit()

#começar o jogo
func _on_StartButton_button_up():
	get_tree().change_scene("res://Cenas/Dialogue.tscn")
