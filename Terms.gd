extends Button

func _on_Terms_pressed():
	$Clicksound2.play()
	get_tree().change_scene("res://Terms.tscn") #-- changes to terms and service lol


func _on_Terms_mouse_entered():
	$HoverSound2.play()
