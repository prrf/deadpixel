extends Node2D
@export var pixelscene : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_window().set_mouse_passthrough_polygon($Polygon2D.polygon)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:

	pass


func _on_timer_timeout() -> void:
	
	var newpixel = pixelscene.instantiate()
	newpixel.position = Vector2(randi_range(1, 1920), randi_range(1, 1080))
	print("timeout at" + str(newpixel.position))
	add_child(newpixel)
	pass # Replace with function body.
