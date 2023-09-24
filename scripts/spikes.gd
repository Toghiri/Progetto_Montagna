extends Node2D
const GameOverScreen = preload("res://nodes/game_over_screen.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_area_2d_body_entered(body):
	if body.is_in_group("player"):
		var game_over = GameOverScreen.instantiate()
		add_child(game_over)
		print("Sei morto fra")
		get_tree().paused = true
