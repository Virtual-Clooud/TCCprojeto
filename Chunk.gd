extends Control

#export var nome = "Chunk"
#export var icone = preload("res://icon.png")
export var UX = {"nome": "Chunk", "icone": preload("res://icon.png")}
export var Debug = {"tamanho": Vector2(200, 80)}
onready var nomeC = $Panel/nome
onready var iconeC = $Panel/icone
onready var nomeT = $Panel/expandido/painel/nome
onready var iconeT = $Panel/expandido/painel/icone
onready var popT = $Panel/expandido
func _ready():
	$Panel.rect_size = Debug[tamanho]
	$Panel.rect_pivot_offset = Vector2(($Panel.rect_size.x/2), 
	($Panel.rect_size.y/2)) 
func hovered(check):
	if check:
		$AnimationPlayer.play("hover")
	else:
		$AnimationPlayer.stop()
		$Panel.rect_scale = Vector2(1,1)
		
func _physics_process(delta):
	
	
	nomeC.set_text(nome)
	iconeC.set_texture(icone)
	nomeT.set_text(nome)
	iconeT.set_texture(icone)

func _on_Button_pressed():
	popT.popup()


func _on_expandeC_mouse_entered():
	hovered(true)


func _on_expandeC_mouse_exited():
	hovered(false)
