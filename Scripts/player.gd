extends CharacterBody2D

@export var SPEED = 200.0
var initial_x

func _ready() -> void:
	initial_x = position.x

func _process(delta: float) -> void:
	position.x = initial_x

func _physics_process(delta: float) -> void:
	position.x = initial_x
	var direction := Input.get_axis("move_up", "move_down")
	if direction:
		velocity.y = direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()
