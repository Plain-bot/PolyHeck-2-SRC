extends Area2D

func _on_KinematicBody2D_body_entered(body):
	get_tree().change_scene("res://dialog2.tscn")
