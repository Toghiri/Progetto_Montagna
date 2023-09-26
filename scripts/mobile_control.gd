extends CanvasLayer


func _ready():
	pass # Replace with function body.


func _process(_delta):
	pass


func _on_jump_button_down():
	Input.action_press("jump")


func _on_jump_button_up():
	Input.action_release("jump")


func _on_left_button_down():
	Input.action_press("left")


func _on_left_button_up():
	Input.action_release("left")


func _on_right_button_down():
	Input.action_press("right")


func _on_right_button_up():
	Input.action_release("right")
