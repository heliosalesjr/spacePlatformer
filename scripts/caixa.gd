extends Area2D

class_name Caixa

signal touched_box

func _on_body_entered(body):
	if body is Player:
		touched_box.emit()
		print("tocadah")
		#queue_free()
		
