extends Control

func _ready():
	$Timer.start()

func _on_Timer_timeout():
	$dialogbox.show()
