class_name 实体
extends Sprite2D

var 网格坐标:
	set(value):
		网格坐标 = value
		position = 网格.网格到世界坐标(网格坐标)

func _init(开始坐标:Vector2i, 定义: 实体定义) -> void:

	texture = 定义.纹理
	modulate = 定义.色彩
	网格坐标 = 开始坐标

func 移动(偏移: Vector2i) -> void:
	网格坐标 += 偏移
