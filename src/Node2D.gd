extends Node2D

func _ready():
	pass 

# Ao apertar o botão vai para a cena jogar.tscn
func _on_JogarButton_pressed():
	get_tree().change_scene("res://jogar.tscn")

# Ao apertar o botão o jogo é encerrado
func _on_SairButton2_pressed():
	get_tree().quit()

# ao apertar o botão Config vai para a cena config.tscn
func _on_ConfigButton_pressed():
	get_tree().change_scene("res://config.tscn") 
