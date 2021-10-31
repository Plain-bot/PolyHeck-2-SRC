extends ColorRect

func _ready():
	$Timer.start()

func _on_Timer_timeout():
	$Timer.stop()
	$Label.text = "You might not believe me but I'm not from this place."
	$dialog2.start()

func _on_dialog2_timeout():
	$dialog2.stop()
	$Label.text = "I played a game I found in my backyard... Pyro 2..."
	$dialog3.start()

func _on_dialog3_timeout():
	$dialog3.stop()
	$Label.text = "I worked at a thrift store and I usually got some-"
	$dialog4.start()

func _on_dialog4_timeout():
	$dialog4.stop()
	$Label.text = "things for free there. Thats how I got a DOS."
	$dialog5.start()

func _on_dialog5_timeout():
	$dialog5.stop()
	$Label.text = "When I played that copy of Pyro 2."
	$dialog6.start()

func _on_dialog6_timeout():
	$dialog6.stop()
	$Label.text = "Strange stuff happened... And I ended up here."
	$dialog7.start()
	
func _on_dialog7_timeout():
	$dialog7.stop()
	$Label.text = "I thought I was just in space but no..."
	$dialog8.start()
	
func _on_dialog8_timeout():
	$dialog8.stop()
	$Label.text = "I was in a different universe. You're universe."
	$dialog9.start()

func _on_dialog9_timeout():
	$dialog9.stop()
	$Label.text = "I will help you escape... if you help me."
	$dialog10.start()

func _on_dialog10_timeout():
	$dialog10.stop()
	$Label.text = "Well a deal is a deal..."
	$dialog11.start()

func _on_dialog11_timeout():
	get_tree().change_scene("res://goodendingroute.tscn")
