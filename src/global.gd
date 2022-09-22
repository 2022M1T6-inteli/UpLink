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
var a14 = 0 
var foi = false 

var numLivros = 0
var numStars = 0
var percentVisionGinasio01 = 0.3

func _physics_process(delta):
	if(a11 > 0 && a12 > 0 && a13 > 0 & a14 > 0):
		foi = true 
		
var keyDialogo = 'teste2'
var indexDialogo = 0

var keyBalao = 'teste2'
var indexBalao = 0

var keyInstru = 'teste2'
var indexInstru = 0

onready var dialogo = {
	'teste2': ["Para subirmos o nosso nivel de visao precisamos ter em mente aquilo que buscamos e entender como isso impacta em nosso projeto. \n \nParabens Dellman, voce esta mais perto de entender o que precisa ser feito!"
	#, 'teste 3 de dicionario']
	],
	'Tutorial': ["Neste jogo, cada coluna representa uma dimensão. Assim que as dicas forem apresentadas, pise no quadrado que mais se encaixa com a dica"],
	'ginasio3fase20': ["um pergunta asdaoishdikasbduoansdibasdn"],
	'ginasio3fase21': ["dois pergunta asdaoishdikasbduoansdibasdn"],
	'ginasio3fase22': ["tres pergunta asdaoishdikasbduoansdibasdn"],
	'ginasio3fase23': ["quatro pergunta asdaoishdikasbduoansdibasdn"],
	'ginasio3fase24': ["VOCE CONSEGUIU YOU MADE, CONGRATUALATIONS YOU MADE IT, JUST DO IT MAKE YOUR DREAMS COME TRUE JUST DO IT YOU DO IT CONGRATULATIONS CONGRATULATIONS"],
	'ginasio3fase25': ["VOCE CONSEGUIU YOU MADE, CONGRATUALATIONS YOU MADE IT, JUST DO IT MAKE YOUR DREAMS COME TRUE JUST DO IT YOU DO IT CONGRATULATIONS CONGRATULATIONS"],
	
	'ginasio3fase30': ["um pergunta asdaoishdikasbduoansdibasdn"],
	'ginasio3fase31': ["dois pergunta asdaoishdikasbduoansdibasdn"],
	'ginasio3fase32': ["tres pergunta asdaoishdikasbduoansdibasdn"],
	'ginasio3fase33': ["quatro pergunta asdaoishdikasbduoansdibasdn"],
	'ginasio3fase34': ["VOCE CONSEGUIU YOU MADE, CONGRATUALATIONS YOU MADE IT, JUST DO IT MAKE YOUR DREAMS COME TRUE JUST DO IT YOU DO IT CONGRATULATIONS CONGRATULATIONS"],
	'ginasio3fase35': ["VOCE CONSEGUIU YOU MADE, CONGRATUALATIONS YOU MADE IT, JUST DO IT MAKE YOUR DREAMS COME TRUE JUST DO IT YOU DO IT CONGRATULATIONS CONGRATULATIONS"],
	'teste': ['outracoisa']
}




