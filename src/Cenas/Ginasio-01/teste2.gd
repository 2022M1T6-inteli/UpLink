extends Control

onready var dialogo = {
	'teste2': ["Para subirmos o nosso nivel de visao precisamos ter em mente aquilo que buscamos e entender como isso impacta em nosso projeto. \n \nParabens Dellman, voce esta mais perto de entender o que precisa ser feito!"
	, "oloco meu roda isso ai pls"
	, 'teste 3 de dicionario']
	
	, 'teste': ['outracoisa']
} #Variável responsável por armazenar o texto a ser exibido no Balão

var indexDialogo = 0
var finished = false  #Variável para indicar quando o texto acaba de carregar no Balão

func _ready():
	Global.keyDialogo = 'teste'
	load_dialogo(Global.keyDialogo)
	
func _input(event):
	if event.is_action_pressed("ui_select") and finished == false:
		getNextSpeak()
		
func getNextSpeak():
	indexDialogo += 1
	load_dialogo(Global.keyDialogo)
	
func load_dialogo(key):
	print(indexDialogo)
	print(dialogo[key].size())
	if indexDialogo < dialogo[key].size():
	#if 1 < dialogo['teste2'].size()  -> 3
		$RichTextLabel.bbcode_text = dialogo[key][indexDialogo]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible", 0,1,3,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween.start()
		finished = false
		print(get_tree().get_current_scene())
	else:
		queue_free()
		indexDialogo = 0
		finished = true

	#	dialogo_index +=1
		
#func _on_Tween_tween_completed(object, key):
#	if Global.stars == 0:
#	finished = true
