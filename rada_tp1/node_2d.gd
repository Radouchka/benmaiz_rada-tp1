extends Node2D
@onready var sprite: AnimatedSprite2D = $Control/orange_cat/CharacterBody2D/AnimatedSprite2Dd


func _on_orange_cat_pressed() -> void:
	sprite.stop()
	sprite.play("orangee")
	
func _input(event: InputEvent) -> void:
	if event.is_action_pressed("grey_kitty"):
		if $Control/grey_cat/CharacterBody2D/AnimatedSprite2D.is_playing():
			$Control/grey_cat/CharacterBody2D/AnimatedSprite2D.stop()
		else:
			$Control/grey_cat/CharacterBody2D/AnimatedSprite2D.play("meowing")
			
	if event.is_action_pressed("orange_kitty"):
		if $Control/orange_cat/CharacterBody2D/AnimatedSprite2Dd.is_playing():
			$Control/orange_cat/CharacterBody2D/AnimatedSprite2Dd.stop()
		else:
			$Control/orange_cat/CharacterBody2D/AnimatedSprite2Dd.play("orangee")
