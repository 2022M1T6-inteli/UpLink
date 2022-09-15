extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
var contdir = 0

func _ready():
	pass # Replace with function body.

	
func _process(delta):
	
	
	if Input.is_action_pressed("ui_up"):
		position.y += -1
		contdir += 1
	if Input.is_action_pressed("ui_down"):
		position.y += 1
	if Input.is_action_pressed("ui_right"):
		position.x += 1
	if Input.is_action_pressed("ui_left"):
		position.x += -1
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
