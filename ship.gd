extends Area2D

var gas = false
var inside = false

func _on_ship_body_entered(body):
	$Label.show()
	inside = true
	if gas == true:
		$Label.text = "E to escape"

func _on_ship_body_exited(body):
	$Label.hide()
	inside = false

func _on_Timer_timeout():
	gas = true

func _input(event):
	if event.is_action_pressed("Interact") and gas == true and inside == true:
		get_tree().change_scene("res://badending.tscn")
