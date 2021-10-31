extends Button

func _on_p2_pressed():
	$p3.show()
	$KinematicBody2D.queue_free()
