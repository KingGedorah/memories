extends Control

@export var game_manager : GameManager

@onready var resume_button = $Panel/VBoxContainer/ResumeButton as Button
@onready var restart_button = $Panel/VBoxContainer/RestartButton as Button
@onready var exit_button = $Panel/VBoxContainer/ExitButton as Button
@onready var main_menu = preload("res://scenes/menu.tscn") as PackedScene

func _ready():
	resume_button.button_down.connect(_on_resume_button_pressed)
	restart_button.button_down.connect(_on_restart_pressed)
	exit_button.button_down.connect(_on_exit_button_pressed)
	hide()
	game_manager.connect("toggle_game_paused", _on_game_manager_toggle_game_paused)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_game_manager_toggle_game_paused(is_paused : bool):
	if(is_paused):
		show()
	else:
		hide()

func _on_resume_button_pressed():
	game_manager.game_paused = false

func _on_exit_button_pressed():
	get_tree().change_scene_to_packed(main_menu)

func _on_restart_pressed() -> void:
	game_manager.game_paused = false
	get_tree().reload_current_scene()
