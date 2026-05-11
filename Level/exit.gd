extends Area2D

func _on_body_entered(body):
	if body.name == "Player":
		
		if GameManager.lanterns_collected >= 3:
			get_tree().change_scene_to_file("res://Non-Game-Scenes/Success.tscn")
		else:
			get_tree().change_scene_to_file("res://res://Non-Game-Scenes/Fail.tscn")
