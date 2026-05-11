extends Node2D



func _on_exit_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		
		if GameManager.lanterns_collected >= 3:
			get_tree().change_scene_to_file("res://Non-Game-Scenes/Success.tscn")
		else:
			get_tree().change_scene_to_file("res://Non-Game-Scenes/Fail.tscn")
