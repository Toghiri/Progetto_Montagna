extends CanvasLayer

# Called when the node enters the scene tree for the first time.
func _ready():
	$PanelContainer/MarginContainer/Raws/CenterContainer/VBoxContainer/RestartButton.grab_focus()

func _process(delta):
	if Input.is_action_just_pressed("esc"):
		get_tree().paused = false
		get_parent().remove_child(self)
		
func _on_restart_button_pressed():
	get_tree().change_scene_to_file("res://nodes/lv_1.tscn")


func _on_quit_button_pressed():
	get_tree().quit()


func _on_resume_button_pressed():
	get_tree().paused = false
	get_parent().remove_child(self)
