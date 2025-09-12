extends CharacterBody2D

@onready var _animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
var frame = 0
const totalFr = 5

func _on_grey_cat_pressed() -> void:
	_animated_sprite.stop()
	
	if frame > 0:
		_animated_sprite.play("meowing")
		frame -= 1
	else:
		frame = totalFr
	
	_animated_sprite.frame = frame
