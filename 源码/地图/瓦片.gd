class_name 瓦片
extends Sprite2D

var 定义: 瓦片定义

func _init(网格坐标:Vector2i, 某定义:瓦片定义) -> void:
	centered = false
	position = 网格.网格到世界坐标(网格坐标)
	设置瓦片类别(某定义)

func 设置瓦片类别(某瓦片定义:瓦片定义) -> void:
	定义 = 某瓦片定义
	texture = 某瓦片定义.纹理
	modulate = 某瓦片定义.深色

func 可通行() -> bool:
	return 定义.可通行

func 可透光() -> bool:
	return 定义.可透光
