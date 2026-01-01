class_name 地图数据
extends RefCounted

const 瓦片字典 = {
	"地板" : preload("res://资源/定义/瓦片/地板.tres"),
	"墙壁" : preload("res://资源/定义/瓦片/墙壁.tres"),
}

var 宽: int
var 高: int
var 瓦片数组: Array[瓦片]

func _init(地图宽: int, 地图高: int) -> void:
	宽 = 地图宽
	高 = 地图高
	设置瓦片()

func 设置瓦片() -> void:
	瓦片数组 = []
	for y in range(高):
		for x in range(宽):
			var 某瓦片 = 瓦片.new(Vector2i(x, y), 瓦片字典["地板"])
			瓦片数组.append(某瓦片)

func 获取瓦片(网格坐标: Vector2i) -> 瓦片:
	var 索引 = 网格到索引(网格坐标)
	if 索引 == -1:
		return null
	return 瓦片数组[索引]

func 网格到索引(网格坐标: Vector2i) -> int:
	if not 在边界内(网格坐标):
		return -1
	return 网格坐标.y * 宽 + 网格坐标.x

func 在边界内(网格坐标: Vector2i) -> bool:
	return 网格坐标.x >= 0 and 网格坐标.x < 宽 and 网格坐标.y >= 0 and 网格坐标.y < 高
