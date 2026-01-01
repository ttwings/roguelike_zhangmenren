class_name 事件处理器
extends Node

func 获取动作() -> 动作:
	var 某动作:动作 = null

	if Input.is_action_just_pressed("向右移动"):
		某动作 = 移动动作.new(1, 0)
	elif Input.is_action_just_pressed("向左移动"):
		某动作 = 移动动作.new(-1, 0)
	elif Input.is_action_just_pressed("向上移动"):
		某动作 = 移动动作.new(0, -1)
	elif Input.is_action_just_pressed("向下移动"):
		某动作 = 移动动作.new(0, 1)

	if Input.is_action_just_pressed("escape"):
		某动作 = 退出动作.new()

	return 某动作
