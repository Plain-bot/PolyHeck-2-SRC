extends KinematicBody2D

var dir = Vector2()
var player
export var offset = 20
const SPEED = 150

func _physics_process(delta):
	dir = _get_dir(player)
	move_and_slide(dir * SPEED)
	
func _ready():
	player = get_parent().get_child(27)
	dir = _get_dir(player)

func _get_dir(target):
	return (target.position - position).normalized()

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://gameover.tscn")
