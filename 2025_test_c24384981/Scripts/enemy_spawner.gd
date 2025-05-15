extends Node2D

var enemies_scene:PackedScene

var rng = RandomNumberGenerator.new()
var amount = 12
var offset = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	enemies_scene = load("res://Scenes/enemy.tscn")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for n in amount:
		SpawnEnemy(n * offset)


func SpawnEnemy(n):
	var s = get_viewport().size
	var offset = randf_range(100, -100)
	var enemy = enemies_scene.instantiate()
	enemy.position.x = randf_range(20, s.x - 20)
	global_position.x += offset
	enemy.position.y = 50
	add_child(enemy)
	
