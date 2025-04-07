extends CharacterBody3D

@export var speed = 5

func init(start_position, camera_position):
	look_at_from_position(start_position, camera_position, Vector3.UP)
	
	velocity = speed * Vector3.FORWARD #signe -
	velocity = velocity.rotated(Vector3.UP, rotation.y)
	
	
func _physics_process(delta: float) -> void:
	move_and_slide()
	$AnimationPlayer.speed_scale = 1
