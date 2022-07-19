extends KinematicBody2D

var motion = Vector2()
var speed

func _ready():
	var speed0 = get_node("Defeng").text
	var speed1 = float(int(speed0) + 1)
	var speed = speed1 / 10
	return speed


func _physics_process(delta):
	speed = _ready()
	if get_node("Label").text == "1":
		motion.x += speed
	else:
		motion.x = 0
	
	move_and_slide(motion)

func _on_Back_body_entered(body):
	get_node("Label").text = "0"
	get_node("Wang").visible = true
	
	
	
	
