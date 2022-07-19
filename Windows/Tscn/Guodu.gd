extends Control


func _ready():
	var def0 = get_node("/root/Defeng/Defeng").text
	var def = str(int(def0) + 1)
	var Sud = str(int(def0) + 0.1)
	get_node("Defeng").text = def
	get_node("/root/Defeng/Defeng").text = def
	


func _on_Timer_timeout():
	get_tree().change_scene("res://Tscn/Fly.tscn")
	pass
