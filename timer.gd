extends RichTextLabel

var seconds = 0
var milisec = 0
var sample = 3
var background = 4
var playing_back
var playing_sample

func _ready():
	if playing_sample:
		playing_sample.stop()
	if sample == 1:
		playing_sample = $"Reggae_sample"
	elif sample == 2:
		playing_sample = $"Rap_sample"
	elif sample == 3:
		playing_sample = $"Void_sample"
	else:
		playing_sample = null
	if playing_sample:
		playing_sample.play()

	if playing_back:
		playing_back.stop()
	if background == 1:
		playing_back = $"Electro_back"
	elif background == 2:
		playing_back = $"Piano_back"
	elif background == 3:
		playing_back = $"Reggae_back"
	elif background == 4:
		playing_back = $"Rap_back"
	else:
		playing_back = null
	if playing_back:
		playing_back.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if milisec > 9:
		seconds += 1
		milisec = 0
	set_text("Timer : "+str(seconds))
	if seconds == 30:
		if playing_back:
			playing_back.stop()
		if playing_sample:
			playing_sample.stop()
		assert(get_tree().change_scene("res://End.tscn") == OK)

func _on_Timer_timeout():
	seconds+=1
