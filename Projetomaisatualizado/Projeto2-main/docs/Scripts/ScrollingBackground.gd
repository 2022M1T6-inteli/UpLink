extends Node

export(float) var scroll_speed = 0.03

func _ready():
	self.material.set_shader_param( "scroll_speed", scroll_speed)

func _on_StartButton_pressed():
	get_tree().change_scene("res://Menu/Dialogo.tscn")
	
	
