extends Node

var count = 0

var stop = false
var openDialogue = false
var stars = 3

var playerPosition =  Vector2(0, 340)

var fase1 = false

var texto = ['a', 'b', 'c', 'd']

var a11 = 0
var a12 = 0
var a13 = 0
var foi = false 

var numLivros = 0
var numStars = 0
var percentVisionGinasio01 = 0.3

func _physics_process(delta):
	if(a11 > 0 && a12 > 0 && a13 > 0):
		foi = true 
		
var keyDialogo = 'teste2'
var indexDialogo = 0

var keyBalao = 'teste2'
var indexBalao = 0

onready var dialogo = {
	'teste2': ["Para subirmos o nosso nivel de visao precisamos ter em mente aquilo que buscamos e entender como isso impacta em nosso projeto. \n \nParabens Dellman, voce esta mais perto de entender o que precisa ser feito!"
	, "oloco meu roda isso ai pls"
	#, 'teste 3 de dicionario']
	]
	
	, 'teste': ['outracoisa']
}




