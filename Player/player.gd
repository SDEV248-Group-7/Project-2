extends CharacterBody2D

const SPEED = 150
const JUMP_VELOCITY = -300
const GRAVITY = 900

@onready var sprite = $AnimatedSprite2D

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	var direction = Input.get_axis("move_left", "move_right")

	if direction != 0:
		velocity.x = direction * SPEED
		sprite.flip_h = direction < 0
		sprite.play("walk")
	else:
		velocity.x = 0
		sprite.stop()
		sprite.frame = 0

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	move_and_slide()
