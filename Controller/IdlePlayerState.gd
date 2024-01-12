class_name IdlePlayerState

extends State

@onready var ANIMATED_SPRITE := $"../../AnimatedSprite2D"

func enter() -> void:
	ANIMATED_SPRITE.play("idle")
	
func update(delta):
	if Global.player.velocity.x != 0.0:
		transition.emit("MovingPlayerState")
