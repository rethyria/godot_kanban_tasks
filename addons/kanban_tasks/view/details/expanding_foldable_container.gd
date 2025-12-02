@tool
class_name ExpandingFoldableContainer extends FoldableContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	folding_changed.connect(_update_size_controls)
	
	if folded:
		size_flags_vertical = Control.SIZE_FILL
	else:
		size_flags_vertical = Control.SIZE_EXPAND_FILL
	

func _update_size_controls(is_folded: bool) -> void:
	if is_folded:
		size_flags_vertical = Control.SIZE_FILL
	else:
		size_flags_vertical = Control.SIZE_EXPAND_FILL
