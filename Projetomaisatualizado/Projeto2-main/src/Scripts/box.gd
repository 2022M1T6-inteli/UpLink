extends Control

onready var dialogo = [
	'Dellman, parece que todos estão enlouquecendo e querem acabar com a humanidade.',
	'O que vamos fazer?'
]

var dialogo_index = 0
var finished = false 

func _ready():
	load_dialogo()
	
func load_dialogo():
	if dialogo_index < dialogo.size():
		finished = false
		$RichTextLabel.bbcode_text = dialogo[dialogo_index]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible", 0,1,3,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween.start()
	else:
		queue_free()
		dialogo_index +=1
		
func _on_Tween_tween_completed(object, key):
	finished = true
	
