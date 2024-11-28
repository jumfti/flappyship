extends VBoxContainer

var opcao: int = 0
var opcaototal = 1
@onready var selecionador: Sprite2D = $"../selecionador"
@onready var somselecao: AudioStreamPlayer = $"../somselecao"

var posicaoselec: Array = [459, 527]

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	#pra descer nas seleções
	if Input.is_action_just_pressed("ui_down"):
		opcao += 1
		somselecao.play()
	if Input.is_action_just_pressed("ui_up"):
		opcao -= 1
		somselecao.play()
	
	#escolha
	if Input.is_action_just_pressed("tiros"):
		match opcao:
			0: 
				get_tree().change_scene_to_file("res://scenes/main.tscn")
			1: 
				get_tree().quit()
	
	#Ao descer coms seta e voltar pra cima de novo
	if opcao > opcaototal:
		opcao = 0
	if opcao < 0:
		opcao = opcaototal
	#mudar a posição da seleção
	selecionador.position.y = posicaoselec[opcao]
