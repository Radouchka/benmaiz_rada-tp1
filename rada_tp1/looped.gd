extends Button


func _on_pressed() -> void:
	$AudioStreamPlayer2D.play()
	pass # Replace with function body.


func _on_toggled(toggled_on: bool) -> void:
	if toggled_on:
		$AudioStreamPlayer2D.play()
	else:
		$AudioStreamPlayer2D.stop()
	pass # Replace with function body.
