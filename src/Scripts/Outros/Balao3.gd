extends Control

onready var dialogo = [
	"Perfeito Dellman, voce esta indo muito bem em sua jornada, mas para alcancarmos mais um nivel de visao todos na equipe precisam estar crescendo em direçao ao objetivo. \n\nPor isso, va ate o Jeff desinfecta-lo deste virus terrivel."
] #Variável responsável por armazenar o texto a ser exibido no Balão

var dialogo_index = 0
var finished = false  #Variável para indicar quando o texto acaba de carregar no Balão

func _ready():
	load_dialogo()

func _process(delta):
#	print("Finished", finished)
	if finished and Input.is_action_pressed("ui_select"): 
		queue_free() # comando para fechar o balão ao ser pressionado "espaço", assim que o texto for totalmente exibido
		Global.stop = false
	
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
	if Global.numLivros == 0:
		finished = true
