extends VideoPlayer

func _input(event):
	if event.is_action_pressed("ui_accept"):
		get_tree().change_scene("res://Cenas/Menu/Menu.tscn")
	

