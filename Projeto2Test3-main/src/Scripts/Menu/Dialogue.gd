extends Control

# Adicione mais dialogos na caixa copiando o exemplo abaixo.
var dialog = [
	'The people from Dell Island are mysteriously getting infected by a powerful neuro-virus that is controlling their minds. ',
	'Our hero, Dellman, needs to find a cure for the virus and restore the peace in Dell Island.', "As the problem gets bigger, our hero needs to go into an adventure to pass the three gyms and acquire the knowledge that he needs to produce the cure.",
	"Which, in the process, he will learn more about the concept of product model so that he can confront each Mentor and surpass them.",
	"At last, his knowledge, abilities, and attitude will be put into test in a practical challenge, where the cure will be developed so that Dell Island can be saved."
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
		get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")

func _on_Tween_tween_completed(_object, _key):
	finished = true
