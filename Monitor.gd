extends Area2D

var inside = false

func _on_Monitor_body_entered(body):
	if body.name == "Player":
		$Label.show()
		inside = true

func _on_Monitor_body_exited(body):
	if body.name == "Player":
		$Label.hide()
		inside = false

func _input(event):
	if event.is_action_pressed("Interact") and inside == true:
		queue_free()
