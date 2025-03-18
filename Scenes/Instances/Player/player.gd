extends CharacterBody2D

func _physics_process(delta: float) -> void:

    var speed = 10000

    var direction = Input.get_vector("left", "right", "up", "down")

    velocity = direction * speed * delta

    print(direction)

    var angle = direction.angle()

    print(angle)

    if direction == Vector2.ZERO:
        $AnimatedSprite2D.stop()
    elif -PI / 4 - 0.01 <= angle and angle <=  PI / 4 + 0.01:
        $AnimatedSprite2D.play("walk_right")
        print("right")
    elif PI / 4 < angle and angle < PI * 3 / 4:
        $AnimatedSprite2D.play("walk_forward")
        print("forward")
    elif -PI * 3 / 4 <= angle and angle <=  -PI / 4:
        $AnimatedSprite2D.play("walk_back")
        print("back")
    elif PI * 3 / 4 <= angle or angle <= -PI * 3 / 4:
        $AnimatedSprite2D.play("walk_left")
        print("left")
    else:
        $AnimatedSprite2D.stop()
        print("stopped")

    move_and_slide()