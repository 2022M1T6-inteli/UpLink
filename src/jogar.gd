extends KinematicBody2D

export (int) var speed = 420

var velocidade = Vector2()

func get_input():
	velocidade = Vector2()
	if Input.is_action_pressed("right"):
		velocidade.x += 1
	if Input.is_action_pressed("left"):
		velocidade.x -= 1
	if Input.is_action_pressed("down"):
		velocidade.y += 1
	if Input.is_action_pressed("up"):
		velocidade.y -= 1
	velocidade = velocidade.normalized() * speed

func _physics_process(delta):
	get_input()
	velocidade = move_and_slide(velocidade)

# Ao apertar o botão para o menu inicial
func _on_Button_pressed():
	get_tree().change_scene("res://Node2D.tscn")
