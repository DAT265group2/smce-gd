extends Control

onready var _wrapped: FileDialog = $FileDialog


func _ready():
	# Trigger file refresh
	_wrapped.popup()
	_wrapped.hide()


func _process(_delta: float) -> void:
	_wrapped.rect_size = rect_size - Vector2(0, 12)
	_wrapped.rect_position = rect_position + Vector2(0, 12)
	_wrapped.rect_scale = rect_scale
	_wrapped.modulate = modulate
	_wrapped.rect_pivot_offset = rect_pivot_offset
	_wrapped.visible = visible


func connect(sig_name: String, object: Object, func_name: String, bind: Array = [], idx: int = 0) -> int:
	return _wrapped.connect(sig_name, object, func_name, bind, idx)
