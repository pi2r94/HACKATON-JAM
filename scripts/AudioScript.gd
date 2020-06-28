extends Node


var background = 1
var playing

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func play_selected():
	if playing:
		playing.stop()
	if background == 1:
		playing = $"Electro_back"
	elif background == 2:
		playing = $"Piano_back"
	elif background == 3:
		playing = $"Reggae_back"
	elif background == 4:
		playing = $"Rap_back"
	else:
		playing = null
	if playing:
		playing.play()
