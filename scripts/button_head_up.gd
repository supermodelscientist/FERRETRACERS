extends Button



func _on_pressed() -> void:
	var orig_transform = get_node("%Node3D").scale
	Globals.head_number += 1
	
	var sc = Globals.head_number
	if sc<1:
		sc = 1.0/(2-sc)
	if sc==1:
		get_node("%Node3D").scale.x*=2
	else:
		get_node("%Node3D").scale.x*=sc/(sc-1)

	
