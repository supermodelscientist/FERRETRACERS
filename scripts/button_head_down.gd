extends Button


func _on_button_down() -> void:
	Globals.head_number -= 1.0
	var dive = get_node("%Node3D").get_node("%Mustelid V1").get_node("Empty/DEF_Halo2/Skeleton3D/Head1")
	var sc = Globals.head_number
	if Globals.head_number<1:
		sc = 1.0/(2-sc)
	
	var orig_transform = get_node("%Node3D").scale
	get_node("%Node3D").scale.x*=(sc/(sc+1.0))
