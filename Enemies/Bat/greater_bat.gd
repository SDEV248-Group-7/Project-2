extends Node2D


func _on_marker_up_body_entered(body: Node2D) -> void:
	if body.is_in_group("Self"):
		body.target = "Down";


func _on_marker_down_body_entered(body: Node2D) -> void:
	if body.is_in_group("Self"):
		body.target = "Up";
