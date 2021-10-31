extends Area2D

var inside = false

func _on_gas_body_entered(body):
	$Label.show()
	inside = true

func _on_gas_body_exited(body):
	inside = false
	$Label.hide()

func _input(event):
	if event.is_action_pressed("Interact") and inside == true:
		$Label.text = "Run..."
		$KinematicBody2D.queue_free()
		$Monitor.show()
		$Timer.start()
