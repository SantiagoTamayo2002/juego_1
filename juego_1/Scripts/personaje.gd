extends CharacterBody2D
var pixeles_personaje : int = 24

@export var speed : float = 2 * pixeles_personaje

func _physics_process(delta):
	var direction : Vector2 = Input.get_vector("M_left","M_rigth","M_up","M_down").normalized()
	if direction:
		velocity = direction * speed
		animar(1)
	else:
		velocity = Vector2.ZERO
		animar(0)
	move_and_slide()

func animar(bool):
	if bool == 1:
		$AnimatedSprite2D.play("walk")
	else:
		$AnimatedSprite2D.play("idle")
