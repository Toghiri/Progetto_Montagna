extends Node2D
const GameOverScreen = preload("res://nodes/game_over_screen.tscn")
var animation
var movementPosition
var killedPlayer = 0
var dead = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	animation = $AreaOrso/AnimazioneOrso
	movementPosition = $AnimationPlayer
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	animation.play("orso2")
	if movementPosition.current_animation_position < 0.1 :
		animation.flip_h = false
	if movementPosition.current_animation_position > 2.5:
		animation.flip_h = true
		
func _on_area_orso_body_entered(body):
	if body.is_in_group("player"):
		if dead == 0:
			print("Player è morto")
			var game_over = GameOverScreen.instantiate()
			add_child(game_over)
			get_tree().paused = true
		if dead == 1:
			print("Orso è morto")
			queue_free()
		else: print("mhh?")


func _on_area_2_dkill_body_entered(body):
	dead = 1
