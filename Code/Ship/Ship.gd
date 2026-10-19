extends Area2D
class_name Ship 

const BULLET: PackedScene = preload("res://Bullet/Bullet.tscn")




var turn_speed: float = 180 # degrees / second 




func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("fire"):
		fire()


	if Input.is_action_just_pressed("turn_ccw"):
		rotation_degrees += turn_speed * delta 

	if Input.is_action_just_pressed("turn_cw"):
		rotation_degrees += turn_speed * delta 


 	#if Input.is_action_pressed("pause"):
		#get_tree(). paused = true 



func fire():
	print("fire")
	var bullet: Bullet = BULLET.instantiate()
	bullet.position = position
	bullet.rotation = rotation 
	get_parent().add_child(bullet)
