extends HSlider

func _on_value_changed(value: float) -> void:
	
	Globals.body_hue = value
	
	# var albedo_color = get_node("%Node3D").get_node("%CharacterV1").get_node("%DEF_Character/Skeleton3D/Body").get_surface_override_material(0).albedo_color
	#
	Body.body_color = Color.from_hsv(Globals.body_hue, Globals.body_saturation, Globals.body_value, 1)
	
	print(Body.body_color)
	
	get_node("%Node3D").get_node("%CharacterV1").get_node("%DEF_Character/Skeleton3D/Body").get_surface_override_material(0).albedo_color = Body.body_color
	
	print(get_node("%Node3D").get_node("%CharacterV1").get_node("%DEF_Character/Skeleton3D/Body").get_surface_override_material(0).albedo_color)
	
