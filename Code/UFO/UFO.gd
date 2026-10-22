extends  ScreenWrapper
class_name UFO
@onready var timer: Timer = $Timer

var speed: float = 200.0 # px / sec.
var velocity_y = 0.0






func _ready() -> void:
	timer.timeout.connect(on_timeout)
	
	var viewport = get_viewport().size
	if position.x > viewport.x - viewport.x / 2.0:
		speed += -1.0



func _process(delta: float) -> void:
	position.x += speed * delta 
	position.y += velocity_y * delta 

func on_timeout():
	if velocity_y != 0.0:
		velocity_y = 0.0
	else:
		var rando = randi_range(0, 1)
		if rando:
			velocity_y = -speed
		else:
			velocity_y= speed 
		
		
	print("Its going!")
