extends Label

var CD = 200

func _on_cd_timeout():
	CD -= 1
	if CD == 0:
		get_tree().change_scene("res://gameover.tscn")
	
func _physics_process(delta):
	$Label.set_text(str(CD))
