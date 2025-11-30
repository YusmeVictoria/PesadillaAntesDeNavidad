extends Area2D

@export var speed: float = 300.0
var direction: Vector2 = Vector2.RIGHT
var damage: int = 10

func _process(delta: float) -> void:
	global_position += direction * speed * delta

	# Si sale de pantalla, borrarlo
	if global_position.x > 3000 or global_position.x < -3000:
		queue_free()

func _on_body_entered(body: Node) -> void:
	if body.is_in_group("enemies"):
		if body.has_method("take_damage"):
			body.take_damage(damage)
		queue_free()
