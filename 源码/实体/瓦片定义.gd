class_name 瓦片定义
extends Resource

@export_category("观察")
@export var 纹理: AtlasTexture
@export_color_no_alpha var 浅色 = Color.WHITE
@export_color_no_alpha var 深色 = Color(0.5, 0.5, 0.5)

@export_category("结构")
@export var 可通过: bool = true
@export var 可透光: bool = true
