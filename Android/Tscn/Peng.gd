extends KinematicBody2D

var motion = Vector2()
var up_speed = 30
var back_speed = 15


func _physics_process(delta):
	
	if get_node("../Cam/Label").text == "1":
		if Input.is_action_pressed("W") or $"../Cam/Control/Up".pressed == true:
			motion.y -= up_speed
		elif Input.is_action_pressed("S") or $"../Cam/Control/Down".pressed == true:
			motion.y += up_speed
		elif $"../Cam/Control/Up".pressed == false and $"../Cam/Control/Down".pressed == false:
			motion.y = 0
		else:
			motion.y = 0
	
		if Input.is_action_pressed("A") or $"../Cam/Control/Left".pressed == true:
			motion.x -= back_speed
		elif Input.is_action_pressed("D") or $"../Cam/Control/Right".pressed == true:
			motion.x += back_speed
		elif $"../Cam/Control/Left".pressed == false and $"../Cam/Control/Right".pressed == false:
			motion.x = 0
		else:
			motion.x = 0
	else:
		$Peng/Yangmao.flip_v = true
		$Peng/Yangmao.playing = false
		motion.x = 0
		motion.y = 0
	move_and_slide(motion)


