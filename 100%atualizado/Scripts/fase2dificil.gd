extends Node2D

func _on_Area2D2_body_entered(body):
	get_tree().change_scene("res://Cenas/fase2medio.tscn")
	
func _on_Area2D_body_entered(body):
	if Global.fase1 == true:
		get_tree().change_scene("res://Cenas/mapaprovisorio.tscn")
	else:
		print("nn terminou") #fazer com balao de fala

	


	

