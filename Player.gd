extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		velocity.x += 1
		$Sprite.play("Walk")
		$B.play("walk")
		$C.play("walk")
		$O.play("walk")
		$walk.play()
	elif Input.is_action_pressed("left"):
		velocity.x -= 1
		$Sprite.play("Walk")
		$B.play("walk")
		$C.play("walk")
		$O.play("walk")
		$walk.play()
	elif Input.is_action_pressed("down"):
		velocity.y += 1
		$Sprite.play("Walk")
		$B.play("walk")
		$C.play("walk")
		$O.play("walk")
		$walk.play()
	elif Input.is_action_pressed("up"):
		velocity.y -= 1
		$Sprite.play("Walk")
		$B.play("walk")
		$C.play("walk")
		$O.play("walk")
		$walk.play()
	else:
		$Sprite.play("default")
		$B.play("default")
		$C.play("default")
		$O.play("default")
	if Input.is_action_just_pressed("Cheat"):
		$CollisionShape2D.disabled = true
		$night.play()
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)


func _on_Timer_timeout():
	speed = 200
	$Sprite.hide()
	$C.hide()
	$O.hide()
	$B.show()


func _on_CT_timeout():
	speed = 200
	$Sprite.hide()
	$B.hide()
	$O.hide()
	$C.show()


func _on_speed_timeout():
	speed = 450
	$Sprite.hide()
	$B.hide()
	$C.hide()
	$O.show()
