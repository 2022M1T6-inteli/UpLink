extends KinematicBody2D

var vetor1 = Vector2.ZERO
onready var animationPlayer = $AnimationPlayer

func getdirection():
	var vetor = Vector2.ZERO
	vetor.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	vetor.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	
	return vetor

func _physics_process(delta):
	vetor1 = getdirection().normalized() * 250
	move_and_slide(vetor1)
	
	if Input.is_action_pressed("ui_right"):
		animationPlayer.play("direita")
	
	if Input.is_action_pressed("ui_left"):
		animationPlayer.play("esquerda")
	if Input.is_action_pressed("ui_up"):
		animationPlayer.play("direita")
	if Input.is_action_pressed("ui_down"):
		animationPlayer.play("direita")
	
	if $Camera2D/ColorRect.visible == true:
		if Input.is_action_pressed("ui_interage"):
			get_tree().change_scene("res://Menu/Dialogo.tscn")
	


func _on_Area2D_body_entered(_body):
	$Camera2D/ColorRect.visible = true
	$Camera2D/ColorRect/Label.visible = true
	 # Replace with function body.
	


func _on_Area2D_body_exited(body):
	 # Replace with function body.
	$Camera2D/ColorRect.visible = false
	$Camera2D/ColorRect/Label.visible = false
