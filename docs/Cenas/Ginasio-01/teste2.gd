extends Control

onready var dialogo = {
	'teste2': ["Para subirmos o nosso nivel de visao precisamos ter em mente aquilo que buscamos e entender como isso impacta em nosso projeto. \n \nParabens Dellman, voce esta mais perto de entender o que precisa ser feito!"
	, "oloco meu roda isso ai pls"
	, 'teste 3 de dicionario']
	, 'teste': 'outracoisa'
} #Variável responsável por armazenar o texto a ser exibido no Balão

var indexDialogo = 0
var finished = false  #Variável para indicar quando o texto acaba de carregar no Balão
var active = false

func _ready():
	#$RichTextLabel.bbcode_text = dialogo[0]
	Global.keyDialogo = 'teste2'
	load_dialogo(Global.keyDialogo)
	#for i in dialogo['teste2'].size():
	#	print(dialogo['teste2'][i])
	#print(dialogo['teste2'].size())
func _input(event):
	if event.is_action_pressed("ui_select"):
		print('c')
		



#func _process(delta):
#	if Input.is_action_pressed("ui_select") and !finished: 
#		finished = true
#		getNextSpeak()
#		print('fffffff')
#		get_tree().create_timer(1)
#	if !finished and Input.is_action_pressed("ui_select"):
#		indexDialogo += 1 
#		print('s')
#		load_dialogo(Global.keyDialogo)
	#if finished and Input.is_action_pressed("ui_select"):
		#queue_free() # comando para fechar o balão ao ser pressionado "espaço", assim que o texto for totalmente exibido
	
func getNextSpeak():
	get_tree().create_timer(1)
	indexDialogo += 1
	load_dialogo(Global.keyDialogo)
	
func load_dialogo(key):
	print(indexDialogo)
	print(dialogo[key].size())
	if indexDialogo < dialogo[key].size():
		active = true
		
		#for i in dialogo[key].size():
		$RichTextLabel.bbcode_text = dialogo[key][indexDialogo]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible", 0,1,3,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween.start()
		finished = false
		#if Input.is_action_pressed("ui_select"):
		#	load_dialogo(key)
	else:
		queue_free()
		finished = true
		
	
	
	
			
		
		

	#else:
	#	queue_free()
	#	dialogo_index +=1
		
#func _on_Tween_tween_completed(object, key):
#	if Global.stars == 0:
#	finished = true
