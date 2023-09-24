extends CanvasLayer


func _ready():
	$PanelContainer/MarginContainer/Raws/CenterContainer/VBoxContainer/RestartButton.grab_focus()

func _on_restart_button_pressed():
	get_tree().reload_current_scene()
	get_tree().paused = false


func _on_quit_button_pressed():
	get_tree().quit()


func _on_levels_button_pressed():
	get_tree().change_scene_to_file("res://nodes/level_selector.tscn")
	get_tree().paused = false


func _on_mm_button_pressed():
	get_tree().change_scene_to_file("res://nodes/main_menu.tscn")
	get_tree().paused = false
