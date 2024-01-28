extends Node

var leftDoor: Sprite2D
var rightDoor: Sprite2D
var openSpeed: float
var opening: bool
var nextScene: String

# Called when the node enters the scene tree for the first time.
func _ready():
	leftDoor = get_node("LeftDoor")
	rightDoor = get_node("RightDoor")
	openSpeed = 80
	opening= false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if opening && leftDoor.position.x > 370:
		leftDoor.position.x -= openSpeed * delta
		rightDoor.position.x += openSpeed * delta
	if leftDoor.position.x <= 370:
		opening = false
		await get_tree().create_timer(1.5).timeout
		load_next_scene()
		

func open_doors(sceneName):
	opening = true
	nextScene = sceneName
	
	
func load_next_scene():
	if nextScene == "":
		get_tree().change_scene_to_file("res://ESCENA10.tscn")
	else:
		get_tree().change_scene_to_file("res://"+nextScene+".tscn")
	


func _on_wheelchair_button_pressed():
	pass # Replace with function body.
