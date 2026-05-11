extends Area2D

func _on_body_entered(body):
	if body.name == "Player":
		GameManager.lanterns_collected += 1
		
		print("Lanterns: ", GameManager.lanterns_collected)
		
		queue_free()
