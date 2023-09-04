extends Node2D

#this script is called trap and not saw because we'll use it to other traps other than the saw
signal touched_player


func _on_area_2d_body_entered(body):
	if body is Player:
		touched_player.emit()
		
