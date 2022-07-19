extends Label

func _on_Up_pressed():
	_on_Up_pressed()
	pass
func _on_Down_pressed():
	_on_Down_pressed()
	pass
func _physics_process(delta):
	if _on_Up_pressed():
		$".".text = "Up"
	elif _on_Down_pressed():
		$".".text = "Down"
