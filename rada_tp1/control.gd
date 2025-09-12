extends Control
 
@onready var anim = $"../AnimatedSprite2D";
 
var frame = 0;
const totalfr = 5;
 
func _on_kitty_pressed() -> void:
	$Button_toggle/AudioStreamPlayer2D.stop()
	anim.animation = "kitty";
	if frame > 0:
		$Button_onclick/AudioStreamPlayer2D.play()
		frame -= 1;
	anim.frame = frame;
 
 
func _on_cat_pressed() -> void:
	anim.animation = "cat";
	if frame < totalfr:
		$Button_toggle/AudioStreamPlayer2D.play()
		frame += 1;
	else: 
			$Button_toggle/AudioStreamPlayer2D.stop()
	anim.frame = frame;
