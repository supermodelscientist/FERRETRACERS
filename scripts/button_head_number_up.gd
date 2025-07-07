extends Button

# When the button is pressed

func _on_button_down() -> void:
	var head0 = get_node("%Node3D").get_node("%CharacterV1").get_node("%DEF_Character/Skeleton3D/Head0")
	var head1 = get_node("%Node3D").get_node("%CharacterV1").get_node("%DEF_Character/Skeleton3D/Head1")


	# Decrease the value of head_index
	
	Globals.head_index += 1
	print(Globals.head_index)
	
	# Tells us when we're outside of head_type
	
	if Globals.head_index < 0 or Globals.head_index > Globals.head_type.size():
		print("Out of head_type bounds")
		
	# However, if we are within head_type:

	else:
		if Globals.head_index == 0:
			head0.visible = true
			head1.visible = false
			print("Showing Head 0")
		if Globals.head_index == 1:
			head0.visible = false
			head1.visible = true
			print("Showing Head 1")
