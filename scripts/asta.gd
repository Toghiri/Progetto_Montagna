extends Node2D
const WinScreen = preload("res://nodes/win_screen.tscn")

func _process(_delta):
	$Area2D/AnimatedSprite2D.play("default")

func _on_area_2d_body_entered(body):
	if body.is_in_group("player"):
		var win = WinScreen.instantiate()
		add_child(win)
		get_tree().paused = true
