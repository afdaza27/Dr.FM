extends Sprite2D

var backgroundImages : Array

# Called when the node enters the scene tree for the first time.
func _ready():
	backgroundImages = ["1", "2", "3"]
	backgroundImages.shuffle()
	var image = backgroundImages[0] 
	var new_texture = load("res://Assets/WheelRoom/"+image+".png")
	self.texture = new_texture


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
