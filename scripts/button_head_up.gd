extends Button

var head_number = 0

func _on_pressed() -> void:
	head_number += 1

	var wow = get_node("%Node3D")
	wow.scale.x*=head_number
	print(wow.transform)
