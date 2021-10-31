extends KinematicBody2D

var velocity = Vector2()

func _physics_process(delta):
	velocity.y += 10
	velocity = move_and_slide(velocity,Vector2.UP)

func _on_Timer_timeout():
	queue_free()

func _on_Area2D_body_entered(body):
	if body.name == "ship":
		get_tree().change_scene("res://gameover.tscn")
