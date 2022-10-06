extends Node2D

export(Resource) var enemy = null #exportando o "Mentor"

var current_Dellman_health = 0
var current_enemy_health = 0

enum QuestionType {TEXT, IMAGE, VIDEO, AUDIO}

export (Resource) var bd_Quiz2 # acesso ao banco de dados
export (Color) var color_right
export (Color) var color_wrong

var buttons := [] # como precisamos de um array c todos os botoes, declaramos essa var
var index :=0  # index é indice, no caso a representa a pergunta atual do meu banco de dados
var quiz_shuffle := []
var correct := 0

onready var question_texts := $Textbox/Label

func _ready() -> void:

	for _button in $ColorRect2/question_holder.get_children(): #fazendo uma interação dentro dos buttons do nó quesiton holder
		buttons.append(_button) # adiciona os botões filhos do nó
	
	set_health($Mentor/ProgressBar, enemy.health, enemy.health) #define a vida dos personagens
	set_health($Dellman/ProgressBar, Global.current_health, Global.total_health)

	current_Dellman_health = Global.current_health
	current_enemy_health = enemy.health
	
	quiz_shuffle=randomize_array(bd_Quiz2.bd)
	load_quiz()
	
	
func set_health(progress_bar, health, total_health): #função para a verificação da vida
	progress_bar.value = health #verificar de onde ta pegando
	progress_bar.max_value = total_health #verificar de onde ta pegando
	progress_bar.get_node("Label").text = "HP:%d/%d" % [health, total_health] #appear health percentage
	
func enemy_turn(): #chamando a vez do mento

	current_Dellman_health = max(0, current_Dellman_health - enemy.damage) #mudando a vida do dellman
	set_health($Dellman/ProgressBar, current_Dellman_health, Global.total_health)

	$AnimationPlayer.play("Dellman.damage")
	yield($AnimationPlayer,"animation_finished") #fazendo sinal que acabou a vez dele

func load_quiz() -> void:
	
	if index >= bd_Quiz2.bd.size() or current_Dellman_health == 0:
		print("Acabaram as perguntas")
		game_over()
		return # comando para sair da função
		
	question_texts.text = str(quiz_shuffle[index].question_info) # declarando que question_text vai receber a var bd do nosso bd_quiz, precisamos declarar qual o item e fazemos pelo index, depois pegamos o texto através da question_info definada no script "res_question" que exporta as variaves das perguntas
	print(question_texts)
	
	var options = randomize_array(bd_Quiz2.bd[index].options)
	
	for i in range(4):
		buttons[i].text=str(options[i]) # preenchendo os buttons com as options ou alternativas
		buttons[i].connect("pressed", self, "buttons_answer", [buttons[i]]) # criando o sinal pressed nesse mesmo scrpit, com a func buttons_answer, passando o próprio botão como argumento
		
	match bd_Quiz2.bd[index].type:
		QuestionType.TEXT: # se o question type for texto, escona o panel
			$Textbox/Label.show()

func buttons_answer(button) -> void:
	print(button.text)
	if bd_Quiz2.bd[index].correct == button.text:
		button.modulate = color_right
		correct += 1
		current_enemy_health = max(0, current_enemy_health - Global.damage1)
		set_health($Mentor/ProgressBar, current_enemy_health, enemy.health)

		$AnimationPlayer.play("Mentor_damage")
		yield($AnimationPlayer,"animation_finished")
		
		yield (get_tree().create_timer(1), "timeout") # criando temporizador de 1 s, para continuar o processo
		for bt in buttons: # para cada bt em buttons a gnt vai pegar o modulate e voltar para o padrão
			bt.modulate=Color.white
			bt.disconnect("pressed", self, "buttons_answer")
	else:
		button.modulate = color_wrong
		enemy_turn()
		yield (get_tree().create_timer(1), "timeout") # criando temporizador de 1 s, para continuar o processo
		for bt in buttons: # para cada bt em buttons a gnt vai pegar o modulate e voltar para o padrão
			bt.modulate=Color.white
			bt.disconnect("pressed", self, "buttons_answer")
		

	index +=1 # quando ele responder, ele irá para a outra pergunta
	load_quiz()
	
func randomize_array(array: Array) -> Array: #funcao para randomizar um array
	randomize()
	var array_temp := array #criando var temporario para receber o array
	array_temp.shuffle()
	return array_temp # retornando o array randozmizado

func game_over() -> void: #arrumar
	$game_over.show() 
	$game_over/txt_result.text=str(correct, "/", bd_Quiz2.bd.size())

func _on_button_restart_pressed():
	get_tree().reload_current_scene()
	
func _process(delta):
	if current_enemy_health <= 0 or index==16:
		Global.ginasio3final += 1
		print(Global.stepGin)
		if Global.stepGin == 1:
			Global.stepGin01PreBoss = 2
			Global.playerPosition = Vector2(850, 352)
			get_tree().change_scene("res://Cenas/Ginasio-01/Ginasio01_pre_boss_fight.tscn")
			Global.stepGin = 2
			
		elif Global.stepGin == 2:
			Global.stepGin02PreBoss = 2
			Global.playerPosition = Vector2(850, 352)
			get_tree().change_scene("res://Cenas/Ginasio-02/Ginasio02_pre_boss_fight.tscn")
			Global.stepGin = 3
			
		elif Global.stepGin == 3:
			Global.stepGin03PreBoss = 2
			Global.playerPosition = Vector2(672, 1328)
			get_tree().change_scene("res://Cenas/Ginasio-03/Ginasio03_pre_boss_fight.tscn")
			
#			get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")
#			Global.preGinasio = "Ginasio<3"
#			Global.Gin03_enabled = false
#			Global.dinamicaLobbyCondition = false
