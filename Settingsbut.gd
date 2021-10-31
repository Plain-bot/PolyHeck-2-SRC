extends Button

func _on_Settings_pressed():
	$Clicksound2.play()
	get_tree().change_scene("res://Settings.tscn")


func _on_Settings_mouse_entered():
	$HoverSound2.play()
