extends Button

var head_number = 0

func _on_button_down() -> void:
	head_number -= 1
	print(head_number)
