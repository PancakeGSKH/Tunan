extends KinematicBody2D

var motion = Vector2()
var up_speed = 30
var back_speed = 10

func _physics_process(delta):
	if Input.is_action_pressed("W"):
		motion.y -= up_speed
	elif Input.is_action_pressed("S"):
		motion.y += up_speed
	else:
		motion.y = 0
	
	if Input.is_action_pressed("D"):
		motion.x += back_speed
	else:
		motion.x = 0
	
	move_and_slide(motion)
