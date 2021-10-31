extends Area2D

const SPEED = 500
var velocity = Vector2()
var direction = 1

func _physics_process(delta):
	velocity.y = SPEED * delta * direction
	translate(velocity)

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()

func set_bullet_direction(dir):
	direction = dir
	if dir == -1:
		$Sprite.flip_h = true
