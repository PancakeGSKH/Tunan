extends Control


func _on_Haiyun_button_up():
	get_tree().change_scene("res://Tscn/Fly.tscn")

func _on_Erfan_button_up():
	get_tree().quit()
