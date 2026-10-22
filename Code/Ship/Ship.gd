extends ScreenWrapper
class_name Ship 

const BULLET: PackedScene = preload("res://Bullet/Bullet.tscn")




var turn_speed: float = 180 # degrees / second 
var thrust_power: float = 20 # multiplier 
var velocity: Vector2 =  Vector2.ZERO


func _physics_process(delta: float) -> void:
	super._process(delta)
	if Input.is_action_just_pressed("fire"):
		fire()


	if Input.is_action_pressed("turn_ccw"):
		rotation_degrees -= turn_speed * delta 

	if Input.is_action_pressed("turn_cw"):
		rotation_degrees += turn_speed * delta 


	if Input.is_action_pressed("thrust"):
		
	# snake like movement.
		velocity.x += cos(rotation - PI/2) * thrust_power 
		velocity.y += sin(rotation - PI/2) * thrust_power
	var c: float = 1000
	#TODO: Fix max velocity 
	#velocity = velocity.clamp(Vector2(-c, c), Vector2(-c, c))
	

	position += velocity * delta






# TODO: move to Main?



func fire():
	print("fire")
	var bullet: Bullet = BULLET.instantiate()
	bullet.position = position
	bullet.rotation = rotation 
	get_parent().add_child(bullet)
