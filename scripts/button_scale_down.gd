extends Button

var dive = get_node("%Node3D").get_node("%CharacterV1").get_node("DEF_Character/Skeleton3D/Head0")

func _on_button_down() -> void:
	var orig_transform = get_node("%Node3D").scale
	
	Globals.head_width += 1.0
	if Globals.head_width<1:
		Globals.head_width = 1.0/(2-Globals.head_width)
	if Globals.head_width==1:
		Globals.dive.scale.x*=1
	else:
		Globals.dive.scale.x*=Globals.head_width/(Globals.head_width-1.0)


func _on_button_head_number_down_button_down() -> void:
	pass # Replace with function body.
