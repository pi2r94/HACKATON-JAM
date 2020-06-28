extends Node


var sample = 1
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
	if sample == 1:
		playing = $"Reggae_sample"
	elif sample == 2:
		playing = $"Rap_sample"
	elif sample == 3:
		playing = $"Void_sample"
	else:
		playing = null
	if playing:
		playing.play()
