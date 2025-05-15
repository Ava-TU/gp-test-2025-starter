extends Node2D

var enemies_scene:PackedScene

var rng = RandomNumberGenerator.new()
var amount = 1
var offset = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	enemies_scene = load("res://Scenes/enemy.tscn")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	##SpawnEnemy(1)

#
#func SpawnEnemy(n):
	#var s = get_viewport().size
	##var offset = randf_range(100, -100)
	#var enemy = enemies_scene.instantiate()
	#enemy.position.y = randf_range(-300, s.x - 300)
	##global_position.x += offset
	##enemy.position.y = randf_range(100, 400)
	#add_child(enemy)
	


func _on_death_hit_box_area_entered(area: Area2D) -> void:
	print ("Destroy Enemies")
	if area.is_in_group("enemy"):
		area.queue_free()
	pass # Replace with function body.


func _on_timer_timeout() -> void:
	var s = get_viewport().size
	var enemy = enemies_scene.instantiate()
	enemy.position.y = randf_range(0, s.x - 100)
	add_child(enemy)
