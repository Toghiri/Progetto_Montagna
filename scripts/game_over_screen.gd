extends CanvasLayer


func _ready():
	$PanelContainer/MarginContainer/Raws/CenterContainer/VBoxContainer/RestartButton.grab_focus()

func _on_restart_button_pressed():
	get_tree().change_scene_to_file("res://nodes/lv_1.tscn")
	get_tree().paused = false


func _on_quit_button_pressed():
	get_tree().quit()
