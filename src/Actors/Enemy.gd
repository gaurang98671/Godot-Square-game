extends "res://src/Actors/Actor.gd"

func _ready() -> void:
	
	velocity.x= -speed.x
	
func _physics_process(delta: float) -> void:
	velocity.y= gravity* delta
	if is_on_wall():
		velocity.x= velocity.x * -1 
	velocity.y= move_and_slide(velocity, FLOOR_NORMAL).y
