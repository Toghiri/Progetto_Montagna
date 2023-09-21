extends Node2D
const WinScreen = preload("res://nodes/win_screen.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Area2D/AnimatedSprite2D.play("default")


func _on_area_2d_body_entered(body):
	if body.is_in_group("player"):
		var win = WinScreen.instantiate()
		add_child(win)
		get_tree().paused = true
