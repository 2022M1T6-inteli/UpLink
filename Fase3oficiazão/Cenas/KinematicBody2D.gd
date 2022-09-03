extends KinematicBody2D


func _physics_process(delta):
	var vector_movement=Vector2.ZERO
	vector_movement.x = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	vector_movement.y = Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	
	move_and_slide(vector_movement*200)

	
