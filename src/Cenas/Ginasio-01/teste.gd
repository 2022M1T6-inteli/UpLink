extends Control

onready var dialogo = [
	#"Para subirmos o nosso nivel de visao precisamos ter em mente aquilo que buscamos e entender como isso impacta em nosso projeto. \n \nParabens Dellman, voce esta mais perto de entender o que precisa ser feito!"
	'dialogo'
] #Variável responsável por armazenar o texto a ser exibido no Balão

#var teste = ['a']
#var dialogo_index = 0
#var finished = false  #Variável para indicar quando o texto acaba de carregar no Balão

#func _ready():
	#teste()
	#print($RichTextLabel.text)
	#$RichTextLabel = 'cccc'
	#print(get_node('RichTextLabel'))
	#print($RichTextLabel.bbcode_text)
#	print($RichTextLabel)
	#print(a)
	#print(dialogo)
	#load_dialogo()

#func _process(delta):
#	print("Finished", finished)
	#if finished and Input.is_action_pressed("ui_select"): 
		#queue_free() # comando para fechar o balão ao ser pressionado "espaço", assim que o texto for totalmente exibido
		#Global.stop = false
	
#func teste():
	#$RichTextLabel.text = 'a'
	

#func load_dialogo():	
#	if dialogo_index < dialogo.size():
#		finished = false
#		$Control/box/RichTextLabel.bbcode_text = 'a'
#		#dialogo[dialogo_index]
#		$RichTextLabel.percent_visible = 0
#		$Tween.interpolate_property(
#			$RichTextLabel, "percent_visible", 0,1,3,
#			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
#		)
#		$Tween.start()
#	else:
#		queue_free()
#		dialogo_index +=1
		
#func _on_Tween_tween_completed(object, key):
#	if Global.stars == 0:
#		finished = true
