extends KinematicBody2D

var motion = Vector2()
var up_speed = 30
var back_speed = 15

func _physics_process(delta):
	if get_node("../Cam/Label").text == "1":
		if Input.is_action_pressed("W"):
			motion.y -= up_speed
		elif Input.is_action_pressed("S"):
			motion.y += up_speed
		else:
			motion.y = 0
	
		if Input.is_action_pressed("A"):
			motion.x -= back_speed
		elif Input.is_action_pressed("D"):
			motion.x += back_speed
		else:
			motion.x = 0
	else:
		$Peng/Yangmao.flip_v = true
		$Peng/Yangmao.playing = false
		motion.x = 0
		motion.y = 0
	move_and_slide(motion)

func _ready():
	pass
