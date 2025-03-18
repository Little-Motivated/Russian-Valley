extends CharacterBody2D

func _physics_process(delta: float) -> void:

    var speed = 10000
    velocity = Input.get_vector("left", "right", "up", "down") * speed * delta

    move_and_slide()