extends Area2D





func _on_Coin_body_entered(body: PhysicsBody2D) -> void:
	queue_free()
