extends Label

var CD = 100

func _on_cd_timeout():
	CD -= 1
	if CD <= 0:
		get_tree().change_scene("res://gameover.tscn")
	
func _physics_process(delta):
	$time.set_text(str(CD))

func _on_Timer_timeout():
	CD += 1
