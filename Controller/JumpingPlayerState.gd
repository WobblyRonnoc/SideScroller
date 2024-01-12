class_name JumpingPlayerState

extends State

@onready var ANIMATED_SPRITE := $"../../AnimatedSprite2D"

func enter() -> void:
	ANIMATED_SPRITE.play("jump")
	
func update(delta):
	if Global.player.velocity.y == 0 && Global.player.velocity.x == 0:
		transition.emit("IdlePlayerState")

	elif Global.player.velocity.y > 0:
		transition.emit("FallingPlayerState")
		
	if Global.player.velocity.x > 0:
		ANIMATED_SPRITE.set_flip_h(true)
	else:
		ANIMATED_SPRITE.set_flip_h(false)
	

