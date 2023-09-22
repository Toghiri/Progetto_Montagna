extends Control

func _ready():
	get_tree().paused = false
	$PanelContainer/MarginContainer/Raws/CenterContainer/HBoxContainer/Lvl1.grab_focus()

func _on_lvl_1_pressed():
	get_tree().change_scene_to_file("res://nodes/lv_1.tscn")

func _on_lvl_2_pressed():
	get_tree().change_scene_to_file("res://nodes/lv_2.tscn")

func _on_back_pressed():
	get_tree().change_scene_to_file("res://nodes/main_menu.tscn")

func _on_panorama_pressed():
	get_tree().change_scene_to_file("res://nodes/panorama.tscn")
