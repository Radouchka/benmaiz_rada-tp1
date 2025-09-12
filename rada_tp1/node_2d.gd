extends Node2D
@onready var sprite: AnimatedSprite2D = $Control/orange_cat/CharacterBody2D/AnimatedSprite2Dd


func _on_orange_cat_pressed() -> void:
	sprite.stop()
	sprite.play("orangee")
	
