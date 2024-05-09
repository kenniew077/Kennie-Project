extends AudioStreamPlayer2D

const level_music = preload("res://b62f-cca4-4425-8e99-f88d279bb8b0.mp3")

func _play_music(music: AudioStream, volume = 0.0):
	if stream == music:
		return
		
	stream = music
	volume_db = volume
	play()
	
func play_music_level():
	_play_music(score_music)
