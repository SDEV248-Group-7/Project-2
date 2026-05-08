extends CharacterBody2D

const SPEED = 150

@onready var sprite = get_child(1);
@onready var target = "Left";

func _physics_process(delta):
	velocity.x = 0;
	
	var direction;
	if target == "Left":
		direction = -1;
	else:
		direction = 1;
	
	velocity.x = direction * SPEED;
	
	move_and_slide();
