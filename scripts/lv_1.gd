extends Node2D

const GameOverScreen = preload("res://nodes/game_over_screen.tscn")
const PauseScreen = preload("res://nodes/pause_menu.tscn")

func _ready():
	get_tree().paused = false

func _process(_delta):
	if Input.is_action_just_pressed("esc"):
		var pause = PauseScreen.instantiate()
		add_child(pause)
		get_tree().paused = true
