extends Control

func _ready():
	$Back.grab_focus()

func _on_back_pressed():
	get_tree().change_scene_to_file("res://nodes/main_menu.tscn")
