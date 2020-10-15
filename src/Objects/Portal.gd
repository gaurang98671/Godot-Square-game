extends Area2D

export var nextScene: String

func _on_Portal_body_entered(body: PhysicsBody2D) -> void:
	var scene:= load(nextScene)
	get_tree().change_scene_to(scene)
	
	
