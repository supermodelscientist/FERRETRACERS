extends Button

var head_number = 0

func _on_pressed() -> void:
	head_number += 1
	var incredible = Sprite2D.new()
	var wow = get_node("%ViewportSprite")
	wow.scale *= head_number
	print(head_number)
