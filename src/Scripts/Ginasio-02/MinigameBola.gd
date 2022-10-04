extends Node2D

var Passe
#var lista = (_ _ _ _ _ _)
#fazer append passe 
# if todos forem 1, passe = liberado 

#Função para fazer com que os pisos sejam alterados na ordem "X", "O" e triângulo

func _on_Area2D_body_entered(body):
	if ($Area2D/X.visible):
		$Area2D/X.visible = false  
		$Area2D/T.visible = false
		$Area2D/O.visible = true 
		Global.countX -= 1
		Global.countO += 1
	elif ($Area2D/O.visible):
		$Area2D/O.visible = false
		$Area2D/T.visible = true 
		Global.countO -= 1
		Global.countT += 1
	else: 
		$Area2D/X.visible = true 
		$Area2D/O.visible = true 
		Global.countT -= 1
		Global.countX += 1

	Global.countMov += 1
