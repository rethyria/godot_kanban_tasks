extends OptionButton

const __BoardData := preload("../../data/board.gd")

var board_data: __BoardData
var data_uuid: String

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	focus_entered.connect(_populate_items)


func _populate_items():
	clear()
	for task in board_data.get_tasks():
		add_item(task)
