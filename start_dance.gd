extends Sprite


var rng = RandomNumberGenerator.new()


# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("AnimationPlayer").play("dance_anim")
	pass # Replace with function body.

func random_movement():
	rng.randomize()
	var my_random_number = rng.randf_range(-10, 10)
	var direction = Vector2(my_random_number,0)
	position += direction


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	random_movement()
	pass
