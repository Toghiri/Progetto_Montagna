extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().paused = false
	$VBoxContainer2/CenterContainer/HBoxContainer/Bottoni/StartButton.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://nodes/lv_1.tscn")


func _on_quit_button_pressed():
	get_tree().quit()


func _on_level_button_pressed():
	get_tree().change_scene_to_file("res://nodes/level_selector.tscn")


func _on_control_button_pressed():
	get_tree().change_scene_to_file("res://nodes/control_info.tscn")
