extends CanvasLayer

#Função para repetir e fazer o efeito inverso do Transição_in.gd
func _ready():
	$Tween.interpolate_property($ColorRect, "progress", 1.0, 0.0, 2, Tween.TRANS_QUINT, Tween.EASE_IN_OUT)
	$Tween.start()
