extends Area2D

var inside = false

func _on_paper_body_entered(body):
	inside = true

func _on_paper_body_exited(body):
	inside = false
	
func _input(event):
	if event.is_action_released("Interact") and inside == true:
		$hint.start()
		$Timer.start()

func _on_Timer_timeout():
	queue_free()
