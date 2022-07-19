extends Node2D

func _physics_process(delta):
	var def = get_node("/root/Defeng/Defeng").text
	get_node("Cam/Defeng").text = def
	if Input.is_action_pressed("ESC") or $"Cam/Fan".pressed == true:
		get_tree().change_scene("res://Tscn/Start.tscn")
		get_node("/root/Defeng/Defeng").text = "0"
	
func _on_Jianglou_body_entered(body):
	get_tree().change_scene("res://Tscn/Guodu.tscn")
	pass
