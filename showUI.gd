extends CanvasLayer

##I suck at coding so this script only serves for the Pickup gas thing

func _on_Timer_timeout():
	$gasicon.show()
	$gasicon/Timer.start()


func _on_LineEdit_text_entered(new_text):
	if $LineEdit.text == "tonto el que no entienda":
		get_tree().change_scene("res://redialogscreen.tscn")

func _on_openpass_timeout():
	$LineEdit.show()


func _on_hint_timeout():
	$page.show()


func _on_leavepage_pressed():
	$page.hide()
