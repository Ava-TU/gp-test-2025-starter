extends Node2D

var enemies_scene:PackedScene

var rng = RandomNumberGenerator.new()
var amount = 1
var offset = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	enemies_scene = load("res://Scenes/enemy.tscn")
	pass # Replace with function body.
	


func _on_death_hit_box_area_entered(area: Node2D) -> void:
	print ("Destroy Enemies")
	area.queue_free()
	pass # Replace with function body.


func _on_timer_timeout() -> void:
	var s = get_viewport().size
	var enemy = enemies_scene.instantiate()
	enemy.position.y = randf_range(0, s.y + 150)
	add_child(enemy)
	Global.enemies += 1
