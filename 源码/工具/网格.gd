class_name 网格

extends Object

const 瓦片大小 = Vector2i(16,16)

static func 网格到世界坐标(网格坐标:Vector2i) -> Vector2i:
	var 世界坐标: Vector2i = 网格坐标 * 瓦片大小
	return 世界坐标

static func 世界到网格坐标(世界坐标:Vector2i) -> Vector2i:
	var 网格坐标: Vector2i = 世界坐标 / 瓦片大小
	return 网格坐标
