extends CharacterBody2D

@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D

var cpu_active: bool = false
var speed: int = 250
var direction = Vector2(1,1)

func _physics_process(delta: float) -> void:
	var colision = move_and_collide(direction * delta * speed)
	if colision:
		speed = 250
		direction = direction.bounce(colision.get_normal())


func _on_area_2d_area_entered(area: Area2D) -> void:
	cpu_active = !cpu_active

func ResetPosition():
	speed = 100
	position = Vector2(0,randf_range(-75,75))
	
