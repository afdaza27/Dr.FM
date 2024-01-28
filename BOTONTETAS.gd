extends Button



func _on_mouse_entered():
	get_node("../PuertaAbierta").visible = false
	get_node("../AbriendoPuerta").play()


func _on_mouse_exited():
	get_node("../PuertaAbierta").visible = true


func _on_pressed():
	get_tree().change_scene_to_file("res://ESCENA2.tscn")
