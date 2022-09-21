extends CanvasLayer

var finishedBalao = false
var finishedDialogo = false
var balaoActive = false
var dialogoActive = false

func _input(event):
	
	if event.is_action_pressed("ui_select") and finishedBalao and balaoActive:
		getNextSpeakBalao()
	elif event.is_action_pressed("ui_select") and finishedBalao == false and balaoActive:
		transition_balao(false)
		
		
	if event.is_action_pressed("ui_select") and finishedDialogo and dialogoActive:
		getNextSpeakDialogo()
	elif event.is_action_pressed("ui_select") and finishedDialogo == false and dialogoActive:
		transition_dialogo(false)


func getNextSpeakBalao():
	Global.indexBalao += 1
	load_balao(Global.keyBalao)

func getNextSpeakDialogo():
	Global.indexDialogo += 1
	load_dialogo(Global.keyDialogo)


func load_balao(key):
	$Balao.visible = true
	if Global.indexBalao < Global.dialogo[key].size():
		balaoActive = true
		finishedBalao = false
		$Balao/RichTextLabelBalao.bbcode_text = Global.dialogo[key][Global.indexBalao]
		transition_balao(true)
		Global.stop = true
	else:
		Global.indexBalao = 0
		balaoActive = false
		$Balao.visible = false
		Global.stop = false
		
func load_dialogo(key):
	$Dialogo.visible = true
	if Global.indexDialogo < Global.dialogo[key].size():
		dialogoActive = true
		finishedDialogo = false
		$Dialogo/RichTextLabelDialogo.bbcode_text = Global.dialogo[key][Global.indexDialogo]
		transition_dialogo(true)
		Global.stop = true
	else:
		Global.indexDialogo = 0
		dialogoActive = false
		$Dialogo.visible = false
		Global.stop = false


func transition_balao(condition):
	if condition:
		$Balao/TweenBalao.interpolate_property(
			$Balao/RichTextLabelBalao, "percent_visible", 0,1,4,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Balao/TweenBalao.start()
	#else:
		#$Balao/TweenBalao.stop($Balao/TweenBalao)
		#$Balao/RichTextLabelBalao.percent_visible = 1
	
func transition_dialogo(condition):
	if condition:
		$Dialogo/TweenDialogo.interpolate_property(
			$Dialogo/RichTextLabelDialogo, "percent_visible", 0,1,4,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Dialogo/TweenDialogo.start()
		
		
		
func _process(delta):
	if $Balao/RichTextLabelBalao.percent_visible >= 0.9:
		finishedBalao = true
		
	if $Dialogo/RichTextLabelDialogo.percent_visible >= 0.9:
		finishedDialogo = true
