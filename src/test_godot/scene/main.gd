extends Node3D

@export var sceneOiseau : PackedScene
@export var markerDirection : Marker3D
@export var markerSpawnOiseau : Marker3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_oiseau_timer_timeout() -> void:
	var oiseau = sceneOiseau.instantiate()
	
	#var oiseau_spawn = Vector3(24.8, 13.538, 17.6)
	#var camera_pos = $CameraPivot/Camera3D.position
	
	var oiseau_spawn = markerSpawnOiseau.global_position
	var camera_pos = markerDirection.global_position
	oiseau.init(oiseau_spawn, camera_pos)
	
	add_child(oiseau)
	
	
