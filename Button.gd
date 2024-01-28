extends Button



func _on_mouse_entered():
	 get_node("../"+"../PuertaAbierta").visible = false


func _on_mouse_exited():
	get_node("../"+"../PuertaAbierta").visible = true
