extends Node2D

var player_grid_pos := Vector2i.ZERO

const player_definition := preload("res://assets/definitions/actors/entity_definition_player.tres")

@onready var player:Entity
@onready var event_handler: EventHandler = $EventHandler
@onready var entitys:Node2D = $Entities

func _process(delta) -> void:
	var player_start_pos:Vector2i = Grid.world_to_grid(get_viewport().get_visible_rect().size.floor() / 2)
	player = Entity.new(player_start_pos, player_definition)
	entitys.add_child(player)
	var npc := Entity.new(player_start_pos + Vector2i(2,0), player_definition)
	npc.modulate = Color.RED
	entitys.add_child(npc)
