extends Node2D

@onready var left_score_label: Label = $"../Left_score"
@onready var right_score_label: Label = $"../Right_score"

var left_score = 0
var right_score = 0

func RightScore():
	right_score += 1
	right_score_label.text = str(right_score)


func LeftScore():
	left_score += 1
	left_score_label.text = str(left_score)
