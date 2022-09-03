extends Node2D
onready var preEstrela = preload("res://Cenas/Star.tscn")
onready var preBalao = preload("res://Cenas/Balão.tscn").instance()

var estrelaPosition1 = Vector2(40,34)
var estrelaPosition2 = Vector2(655,110)
var estrela1
var estrela2
var preBalaoPosition = Vector2(533,355)

func _ready():
	estrela1 = inciarEstrela(estrelaPosition1)
	estrela2 = inciarEstrela(estrelaPosition2)
	add_child(estrela1)
	add_child(estrela2)

	
func _process(delta):
	existeEstrela()
	print(is_instance_valid(estrela1))


func inciarEstrela(posicao):
	var estrela = preEstrela.instance()
	estrela.position = posicao
	return estrela

func existeEstrela():
	if not is_instance_valid(estrela1) and not is_instance_valid(estrela2):
		add_child(preBalao)

	
