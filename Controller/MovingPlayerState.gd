class_name MovingPlayerState

extends State

@onready var ANIMATED_SPRITE := $"../../AnimatedSprite2D"

func enter() -> void:
	ANIMATED_SPRITE.play("move")
	
func update(delta):
	if Global.player.velocity.x > 0:
		ANIMATED_SPRITE.set_flip_h(true)
	else:
		ANIMATED_SPRITE.set_flip_h(false)
			
	if Global.player.velocity.x == 0.0:
		transition.emit("IdlePlayerState")

