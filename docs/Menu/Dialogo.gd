extends Control

# Adicione mais dialogos na caixa copiando o exemplo abaixo.
var dialogo = [
	'Olá, eu sou o yuri toleidinho, me de um cadim de pizza meu rei, eu sou do rio de janeiro',
	'Caixa de texto completamente concluida', "MARCUS VINICYUS ROSA TEIXEIRA"
	]

var dialog_indi = 0 
var finished = false 

#Carrega a variavel dialogo.Caso tenha mais de um dialogo, mude o nome.
func _ready():
	load_dialogo()

#detecta se o player apertou espaço
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		load_dialogo()

#Faz com que a caixa carregue a proxima fala
func load_dialogo():
	if dialog_indi < dialogo.size():
		$RichTextLabel.bbcode_text = dialogo[dialog_indi]
		$RichTextLabel.percent_visible = 1
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible", 0, 1, 4, 
			#Primeiro valor= porcentagem visivel inicial, Segundo valor= Porcentagem visivel final.
			#Terceiro valor= quanto tempo leva.
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT 
		)
		$Tween.start()
	else: 
		queue_free()
	dialog_indi +=1
	

	if dialog_indi > 3:
		get_tree().change_scene("res://cenas/Mapa.tscn")
