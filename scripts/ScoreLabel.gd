extends Label


# Declare member variables here. Examples:
# var a = 2
var score = 50


# Called when the node enters the scene tree for the first time.
func _ready():
	set_text("Congratulations DJ, your score:\n" + str(score))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
