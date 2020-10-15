tool
extends Area2D
onready var anim_player: AnimationPlayer= $AnimationPlayer 
#export var path_to_level: String

func _on_Portal_body_entered(body: PhysicsBody2D) -> void:
	teleport()

#func _get_configuration_warning() -> String:
	#return "The next scene property cant be empty" if not path_to_level else ""

func teleport() -> void:
	anim_player.play("Fade in")
	yield(anim_player, "animation_finished")
	#var next_scene :=load(path_to_level)
	#get_tree().change_scene_to(next_scene)
	
