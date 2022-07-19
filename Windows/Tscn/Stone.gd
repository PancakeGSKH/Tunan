extends Node2D

signal enter

func _on_Wang_body_entered(body):
	emit_signal("enter")
	pass


