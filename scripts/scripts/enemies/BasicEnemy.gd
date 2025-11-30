extends CharacterBody2D

@export var health: int = 50
@export var speed: float = 40.0

func _ready() -> void:
	add_to_group("enemies")

func _physics_process(delta: float) -> void:
	velocity = Vector2.LEFT * speed
	move_and_slide()

func take_damage(amount: int) -> void:
	health -= amount
	if health <= 0:
		queue_free()
