extends Popup

export var nome = " "
export var icone = preload("res://icon.png")
export var habit = preload("res://Habit.tscn")
export var todo = preload("res://Todo.tscn")
export var pos0 = Vector2(0, 60)
export var counter = 0
func _ready():
	pass
	


func _on_novoitem_pressed():
	$painel/adiciona.popup()
	#
