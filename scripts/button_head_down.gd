extends Button


func _on_button_down() -> void:
	Globals.head_number -= 1
	var orig_transform = get_node("%Node3D").scale
	get_node("%Node3D").scale.x*=(Globals.head_number/(Globals.head_number+1))
