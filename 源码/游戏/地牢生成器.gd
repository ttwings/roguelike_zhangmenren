class_name 地牢生成器
extends Node

@export_category("地图大小")
@export var 地图宽: int = 80
@export var 地图高: int = 45

var 随机 := RandomNumberGenerator.new()

func _ready() -> void:
	随机.randomize()

func 平铺瓦片(地牢: 地图数据, x: int, y: int) -> void:
	var 瓦片位置 = Vector2i(x, y)
	var 某瓦片: 瓦片 = 地牢.获取瓦片(瓦片位置)
	某瓦片.设置瓦片类型(地牢.瓦片字典["地板"])


# 通过用地板瓦片填充房间的内部来平铺房间
# 通过缩小房间矩形来避免覆盖墙壁
func 平铺房间(地牢: 地图数据, 房间: Rect2i) -> void:
	var 内部 : Rect2i = 房间.grow(-1)
	for y in range(内部.position.y, 内部.end.y + 1):
		for x in range(内部.position.x, 内部.end.x + 1):
			平铺瓦片(地牢, x, y)
