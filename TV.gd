extends Area2D

var inside = false
var CabbageT = false

func _on_TV_body_entered(body):
	$Label.show()
	inside = true

func _on_TV_body_exited(body):
	$Label.hide()
	inside = false

func _input(event):
	if event.is_action_pressed("Interact") and inside == true and CabbageT == true:
		$wait.start()
		$Timer.start()

func _on_CA_timeout():
	CabbageT = true

func _on_wait_timeout():
	queue_free()
