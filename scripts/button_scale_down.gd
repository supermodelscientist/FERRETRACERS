extends Button

func _on_ready() -> void:
	grab_focus()

func _on_button_down() -> void:
	var dive = get_node("%Node3D").get_node("%CharacterV1").get_node("%DEF_Character/Skeleton3D/Head0")
	
	var orig_transform = get_node("%Node3D").scale
	
	if dive.scale.x <= 0:
		dive.scale.x = 0
		print(dive.scale.x)
	else:
		dive.scale.x -=1
		print(dive.scale.x)
