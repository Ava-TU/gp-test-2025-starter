extends CharacterBody2D


var speed = 250


func _physics_process(delta: float) -> void:
	
	$"../CanvasLayer/Health".text = "Health: " + str(Global.health)
	$"../CanvasLayer/Enemies".text = "Enemies: " + str(Global.enemies)
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
	
	var upDirection := Input.get_axis("up", "down")
	if upDirection:
		velocity.y = upDirection * speed
	else:
		velocity.y = move_toward(velocity.y, 0, speed)

	move_and_slide()
