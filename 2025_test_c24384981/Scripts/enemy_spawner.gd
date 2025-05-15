extends Node2D

@export var enemies = "res://Scenes/enemy.tscn"

var rng = RandomNumberGenerator.new()
var amount = 12
var offset = 5


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for n in amount:
		SpawnEnemy(n * offset)


func SpawnEnemy(n):
	rng.randomize()
	var num = rng.randi_range(40, 300)
	var instance = enemies[num].instantiate()
	instance.position.z = -n
	add_child(instance)
	
