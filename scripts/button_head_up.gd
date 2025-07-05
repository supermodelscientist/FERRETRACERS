extends Button



func _on_pressed() -> void:
	var orig_transform = get_node("%Node3D").scale
	var dive = get_node("%Node3D").get_node("%Mustelid V1").get_node("Empty/DEF_Halo2/Skeleton3D/Head1")
	
	Globals.head_number += 1.0
	var sc = Globals.head_number
	if sc<1:
		sc = 1.0/(2-sc)
	if sc==1:
		dive.scale.x*=2.0
	else:
		dive.scale.x*=sc/(sc-1.0)

	
