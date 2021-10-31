extends Area2D

var health = 2 setget set_health

func set_health(value):
	health = value
	if health <= 1:
		$Timer.start()

func _on_Area2D_area_entered(area):
	if area.name == "bullet":
		health -= 1
