class_name 移动动作
extends 动作

var 位移: Vector2i

func _init(dx: int, dy: int) -> void:
    位移 = Vector2i(dx, dy)