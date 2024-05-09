extends CanvasLayer

func set_points(value):
	$panel/score.text = "points: " +str(value)
func _ready():
	$"Score label".text = str(Score.score)
