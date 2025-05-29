class_name DamageComponent
extends Node2D

@export var max_damage = 1
@export var current_damage = 0

signal max_damaged_reached

func apply_damage(damage: int) -> void:
	print("Applying damage: ", damage)
	current_damage = clamp(current_damage + damage, 0, max_damage)
	print("New current damage: ", current_damage, "/", max_damage)
	
	if current_damage == max_damage:
		print("Emitting max_damaged_reached")
		max_damaged_reached.emit()
