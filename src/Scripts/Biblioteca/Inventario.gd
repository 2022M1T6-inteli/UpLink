extends Node2D

func _ready():
	
	if Global.fase1finished==true:  #usar booleana
		$Coluna_1/Button_1.visible=true
	elif Global.fase2finished==true:
		$Coluna_1/Button_2.visible=true
	elif Global.fase3finished==true:
		$Coluna_1/Button_3.visible=true
	elif Global.fase4finished==true:
		$Coluna_1/Button_4.visible=true
	elif Global.fase5finished==true:
		$Coluna_1/Button_5.visible=true
	elif Global.fase6finished==true:
		$Coluna_2/Button_1.visible=true
	elif Global.fase7finished==true:
		$Coluna_2/Button_2.visible=true
	elif Global.fase8finished==true:
		$Coluna_2/Button_3.visible=true
	elif Global.fase9finished==true:
		$Coluna_2/Button_4.visible=true
	elif Global.fase10finished==true:
		$Coluna_2/Button_5.visible=true


func _on_Button_2_pressed():
	get_tree().change_scene("res://Cenas/Biblioteca/ProductModel/Vision.tscn")


func _on_Button_3_pressed():
	get_tree().change_scene("res://Cenas/Biblioteca/ProductModel/Roadmap.tscn")


func _on_Button_4_pressed():
	get_tree().change_scene("res://Cenas/Biblioteca/ProductModel/Stakeholders.tscn")


func _on_Button_5_pressed():
	get_tree().change_scene("res://Cenas/Biblioteca/ProductModel/Backlog.tscn")

func _on_Button_6_pressed():
	get_tree().change_scene("res://Cenas/Biblioteca/ProductModel/Datadriven.tscn")


func _on_Button_7_pressed():
	get_tree().change_scene("res://Cenas/Biblioteca/ProductModel/Userkpis.tscn")


func _on_Button_8_pressed():
	get_tree().change_scene("res://Cenas/Biblioteca/ProductModel/Businesskpis.tscn")


func _on_Button_9_pressed():
	get_tree().change_scene("res://Cenas/Biblioteca/ProductModel/Deploymentkpis.tscn")


func _on_Button_10_pressed():
	get_tree().change_scene("res://Cenas/Biblioteca/ProductModel/Qualitykpis.tscn")


func _on_Button_1_pressed():
	get_tree().change_scene("res://Cenas/Biblioteca/ProductModel/Introduction.tscn")

func _on_quit_pressed():
	get_tree().change_scene("res://Cenas/Lobby/Lobby.tscn")
