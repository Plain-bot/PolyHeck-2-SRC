extends Button

func _on_backtomen_pressed():
	get_tree().change_scene("res://MainMenu.tscn")


func _on_backtomen_mouse_entered():
	$hover.play()
