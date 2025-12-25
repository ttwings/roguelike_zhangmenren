class_name Entity
extends Sprite2D

var grid_position:
	set(value):
		grid_position = value
		position = Grid.grid_to_world(grid_position)

func _init(start_position:Vector2i, definition: EntityDefinition,) -> void:
	
	texture = definition.texture
	modulate = definition.color_no_alpha
	grid_position = start_position

func move(offset: Vector2i) -> void:
	grid_position += offset
