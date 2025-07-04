extends Button



func _on_pressed() -> void:
	var orig_transform = get_node("%Node3D").scale
	Globals.head_number += 1
	get_node("%Node3D").scale.x*=Globals.head_number/(Globals.head_number-1)
	print(Globals.head_number/(Globals.head_number-1))

	
