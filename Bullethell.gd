extends Node2D

var enemy1 = preload("res://asteroid.tscn")

func _ready():
	pass

func _input(event):
	if event.is_action_pressed("bomb"):
		$TextureRect.show()
		$wait.start()
	if event.is_action_pressed("shift"):
		$Shift.show()
		$wait2.start()

func _on_wait_timeout():
	$TextureRect.hide()
	$wait.stop()

func _on_SpawnTimer_timeout():
	var Enemy = enemy1.instance()
	add_child(Enemy)
	Enemy.position = $Spawn.position
	
	var nodes = get_tree().get_nodes_in_group("Spawn")
	var node = nodes[randi() % nodes.size()]
	var Position = node.position
	$Spawn.position = Position

func _on_wait2_timeout():
	$Shift.hide()
	$wait2.stop()


func _on_wait3_timeout():
	$wait3.start()
	$static.play()
	$screen.show()
	$wait4.start()

func _on_wait4_timeout():
	$screen.hide()
	$static.stop()
