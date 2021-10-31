extends Area2D

var PickupGas = false

func _on_Gas_body_entered(body):
	$Label.show()
	PickupGas = true

func _on_Gas_body_exited(body):
	$Label.hide()
	PickupGas = false

func _input(event):
	if event.is_action_pressed("Interact") and PickupGas == true:
		$Timer.start()
		$wait.start()

func _on_wait_timeout():
	queue_free()
