extends CharacterBody2D

var gun = 0

@onready var bullet = preload("res://Sceans/bullet.tscn")

func  _ready() -> void:
	print("ready..")

#func is_ready_gun(


func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())

		
	if Input.is_action_just_pressed("fire") && gun>=1:
		gun -=1
		var new_bullet = bullet.instantiate()
		new_bullet.position = $gun_tip.get_global_position() 
		new_bullet.apply_impulse(Vector2(2500, 0 ).rotated(rotation) , Vector2.ZERO)
		get_tree().get_root().add_child(new_bullet)
		print("fire ", gun," ",len(get_tree().get_root().get_children()))
		


func _on_timer_timeout() -> void:

	if gun <=7:

		
		gun +=1
