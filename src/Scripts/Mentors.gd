extends Resource

export(String) var name = "Mentor" #name of the enemy
export(Texture) var texture = null #sprite of the enemy
export(int) var health  #Mentor's health
export(int) var damage = 20 #enemy damage (Mentor)

#Como implementar esse código no código principal?
#abra um novo "resource" e importe esse script dentro desse 
#"resource" na parte de script 
#e então você consegue colocar o sprite, a vida e o dano que
#o inimigo causa! (dependendo das variáveis...)

#open a new resource and import this script into the resource script
#you can then set the texture (sprite), health, and damage!

func _ready():
	pass # Replace with function body.



