extends Control

var datetime = Time.get_datetime_dict_from_system()
var hora
var minuto
var segundo
var dia
var mes
var ano
onready var horario = find_node("horario")
# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	datetime = Time.get_datetime_dict_from_system()
	dia = convert(datetime["day"], TYPE_STRING)
	mes = convert(datetime["month"], TYPE_STRING)
	ano = convert(datetime["year"], TYPE_STRING)
	hora = convert(datetime["hour"], TYPE_STRING)
	minuto = convert(datetime["minute"], TYPE_STRING)
	segundo = convert(datetime["second"], TYPE_STRING)
	ano = datetime["year"]
	hora = datetime["hour"]
	minuto = datetime["minute"]
	segundo = datetime["second"]
	var horario_format = "%s : %s : %s"
	horario.set_text(horario_format % [hora, minuto, segundo])

func _on_fecha_pressed():
	get_tree().quit()

func _on_minimiza_pressed():
	OS.set_window_minimized(true) # Replace with function body.
