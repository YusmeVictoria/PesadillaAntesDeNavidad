extends Area2D
class_name DefenderBase

@export var cost: int = 100
@export var damage: int = 10
@export var attack_speed: float = 1.0  # ataques por segundo
@export var range: float = 200.0

var _time_since_last_attack: float = 0.0

func _process(delta: float) -> void:
	_time_since_last_attack += delta
	if _time_since_last_attack >= 1.0 / attack_speed:
		if has_target():
			attack()
			_time_since_last_attack = 0.0

func has_target() -> bool:
	return false  # luego lo sobreescribiremos en los hijos

func attack() -> void:
	pass  # método “virtual”
