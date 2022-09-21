extends CanvasLayer

onready var preEstrelaPreta = preload("res://Cenas/Outros/Estrelas/EstrelaPreta.tscn")
onready var preEstrelaPreenchida = preload("res://Cenas/Outros/Estrelas/Estrelinha.tscn")

onready var preLivroPreto = preload("res://Cenas/Outros/Books/LivroPretoHUD.tscn")
onready var preLivroPreenchido = preload("res://Cenas/Outros/Books/LivroPreenchidoHUD.tscn")

var LivroPreto
var LivroPreenchido

var LivroPreto1 
var LivroPreto2 
var LivroPreto3 
var LivroPreto4 
var LivroPreto5 
var LivroPreenchido1
var LivroPreenchido2
var LivroPreenchido3
var LivroPreenchido4
var LivroPreenchido5

var LivroPosition1 = Vector2(775, 37)
var LivroPosition2 = Vector2(825, 37)
var LivroPosition3 = Vector2(875, 37)
var LivroPosition4 = Vector2(925, 37)
var LivroPosition5 = Vector2(975, 37)

#Os 3 Blocos abaixo criam variáveis que assumem a posição de cada elemento através de um vetor posição, em tempo de execução
#var estrelaPosition1 = Vector2(887, 37)
#var estrelaPosition2 = Vector2(935, 37)
#var estrelaPosition3 = Vector2(983, 37)
#
#var estrelaPreenchida1
#var estrelaPreenchida2
#var estrelaPreenchida3
#var estrelaPreta1
#var estrelaPreta2
#var estrelaPreta3

#func iniciarEstrelaPreta(posicao):
#	var estrela = preEstrelaPreta.instance()
#	estrela.position = posicao
#	add_child(estrela)
#	return estrela
#
#func iniciarEstrelaPreenchida(posicao):
#	var estrela = preEstrelaPreenchida.instance()
#	estrela.position = posicao
#	add_child(estrela)
#	return estrela

func iniciarLivroPreto(posicao):
	LivroPreto = preLivroPreto.instance()
	LivroPreto.position = posicao
	add_child(LivroPreto)
	return LivroPreto

func iniciarLivroPreenchido(posicao):
	LivroPreenchido = preLivroPreenchido.instance()
	LivroPreenchido.position = posicao
	add_child(LivroPreenchido)
	return LivroPreenchido


#func estrelaConsumida(order):
#	match order:
#		1: 
#			estrelaPreenchida1 = iniciarEstrelaPreenchida(estrelaPosition1)
#			remove_child(estrelaPreta1)
#		2:
#			estrelaPreenchida2 = iniciarEstrelaPreenchida(estrelaPosition2)
#			remove_child(estrelaPreta2)
#		3: 
#			estrelaPreenchida3 = iniciarEstrelaPreenchida(estrelaPosition3)
#			remove_child(estrelaPreta3)

func livroConsumido(order):
	match order:
		1: 
			LivroPreenchido1 = iniciarLivroPreenchido(LivroPosition1)
			remove_child(LivroPreto1)
		2:
			LivroPreenchido2 = iniciarLivroPreenchido(LivroPosition2)
			remove_child(LivroPreto2)
		3: 
			LivroPreenchido3 = iniciarLivroPreenchido(LivroPosition3)
			remove_child(LivroPreto3)
		4: 
			LivroPreenchido3 = iniciarLivroPreenchido(LivroPosition4)
			remove_child(LivroPreto4)
		5: 
			LivroPreenchido3 = iniciarLivroPreenchido(LivroPosition5)
			remove_child(LivroPreto5)
	
	
#func resetEstrelasPreenchidas():
#	remove_child(estrelaPreenchida1)
#	remove_child(estrelaPreenchida2)
#	remove_child(estrelaPreenchida3)
#	add_child(estrelaPreta1)
#	add_child(estrelaPreta2)
#	add_child(estrelaPreta3)
#	if  Input.is_action_pressed("ui_select"):
#		queue_free()
#		Global.stop = false

func resetLivrosPreenchidos():
	remove_child(LivroPreenchido1)
	remove_child(LivroPreenchido2)
	remove_child(LivroPreenchido3)
	remove_child(LivroPreenchido4)
	remove_child(LivroPreenchido5)
	add_child(LivroPreto1)
	add_child(LivroPreto2)
	add_child(LivroPreto3)
	add_child(LivroPreto4)
	add_child(LivroPreto5)

#func ativarHUDGinasio01():
#	estrelaPreta1 = iniciarEstrelaPreta(estrelaPosition1)
#	estrelaPreta2 = iniciarEstrelaPreta(estrelaPosition2)
#	estrelaPreta3 = iniciarEstrelaPreta(estrelaPosition3)

func ativarHUDGinasio01():
	LivroPreto1 = iniciarLivroPreto(LivroPosition1)
	LivroPreto2 = iniciarLivroPreto(LivroPosition2)
	LivroPreto3 = iniciarLivroPreto(LivroPosition3)
	LivroPreto4 = iniciarLivroPreto(LivroPosition4)
	LivroPreto5 = iniciarLivroPreto(LivroPosition5)
	
func desativarHUDGinasio01():
	remove_child(LivroPreto1)
	remove_child(LivroPreto2)
	remove_child(LivroPreto3)
	remove_child(LivroPreto4)
	remove_child(LivroPreto5)

	remove_child(LivroPreenchido1)
	remove_child(LivroPreenchido2)
	remove_child(LivroPreenchido3)
	remove_child(LivroPreenchido4)
	remove_child(LivroPreenchido5)
	
	
#func desativarHUDGinasio01():
#	remove_child(estrelaPreta1)
#	remove_child(estrelaPreta2)
#	remove_child(estrelaPreta3)
#	remove_child(estrelaPreenchida1)
#	remove_child(estrelaPreenchida2)
#	remove_child(estrelaPreenchida3)
