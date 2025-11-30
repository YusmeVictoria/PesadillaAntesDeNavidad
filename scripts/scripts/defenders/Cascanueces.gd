extends DefenderBase

@export var projectile_scene: PackedScene

func _process(delta: float) -> void:
	# TEMPORAL: dispara todo el rato para probar
	attack()

func has_target() -> bool:
	# De momento siempre true para probar
	return true

func attack() -> void:
	if projectile_scene == null:
		return
	var proj = projectile_scene.instantiate()
	proj.global_position = global_position
	get_tree().current_scene.add_child(proj)
	proj.direction = Vector2.RIGHT
	proj.damage = damage
