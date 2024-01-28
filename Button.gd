extends Control

func _on__button_pressed(scene):
	get_tree().change_scene_to_file(scene) # Replace with function body.


func on_button_enter(doorName):
	get_node("../"+doorName).visible = false
	if doorName=="Elevator":
		get_node("../ElevatorSound").play()
	else:
		get_node("../DoorSound").play()

func on_button_exit(doorName):
	get_node("../"+doorName).visible = true
