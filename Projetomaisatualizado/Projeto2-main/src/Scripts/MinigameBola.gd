extends Node2D

var Passe
#var lista = (_ _ _ _ _ _)
#fazer append passe 
# if todos forem 1, passe = liberado 

func _on_Area2D_body_entered(body):
	if ($Area2D/X.visible):
		$Area2D/X.visible = false  
		$Area2D/T.visible = false
		$Area2D/O.visible = true 
		Global.count += 1
	elif ($Area2D/O.visible):
		$Area2D/O.visible = false
		$Area2D/T.visible = true 
		Global.count -= 1
	else: 
		$Area2D/X.visible = true 
		$Area2D/O.visible = true 
