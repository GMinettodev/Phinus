tool
extends Path2D

enum ANIMATION_TYPE {
	LOOP,
	BOUNCE
}

export(ANIMATION_TYPE) var animation_type setget set_animation_type

onready var animationPlayer: = $AnimationPlayer

func set_animation_type(value):
	animation_type = value
	var ap = find_node("AnimationPlayer")
	if ap: play_updated_animation(ap)
	
func _ready():
	play_updated_animation(animationPlayer)

func play_updated_animation(ap):
	match animation_type:
		ANIMATION_TYPE.LOOP: ap.play("MoveAlongPathLoop")
		ANIMATION_TYPE.BOUNCE: ap.play("MoveAlongPathBounce")