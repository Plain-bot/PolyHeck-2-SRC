extends Button

func _on_PlayButton_pressed():
	$Timer.start()
	$Clicksound.play()

func _on_PlayButton_mouse_entered():
	$HoverSound.play()

func _on_Timer_timeout():
	get_tree().change_scene("res://YouArrescreen.tscn")
