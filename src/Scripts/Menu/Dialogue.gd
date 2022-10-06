extends Control

# Adicione mais dialogos na caixa copiando o exemplo abaixo.
var dialog = [
	'As pessoas de Dell Island estão sendo misteriosamente infectadas por um poderoso neurovírus que está controlando suas mentes. ',
	'Nosso herói, Dellman, precisa encontrar uma cura para o vírus e restaurar a paz em Dell Island.', "À medida que o problema aumenta, nosso herói precisa entrar em uma aventura para passar pelos três ginásios e adquirir o conhecimento que ele precisa produzir a cura.",
	"Que, no processo, ele aprenderá mais sobre o conceito de modelo de produto para que possa enfrentar cada Mentor e superá-los.",
	"Finalmente, seus conhecimentos, habilidades e atitudes serão postos à prova em um desafio prático, onde a cura será desenvolvida para que Dell Island possa ser salva."
	]

var dialog_index = 0
var finished = false

#Carrega a variavel dialogo.Caso tenha mais de um dialogo, mude o nome.
func _ready():
	load_dialog()

#detecta se o player apertou espaço e adiciona a seta animada no fim do texto
func _process(_delta):
	$"SetaDialogo".visible = finished
	if Input.is_action_just_pressed("ui_accept"):
		load_dialog()

#Faz com que a caixa carregue a proxima fala e adiciona o efeito de aprecer gradativamente
func load_dialog():
	if dialog_index < dialog.size():
		finished = false
		$RichTextLabel.bbcode_text = dialog[dialog_index]
		$RichTextLabel.percent_visible = 0
		$Tween.interpolate_property(
			$RichTextLabel, "percent_visible", 0, 1, 4,
			#Primeiro valor= porcentagem visivel inicial, Segundo valor= Porcentagem visivel final.
			#Terceiro valor= quanto tempo leva.
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$Tween.start()
	else:
		queue_free()
	dialog_index += 1

	if dialog_index > 3:
		get_tree().change_scene("res://Cenas/Lobby/PreLobbyRoom.tscn")

func _on_Tween_tween_completed(_object, _key):
	finished = true
