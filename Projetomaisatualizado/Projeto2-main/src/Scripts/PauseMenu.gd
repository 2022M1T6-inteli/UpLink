extends CanvasLayer

func _ready():
	set_visible(false)

func _input(event):
	if event.is_action_pressed("pause"):
		set_visible(!get_tree().paused)
		get_tree().paused = !get_tree().paused

func set_visible(is_visible):
	for node in get_children():
		node.visible = is_visible


func _on_Resume_button_up():
	set_visible(!get_tree().paused)
	get_tree().paused = !get_tree().paused
	set_visible(false)


func _on_Quit_button_up():
	set_visible(!get_tree().paused)
	get_tree().paused = !get_tree().paused
	get_tree().change_scene("res://Cenas/Mapa.tscn")
