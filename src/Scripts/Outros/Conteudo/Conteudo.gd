extends CanvasLayer

var finishedBalao = false
var finishedDialogo = false
var finishedInstru = false 
var balaoActive = false
var dialogoActive = false
var instruActive= false


func _input(event):
	if event.is_action_pressed("ui_accept") and balaoActive: #and finishedBalao
		getNextSpeakBalao()
#	elif event.is_action_pressed("ui_select") and finishedBalao == false and balaoActive:
#		transition_balao(false)
		
	if event.is_action_pressed("ui_accept") and dialogoActive: # and finishedDialogo
		getNextSpeakDialogo()
#	elif event.is_action_pressed("ui_select") and finishedDialogo == false and dialogoActive:
#		transition_dialogo(false)
		
#	if event.is_action_pressed("ui_select") and finishedInstru and instruActive:
#		getNextSpeakInstru()
#	elif event.is_action_pressed("ui_select") and finishedInstru == false and instruActive:
#		transition_instru(false)


func getNextSpeakBalao():
	Global.indexBalao += 1
	load_balao()

func getNextSpeakDialogo():
	Global.indexDialogo += 1
	load_dialogo()

#func getNextSpeakInstru():
#	Global.indexInstru += 1
#	load_Instru()

func load_balao():
	$Balao.visible = true
	if Global.indexBalao < Global.current_dialogo.size():
		balaoActive = true
		finishedBalao = false
		$Balao/RichTextLabelBalao.bbcode_text = Global.current_dialogo[Global.indexBalao]
		transition_balao(true)
		Global.stop = true
	else:
		Global.indexBalao = 0
		balaoActive = false
		$Balao.visible = false
		Global.stop = false
		
func load_dialogo():
	$Dialogo.visible = true
	if Global.indexDialogo < Global.current_dialogo.size():
		dialogoActive = true
		finishedDialogo = false
		$Dialogo/RichTextLabelDialogo.bbcode_text = String(Global.current_dialogo[Global.indexDialogo])
		transition_dialogo(true)
		Global.stop = true
	else:
		Global.indexDialogo = 0
		dialogoActive = false
		$Dialogo.visible = false
		Global.stop = false
		
func load_Instru():
	$Instru.visible = true
	if Global.indexInstru < Global.current_dialogo.size():
		instruActive = true
		finishedInstru = false
		$Instru/RichTextLabelInstru.bbcode_text = String(Global.current_dialogo[Global.indexInstru])
		transition_instru(true)
	else:
		Global.indexDialogo = 0
		dialogoActive = false
		$Instru.visible = false
		Global.stop = false


func transition_balao(condition):
	if condition:
		$Balao/TweenBalao.interpolate_property(
			$Balao/RichTextLabelBalao, "percent_visible", 0,1,1.5,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Balao/TweenBalao.start()
	#else:
		#$Balao/TweenBalao.stop($Balao/TweenBalao)
		#$Balao/RichTextLabelBalao.percent_visible = 1
	
func transition_dialogo(condition): #função que determina a forma que o texto é exibido
	if condition:
		$Dialogo/TweenDialogo.interpolate_property(
			$Dialogo/RichTextLabelDialogo, "percent_visible", 0,1,1.5,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Dialogo/TweenDialogo.start()
		
func transition_instru(condition):
	if condition: 
		$Instru/TweenInstru.interpolate_property(
			$Instru/RichTextLabelInstru, "percent_visible", 0,1, 1,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Instru/TweenInstru.start()
		
func _process(delta):
	
	pass
#	if $Balao/RichTextLabelBalao.percent_visible >= 0.9:
#		finishedBalao = true
#
#	if $Dialogo/RichTextLabelDialogo.percent_visible >= 0.9:
#		finishedDialogo = true
#
#	if $Instru/RichTextLabelInstru.percent_visible >= 0.9:
#		finishedInstru = true 
