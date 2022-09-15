extends Node

var count = 0

var stop = false
var openDialogue = false
var stars = 3

var playerPosition =  Vector2(0, 340)

var fase1 = false

var texto = ['a', 'b', 'c', 'd']

var a11 = 0
var a12 = 0
var a13 = 0
var foi = false 

func _physics_process(delta):
	if(a11 > 0 && a12 > 0 && a13 > 0):
		foi = true 



