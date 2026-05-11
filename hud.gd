extends CanvasLayer

@onready var lantern_label = $LanternLabel

func _process(delta):
	lantern_label.text = "Cursed Lanterns: " + str(GameManager.lanterns_collected) + " / 3"
