extends Control

func _ready():
	$AnimationPlayer.play("gameover")


func _on_menu_pressed():
	get_tree().change_scene("res://MainMenu.tscn")
