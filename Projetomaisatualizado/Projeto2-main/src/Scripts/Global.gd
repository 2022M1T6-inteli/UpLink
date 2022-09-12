extends Node


var count = 0
var fase1 = false


func _process(delta):
	if count >= 14:
		fase1 = true
	else: 
		fase1 = false


