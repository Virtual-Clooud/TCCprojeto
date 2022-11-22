extends Control

export var nome = "Hábito"
export var feito = false
export var reforco = 0
export var horario = "00:00:00"
onready var positivo = $Panel/positivo
onready var negativo = $Panel/negativo
var corrente = 0
var Sreforco
var Ppressionado = false
var Npressionado = false
func pratica():
	if positivo.pressed == true:
		reforco += 1
		corrente += 1
		Sreforco = convert(corrente, TYPE_STRING)
		$Panel/reforco.set_text(Sreforco)
		positivo.pressed = false
		$Timer.start()
	if negativo.pressed == true:
		reforco -= 1
		corrente = 0
		Sreforco = convert(corrente, TYPE_STRING)
		$Panel/reforco.set_text(Sreforco)
		negativo.pressed = false
func _ready():
	Sreforco = convert(corrente, TYPE_STRING)
	$Panel/nome.set_text(nome)
	$Panel/reforco.set_text(Sreforco)
func _physics_process(delta):
	pratica()
