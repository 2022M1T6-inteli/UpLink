extends CanvasLayer

export onready var box = $box

#Bloco de código acima tem função apenas de tornar de fácil acesso e processamento as cenas que serão exigidas e exibidas durante a fase

onready var preEstrelaPreta = preload("res://Cenas/Outros/Estrelas/EstrelaPreta.tscn")
onready var preEstrelaInventario = preload("res://Cenas/Outros/Estrelas/Estrelinha.tscn")
onready var preBalao = preload("res://Cenas/Outros/balao.tscn").instance()

#Os 3 Blocos abaixo criam variáveis que assumem a posição de cada elemento através de um vetor posição, em tempo de execução

var estrelaPretaPosition1 = Vector2(983, 37)
var estrelaPretaPosition2 = Vector2(935, 37)
var estrelaPretaPosition3 = Vector2(887, 37)

#Acima temos a declaração de variáveis correspondentes a cada elemento utilizado na tela

var estrelaInventario1
var estrelaInventario2
var estrelaInventario3
var estrelaPreta1
var estrelaPreta2
var estrelaPreta3

#Declaração de variáveis responsáveis por para o jogo

#var stop = false
var openDialogue = false
var stars = 3

#Através da função genérica "iniciarX", a variável de cada objeto puxa sua respectiva cena e sua respectiva posição

#func iniciarBalao():
#	var balao = preBalao.instance()
#	return balao


func iniciarEstrelaPreta(posicao):
	var estrela = preEstrelaPreta.instance()
	estrela.position = posicao
	return estrela

func iniciarEstrelaInventario(posicao):
	var estrela = preEstrelaInventario.instance()
	estrela.position = posicao
	return estrela
	
func controleEstrelaMapa(condition):
	if condition:
		estrelaPreta1 = iniciarEstrelaPreta(estrelaPretaPosition1)
		estrelaPreta2 = iniciarEstrelaPreta(estrelaPretaPosition2)
		estrelaPreta3 = iniciarEstrelaPreta(estrelaPretaPosition3)

		estrelaInventario1 = iniciarEstrelaInventario(estrelaPretaPosition1)
		estrelaInventario2 = iniciarEstrelaInventario(estrelaPretaPosition2)
		estrelaInventario3 = iniciarEstrelaInventario(estrelaPretaPosition3)

		#Com o método add_child(), fazemos com que todos os elementos criados sejam representados em tela
		add_child(estrelaPreta1)
		add_child(estrelaPreta2)
		add_child(estrelaPreta3)

		add_child(estrelaInventario1)
		estrelaInventario1.hide()
		add_child(estrelaInventario2)
		estrelaInventario2.hide()
		add_child(estrelaInventario3)
		estrelaInventario3.hide()
	else:
		remove_child(estrelaPreta1)
		remove_child(estrelaPreta2)
		remove_child(estrelaPreta3)
		remove_child(estrelaInventario1)
		remove_child(estrelaInventario2)
		remove_child(estrelaInventario3)
	
#		hud_global.stars = 3 #Contador de estrelas

	#Função com lógica para identificar se alguma estrela foi coletada
func _process(delta):
	if hud_global.stars == 2:
		estrelaInventario3.show()
	if hud_global.stars == 1:
		estrelaInventario2.show()
	if hud_global.stars == 0:
		estrelaInventario1.show()
		
#	if Global.openDialogue:
#		add_child(preBalao)
#		Global.openDialogue = false
#
#	if  Input.is_action_pressed("ui_select"):
#		queue_free()
#		Global.stop = false
		
		
		
