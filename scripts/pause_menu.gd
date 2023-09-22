extends CanvasLayer

func _ready():
	$PanelContainer/MarginContainer/Raws/CenterContainer/VBoxContainer/ResumeButton.grab_focus()

func _process(delta):
	if Input.is_action_just_pressed("esc"):
		get_tree().paused = false
		get_parent().remove_child(self)

func _on_restart_button_pressed():
	get_tree().reload_current_scene()

func _on_quit_button_pressed():
	get_tree().quit()

func _on_resume_button_pressed():
	get_tree().paused = false
	get_parent().remove_child(self)

func _on_levels_button_pressed():
	get_tree().change_scene_to_file("res://nodes/level_selector.tscn")

func _on_mm_button_pressed():
	get_tree().change_scene_to_file("res://nodes/main_menu.tscn")
	get_tree().paused = false
