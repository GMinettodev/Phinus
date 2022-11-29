extends Area2D

export(String, FILE, "*.tscn") var target_level_path = ""

func _on_Door_body_entered(body):
	if not body is Player: return
	if target_level_path.empty(): return
	Transition.play_exit_transition()
	get_tree().paused = true
	yield(Transition, "transition_completed")
	Transition.play_enter_transition()
	get_tree().paused = false
	get_tree().change_scene(target_level_path)
