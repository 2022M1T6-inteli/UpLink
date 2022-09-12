extends Node


var stop = false
var openDialogue = false
var stars = 3


var count = 0
var fase1 = false

var checkpoint_pos = 0


func _process(delta):
	if count >= 14:
		fase1 = true
	else: 
		fase1 = false


