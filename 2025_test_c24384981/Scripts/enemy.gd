extends Node2D

var speed = 100


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	#var offset = randf_range(200, 600)
	position.x += -speed * delta


func _on_hit_box_area_entered(area: Area2D) -> void:
	print ("Enemy Hit")
	#Global.health -= 1
	pass # Replace with function body.
