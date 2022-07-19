extends Node2D

signal enter

func _on_Fire_enter():
	if $Label.text == "1":
		emit_signal("enter")
func _on_Mount_enter():
	if $Label.text == "2":
		emit_signal("enter")
func _on_Leidian_enter():
	if $Label.text == "3":
		emit_signal("enter")
func _on_Tree_enter():
	if $Label.text == "4":
		emit_signal("enter")
func _on_Stone_enter():
	if $Label.text == "5":
		emit_signal("enter")
