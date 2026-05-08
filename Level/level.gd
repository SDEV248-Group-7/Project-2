extends Node2D


func _on_player_fail() -> void:
	get_tree().change_scene_to_file("res://Non-Game-Scenes/Fail.tscn");
