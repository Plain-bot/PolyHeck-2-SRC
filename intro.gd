extends Control

func _on_Timer_timeout():
	$Timer.stop()
	$text.text = "There were a group of robots called the Drimopo."
	$Timer2.start()

func _on_Timer2_timeout():
	$Timer2.stop()
	$text.text = "They were in charge of Satellite 1957."
	$Timer3.start()

func _on_Timer3_timeout():
	$Timer3.stop()
	$text.text = "But on October 4th 2020... the satellite..."
	$Timer4.start()

func _on_Timer4_timeout():
	$Timer4.stop()
	$text.text = "Lost control after working on a cure for Covid-19."
	$Timer5.start()
	
func _on_Timer5_timeout():
	$Timer5.stop()
	$text.text = "An intruder infiltrated the satellite... PolyHeck"
	$Timer6.start()

func _on_Timer6_timeout():
	$Timer6.stop()
	$text.text = "PolyHeck killed everyone except one..."
	$Timer7.start()

func _on_Timer7_timeout():
	get_tree().change_scene("res://MainMenu.tscn")
