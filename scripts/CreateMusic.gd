extends TextureRect


# Declare member variables here. Examples:
var background = 0
var sample = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func my_next(actual, maxi):
	if actual == maxi:
		return 1
	else:
		return actual + 1


func my_prev(actual, maxi):
	if actual == 1:
		return maxi
	else:
		return actual - 1


func _on_PlayButton_pressed():
	if background == 0:
		$AudioBack.play_selected()
	elif sample == 0:
		$AudioSample.play_selected()


func _on_NextButton_pressed():
	if background == 0:
		$AudioBack.background = my_next($AudioBack.background, 4)
		$PannelTexture/Pannel.msg = "Select your background Music DJ" + "\nCurrent is " + str($AudioBack.background) + " // 4"
		if ($AudioBack.playing):
			$AudioBack.playing.stop()
	elif sample == 0:
		$AudioSample.sample = my_next($AudioSample.sample, 4)
		$PannelTexture/Pannel.msg = "Select your voice sample DJ" + "\nCurrent is " + str($AudioSample.sample) + " // 4"
		if ($AudioSample.playing):
			$AudioSample.playing.stop()


func _on_PrevButton_pressed():
	if background == 0:
		$AudioBack.background = my_prev($AudioBack.background, 4)
		$PannelTexture/Pannel.msg = "Select your background Music DJ" + "\nCurrent is " + str($AudioBack.background) + " // 4"
		if ($AudioBack.playing):
			$AudioBack.playing.stop()
	elif sample == 0:
		$AudioSample.sample = my_prev($AudioSample.sample, 4)
		$PannelTexture/Pannel.msg = "Select your voice sample DJ" + "\nCurrent is " + str($AudioSample.sample) + " // 4"
		if ($AudioSample.playing):
			$AudioSample.playing.stop()


func _on_AcceptButton_pressed():
	if ($AudioBack.playing):
		$AudioBack.playing.stop()
	if ($AudioSample.playing):
		$AudioSample.playing.stop()
	if background != 0 && sample != 0:
		$PannelTexture/ProgressBar.value = 100
		assert(get_tree().change_scene("res://dance_node.tscn") == OK)
	if background == 0:
		background = $AudioBack.background
		$PannelTexture/Pannel.msg = "After choose the background Music, Select voice sample DJ"
		$PannelTexture/ProgressBar.value = 33.33
	elif sample == 0:
		sample = $AudioSample.sample
		$PannelTexture/Pannel.msg = "Click on Accept to start your live DJ"
		$PannelTexture/ProgressBar.value = 66.66
