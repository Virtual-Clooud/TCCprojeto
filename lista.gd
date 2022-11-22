extends ColorRect
#Script que gerencia posicionamento e ordem dos itens
export var habit = preload("res://Habit.tscn")
export var todo = preload("res://Todo.tscn")
export var pos0 = Vector2(0, 60)
export var counter = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_tarefa_pressed():
	var insth = habit.instance()
	insth.rect_position = Vector2(0, (60 +(130 * counter)))
	add_child(insth)
	counter += 1
	print("ADD A TAREFA")
	#Nova tarefa pra ser adicionada


func _on_habito_pressed():
	pass
	#Novo hábito pra ser adicionada
