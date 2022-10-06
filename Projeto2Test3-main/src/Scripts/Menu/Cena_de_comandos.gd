extends Control

export(float) var scroll_speed = 0.03

func _ready():
	self.material.set_shader_param( "scroll_speed", scroll_speed)
	$AudioStreamPlayer2D.play()
	
func _on_TextureButton_pressed():
	get_tree().change_scene("res://Cenas/Menu/Menu.tscn")
