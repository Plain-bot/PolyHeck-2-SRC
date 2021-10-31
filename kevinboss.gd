extends KinematicBody2D

var velocity = Vector2()
export var direction = -5

func _ready():
	if direction == 1:
		$Sprite.flip_h = false

func _physics_process(delta):
	if is_on_wall():
		direction = direction * -1
		$Sprite.flip_h = not $Sprite.flip_h
	
	velocity.x = 50 * direction
	velocity = move_and_slide(velocity,Vector2.UP)

func _on_Timer_timeout():
	get_tree().change_scene("res://goodending.tscn")
