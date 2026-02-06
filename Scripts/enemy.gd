extends CharacterBody2D
var speed = 150
var helth = 75
func _physics_process(delta: float) -> void:
	position.x -= delta * speed


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Bullets"):
		helth -= 25
		body.queue_free()
		if helth <= 0:
			queue_free()
			
	
