extends Node2D

@onready var label = $Label

var dialogue_shown = false

func _ready():
	label.visible = false

func _on_area_2d_body_entered(body):
	if body.name == "Player" and !dialogue_shown:
		
		dialogue_shown = true
		
		label.visible = true
		
		label.text = "The forest trapped your soul...\nFind the 3 cursed lanterns before dawn..."
