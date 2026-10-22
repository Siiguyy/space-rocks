extends Node
class_name Main
const UfO = preload("res://UFO/UFO.tscn")
@onready var ufo_timer: Timer = $UfoTimer


func _ready() -> void:
	ufo_timer.timeout.connect(on_ufo_spawned)
	




func on_ufo_spawned():
	var ufo: UFO = UfO.instantiate()
	if randi() % 2:
	position.x = 0
	else:
		ufo.position.x = get.viewport().size.x
		positon.y = randf_range(0, get_viewport().size.y)
		add_child(ufo)
	

#func _process(delta: float) -> void:
#FIXME not pausing testing with quit().
#get_tree().paused=true 
 
