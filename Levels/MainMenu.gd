extends Node2D

export var mainGameScene: PackedScene
export var creditsScene: PackedScene

func _on_ButtonNewGame_button_up():
	get_tree().change_scene(mainGameScene.resource_path)

