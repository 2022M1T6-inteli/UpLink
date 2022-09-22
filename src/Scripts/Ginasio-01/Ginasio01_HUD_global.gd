extends CanvasLayer

# ACESSANDO E PROCESSANDO AS CENAS QUE SERÃO EXIGIDAS E EXIBIDAS NA HUD
onready var preLivroPreto = preload("res://Cenas/Outros/Books/LivroPretoHUD.tscn")
onready var preLivroPreenchido = preload("res://Cenas/Outros/Books/LivroPreenchidoHUD.tscn")

# DECLARANDO AS VARIÁVEIS
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

# DECLARANDO A POSIÇÃO DOS LIVROS NA HUD
var LivroPosition1 = Vector2(775, 37)
var LivroPosition2 = Vector2(825, 37)
var LivroPosition3 = Vector2(875, 37)
var LivroPosition4 = Vector2(925, 37)
var LivroPosition5 = Vector2(975, 37)

# FUNÇÃO PARA INSTANCIAR E IMPLEMENTAR O LIVRO PRETO
func iniciarLivroPreto(posicao):
	LivroPreto = preLivroPreto.instance()
	LivroPreto.position = posicao
	add_child(LivroPreto)
	return LivroPreto

# FUNÇÃO PARA INSTANCIAR E IMPLEMENTAR O LIVRO PREENCHIDO
func iniciarLivroPreenchido(posicao):
	LivroPreenchido = preLivroPreenchido.instance()
	LivroPreenchido.position = posicao
	add_child(LivroPreenchido)
	return LivroPreenchido

# FUNÇÃO PARA SOBRESCREVER O LIVRO PRETO COM O LIVRO PREENCHIDO
func livroConsumido(order):
	match order:
		1: 
			LivroPreenchido1 = iniciarLivroPreenchido(LivroPosition1)
		2:
			LivroPreenchido2 = iniciarLivroPreenchido(LivroPosition2)
		3: 
			LivroPreenchido3 = iniciarLivroPreenchido(LivroPosition3)
		4: 
			LivroPreenchido4 = iniciarLivroPreenchido(LivroPosition4)
		5: 
			LivroPreenchido5 = iniciarLivroPreenchido(LivroPosition5)
	
# FUNÇÃO PARA RESETAR OS LIVROS PREENCHIDOS
func resetLivrosPreenchidos():
	remove_child(LivroPreenchido1)
	remove_child(LivroPreenchido2)
	remove_child(LivroPreenchido3)
	remove_child(LivroPreenchido4)
	remove_child(LivroPreenchido5)

# FUNÇÃO PARA ATIVAR A HUD NO GINASIO
func ativarHUDGinasio01():
	LivroPreto1 = iniciarLivroPreto(LivroPosition1)
	LivroPreto2 = iniciarLivroPreto(LivroPosition2)
	LivroPreto3 = iniciarLivroPreto(LivroPosition3)
	LivroPreto4 = iniciarLivroPreto(LivroPosition4)
	LivroPreto5 = iniciarLivroPreto(LivroPosition5)
	
# FUNÇÃO PARA DESATIVAR A HUD NO GINASIO
func desativarHUDGinasio01():
	queue_free()
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
