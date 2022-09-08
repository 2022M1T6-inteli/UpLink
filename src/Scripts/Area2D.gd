extends Area2D

onready var changer = get_parent().get_node("CanvasLayer_in")
export var path: String

func _on_Area2D_body_entered(body: Node) -> void:
	if body.name == "Player":
		changer.change_scene(path)
