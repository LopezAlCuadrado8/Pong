extends Area2D
@onready var game_manager: Node2D = %GameManager
@onready var ball: CharacterBody2D = %ball


func _on_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	if name == "death_border_right":
		game_manager.RightScore()
	else:
		game_manager.LeftScore()
	ball.ResetPosition()
