extends CharacterBody2D

const SPEED = 150

@onready var sprite = get_child(1);
@onready var target = "Up";

func _physics_process(delta):
	velocity.x = 0;
	
	var direction;
	if target == "Up":
		direction = -1;
	else:
		direction = 1;
	
	velocity.y = direction * SPEED;
	
	move_and_slide();
