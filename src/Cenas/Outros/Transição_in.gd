extends CanvasLayer

#Função para identificar a mudança de cena e quanto tempo isso vai demorar pra acontecer apos o contato no bodyshape
func change_scene(path, delay = 0.5):
	$Tween.interpolate_property($ColorRect, "progress", 0.0, 1.0, 2, Tween.TRANS_QUINT, Tween.EASE_IN_OUT)
	$Tween.start()
	yield($Tween, "tween_completed")
	assert(get_tree().change_scene(path) == OK)
