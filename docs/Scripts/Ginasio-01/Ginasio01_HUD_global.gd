extends CanvasLayer

#export onready var box = $box
#Bloco de código acima tem função apenas de tornar de fácil acesso e processamento as cenas que serão exigidas e exibidas durante a fase

onready var preEstrelaPreta = preload("res://Cenas/Outros/Estrelas/EstrelaPreta.tscn")
onready var preEstrelaPreenchida = preload("res://Cenas/Outros/Estrelas/Estrelinha.tscn")
#onready var preBalao = preload("res://Cenas/Outros/Balao.tscn").instance()

#Os 3 Blocos abaixo criam variáveis que assumem a posição de cada elemento através de um vetor posição, em tempo de execução
var estrelaPosition1 = Vector2(887, 37)
var estrelaPosition2 = Vector2(935, 37)
var estrelaPosition3 = Vector2(983, 37)

var estrelaPreenchida1
var estrelaPreenchida2
var estrelaPreenchida3
var estrelaPreta1
var estrelaPreta2
var estrelaPreta3

#var openDialogue = false

#Através da função genérica "iniciarX", a variável de cada objeto puxa sua respectiva cena e sua respectiva posição

#func iniciarBalao():
#	var balao = preBalao.instance()
#	return balao

func iniciarEstrelaPreta(posicao):
	var estrela = preEstrelaPreta.instance()
	estrela.position = posicao
	add_child(estrela)
	return estrela

func iniciarEstrelaPreenchida(posicao):
	var estrela = preEstrelaPreenchida.instance()
	estrela.position = posicao
	add_child(estrela)
	return estrela
	

func estrelaConsumida(order):
	match order:
		1: 
			estrelaPreenchida1 = iniciarEstrelaPreenchida(estrelaPosition1)
			remove_child(estrelaPreta1)
		2:
			estrelaPreenchida2 = iniciarEstrelaPreenchida(estrelaPosition2)
			remove_child(estrelaPreta2)
		3: 
			estrelaPreenchida3 = iniciarEstrelaPreenchida(estrelaPosition3)
			remove_child(estrelaPreta3)

func resetEstrelasPreenchidas():
	remove_child(estrelaPreenchida1)
	remove_child(estrelaPreenchida2)
	remove_child(estrelaPreenchida3)
	add_child(estrelaPreta1)
	add_child(estrelaPreta2)
	add_child(estrelaPreta3)
#	if  Input.is_action_pressed("ui_select"):
#		queue_free()
#		Global.stop = false

func ativarHUDGinasio01():
	estrelaPreta1 = iniciarEstrelaPreta(estrelaPosition1)
	estrelaPreta2 = iniciarEstrelaPreta(estrelaPosition2)
	estrelaPreta3 = iniciarEstrelaPreta(estrelaPosition3)

func desativarHUDGinasio01():
	remove_child(estrelaPreta1)
	remove_child(estrelaPreta2)
	remove_child(estrelaPreta3)
	remove_child(estrelaPreenchida1)
	remove_child(estrelaPreenchida2)
	remove_child(estrelaPreenchida3)
