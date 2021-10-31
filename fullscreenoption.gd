extends Button

func _on_fullscreenoption_pressed():
	$click.play()
	OS.window_fullscreen = !OS.window_fullscreen


func _on_fullscreenoption_mouse_entered():
	$hover2.play()
