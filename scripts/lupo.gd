extends Node2D
const GameOverScreen = preload("res://nodes/game_over_screen.tscn")
var animation
var movementPosition
var killedPlayer = 0
var dead = 0

func _ready():
	animation = $AreaLupo/AnimazioneLupo
	movementPosition = $AnimationPlayer

func _process(_delta):
	animation.play("walk")
	if movementPosition.current_animation_position < 0.1 :
		animation.flip_h = false
	if movementPosition.current_animation_position > 2.5:
		animation.flip_h = true
		
func _on_area_2_dkill_body_entered(_body):
	dead = 1

func _on_area_lupo_body_entered(body):
	if body.is_in_group("player"):
		if dead == 0:
			var game_over = GameOverScreen.instantiate()
			add_child(game_over)
			get_tree().paused = true
		if dead == 1:
			queue_free()
		else: pass
