extends VBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_NewButton_pressed():
	assert(get_tree().change_scene("res://CreateMusic.tscn") == OK)


func _on_QuitButton_pressed():
	get_tree().quit(0)
