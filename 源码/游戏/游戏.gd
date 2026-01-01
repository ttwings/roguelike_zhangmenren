extends Node2D

var 玩家网格坐标 := Vector2i.ZERO

const 玩家定义 := preload("res://资源/定义/角色/玩家.tres")

@onready var 玩家:实体
@onready var 某事件处理器: 事件处理器 = $"事件处理器"
@onready var 某实体组:Node2D = $实体组

func _process(delta) -> void:
	var 玩家开始坐标:Vector2i = 网格.世界到网格坐标(get_viewport().get_visible_rect().size.floor() / 2)
	玩家 = 实体.new(玩家开始坐标, 玩家定义)
	某实体组.add_child(玩家)
	var npc := 实体.new(玩家开始坐标 + Vector2i(2,0), 玩家定义)
	npc.modulate = Color.RED
	某实体组.add_child(npc)
