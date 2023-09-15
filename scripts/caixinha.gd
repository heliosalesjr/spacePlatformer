extends RigidBody2D

signal touched_box

func _on_body_entered(body):
	if body is Player:
		touched_box.emit()
		print("tocadah")
