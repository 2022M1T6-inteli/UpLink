extends Control

func _on_TextureButton_pressed():
	get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")
	
func _input(event):
	if event.is_action_pressed("pause"):
		set_visible(!get_tree().paused)
		get_tree().paused = !get_tree().paused


