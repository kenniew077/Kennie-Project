extends Panel

@onready var game_over = %"game over"
var time: float = 0.0
var minutes: int = 0
var seconds: int = 0
var msec: int = 0

func _process(delta) -> void:
	time += delta
	msec = fmod(time, 1) * 100
	seconds = fmod(time, 60)
	minutes = fmod(time, 3600) / 60
	$Label.text = "%02d:" % minutes
	$Label2.text = "%02d." % seconds
	$Label3.text = "%03d" % msec
	
	# Check if seconds reach 20 and stop the process
	if seconds >= 20:
		stop()
		get_tree(). change_scene_to_file("res://game_over.tscn")

		
func stop()-> void:
	set_process(false)
	
func get_time_formatted() -> String:
		return "%02d:%02d.%03d" % [minutes, seconds, msec]


