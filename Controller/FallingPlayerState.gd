class_name FallingPlayerState

extends State

@onready var ANIMATED_SPRITE := $"../../AnimatedSprite2D"

func enter() -> void:
	ANIMATED_SPRITE.play("fall")
	
func update(delta):
	if Global.player.velocity.y == 0 && Global.player.velocity.x == 0 || Global.player.is_on_floor():
		transition.emit("IdlePlayerState")

	if Global.player.velocity.x > 0:
		ANIMATED_SPRITE.set_flip_h(true)
	else:
		ANIMATED_SPRITE.set_flip_h(false)
	
	
