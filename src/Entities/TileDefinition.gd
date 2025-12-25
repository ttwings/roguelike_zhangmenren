class_name TileDefinition
extends Resource

@export_category("Visuals")
@export var texture: AtlasTexture
@export_color_no_alpha var Color_lit = Color.WHITE
@export_color_no_alpha var Color_dark = Color(0.5, 0.5, 0.5)

@export_category("Mechanics")
@export var is_walkable: bool = true
@export var is_transparent: bool = true
