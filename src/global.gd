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
	if(a11 > 0 && a12 > 0 && a13 > 0):
		foi = true 
		
var keyDialogo = 'teste2'
var indexDialogo = 0

var keyBalao = 'teste2'
var indexBalao = 0

var keyInstru = 'teste2'
var indexInstru = 0

var dinamicaLobbyCondition = true

onready var dialogo = {
	'teste2': ["Para subirmos o nosso nivel de visao precisamos ter em mente aquilo que buscamos e entender como isso impacta em nosso projeto. \n \nParabens Dellman, voce esta mais perto de entender o que precisa ser feito!"
	#, 'teste 3 de dicionario']
	],
	'Tutorial': ["Neste jogo, cada coluna representa uma dimensão. Assim que as dicas forem apresentadas, pise no quadrado que mais se encaixa com a dica"],
	'ginasio3fase34': ["Parabéns ! Você conseguiu. Ande até a porta a proxima fase."],
	'ginasio3fase35': ["Parabéns ! Você conseguiu. Ande até a porta a proxima fase."],
	'teste': ['outracoisa'],
	'DD': ["Divergir e convergir para descobrir, depois divergir e convergir para construir seguido de iterações"],
	'Lean': ["Reduz o risco de de desenvolver o produto incorreto enquanto permite mudanças e alterações no produto confortavelmente"],
	'Human': ["Garante que o software resolva um problema real para usuários reais de uma forma desejável."],
	'XP': ["Metodologia que visa construir softwares funcionais em uma velocidade e qualidade constante"],
	'UserKP': ["Essa dimensão acompanha e armazena métricas de usuário "],	
	'Buss': ["Essa dimensão é responsável por criar um roadmap baseado em resultados a partir da maturidade nível 2"],
	'Quali': ["Prioriza encontrar e resolver bugs antes de adicionar recursos"],
	'Dev': ["Desenvolve maneiras de iteração automática"],	
	'Stake': ["Quem da inputs importantes ao product team para futuras iterações"],	
	'Visao': ["Responsável pela visualização dos objetivos, como a implementação de uma Growth Broad"],	
	'Data': ["Toma decisões baseadas em dados"],
	'Road': ["Mapeia os objetivos da equipe, levando em consideração Outcome-Based"],
	'Back': ["Acompanha o volume e a volatilidade de user stories."],
	'lobbyginasio1' : ["Para conseguir entrar nesta fase é necessario que você colete todos os livros espalhados ao redor do mapa"]
}




