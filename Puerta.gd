extends TextureButton
var audio_player : AudioStreamPlayer2D

func _ready():
	audio_player = get_node("../PuertaAudio")

func _on_audio_finished():
	get_tree().change_scene_to_file("res://ESCENA4.tscn")

func on_pressed():
	# Reproduce el audio
	audio_player.play()
