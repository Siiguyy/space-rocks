extends ScreenWrapper
class_name Bullet 

var speed: float = 120 # px / sec.
var lifespan: float = 2.0 # seconds till end.





func _process(delta: float) -> void:
	super._process(delta)
	position.x += cos(rotation+PI/2) * delta * speed 
	position.y += sin(rotation+PI/2) * delta * speed 


	# Countdown.
	lifespan -= delta 
	if lifespan < 0.0:
		queue_free()





	
