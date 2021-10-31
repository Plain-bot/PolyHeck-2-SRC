extends Area2D

var inside = false

func _input(event):
	if event.is_action_pressed("Interact") and inside == true:
		$speed.start()

func _on_O_Container3_body_entered(body):
	$Label.show()
	inside = true

func _on_O_Container3_body_exited(body):
	$Label.hide()
	inside = false
