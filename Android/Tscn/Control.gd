extends Control

signal UorD(dic)
signal LorR(dic)



func _on_Up_pressed():
	emit_signal("UorD","Up")
func _on_Down_pressed():
	emit_signal("UorD","Down")
	
