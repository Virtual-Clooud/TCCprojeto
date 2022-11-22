extends Control

export var nome = "Cortar Lenha"

export var vdia = 5 #Pegar dia atual por padrão
export var vmes = 11 #Por padrão pegar mês atual
export var ano = 2022 #Por padrão pegar ano atual
export var feito = false
export var vencimento = false
export var importante = false
export var urgente = false
onready var lnome = $Panel/nome
onready var bfeito = $Panel/feito
onready var bvencimento = $Panel/vencimento
onready var bimportante = $Panel/importante
onready var burgente = $Panel/urgente

func feito():
	if feito == true:
		nome = "FEITO"
		lnome.set_text(nome)
func defina_prioridade():
#	if importante == true:
#		prioridade += 1
#	else:
#		prioridade -= 1
#	if urgente == true:
#		prioridade += 1
#	else:
#		prioridade -= 1
	#Provavelmente não é necessária
	pass
func _ready():
	lnome.set_text(nome)
	bfeito.set_pressed(feito)
	bimportante.set_pressed(importante)
	burgente.set_pressed(urgente)

func _physics_process(delta):
	if bfeito.pressed == true:
		feito = true
	if bvencimento.pressed == true:
		vencimento = true
	if bimportante.pressed == true:
		importante = true
	if burgente.pressed == true:
		urgente = true
	#Sistema Prioridade\\
	defina_prioridade()
	#------------------\\
	#Qnd for feito-----\\
	feito()
	#------------------\\
	



