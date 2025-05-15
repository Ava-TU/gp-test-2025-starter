extends Node2D

var speed = 125
var enemyEmit = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	#var offset = randf_range(200, 600)
	position.x += -speed * delta
