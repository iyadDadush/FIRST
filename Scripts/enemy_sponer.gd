extends Node2D

@onready var enemy =preload("res://Sceans/enemy.tscn")

func _ready() -> void:
	randomize()
	

func _on_timer_timeout() -> void:
	var new_enemy= enemy.instantiate()
	new_enemy.position.x = randi()% 1300 + 1200
	new_enemy.position.y = randi()% 430 + 100
	get_tree().get_root().add_child(new_enemy)
