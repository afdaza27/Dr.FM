extends TextureButton

var audio_player : AudioStreamPlayer2D

# Llamado cuando el nodo y los niños están listos
func _ready():
	audio_player = get_node("../MickeyAudio")
	# Conecta la señal 'finished' a la función '_on_audio_finished'
	#audio_player.connect("finished", self, "_on_audio_finished")

# Esta función se llamará cuando el audio termine de reproducirse
func _on_audio_finished():
	get_tree().change_scene_to_file("res://MENU.tscn")

func on_pressed():
	# Reproduce el audio
	audio_player.play()
