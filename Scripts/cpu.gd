extends CharacterBody2D

@onready var ball: CharacterBody2D = %ball
var speed = 250
var initial_x
func _ready() -> void:
	initial_x = position.x

func _process(delta: float) -> void:
	position.x = initial_x

func _physics_process(delta: float) -> void:
	
	if ball.cpu_active:
		speed = 100
	else:
		speed = 220
	
	var ball_position = ball.position
	var final_position = ball.position.y - position.y
	var direction
	if final_position > 5:
		direction = 1
	elif final_position < 5:
		direction = -1
	else:
		direction = 0
	velocity.y = direction * speed
	
	move_and_slide()
