extends KinematicBody2D

export (int) var speed = 500
var velocity = Vector2()
const BULLET = preload("res://bullet.tscn")

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
		if sign($Muzzle.position.x) == 1:
			$Muzzle.position.x *= -1
	if Input.is_action_pressed("shoot"):
		$Timer.start()
		var bullet = BULLET.instance()
		if sign($Muzzle.position.y) == 1:
			bullet.set_bullet_direction(1)
		else:
			bullet.set_bullet_direction(-1)
		get_parent().add_child(bullet)
		bullet.position = $Muzzle.global_position
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)


func _on_Timer_timeout():
	pass # Replace with function body.

func _on_Area2D_area_entered(area):
	get_tree().change_scene("res://gameover.tscn")
