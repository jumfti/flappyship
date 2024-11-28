extends Node2D

@onready var recordefim: Label = $fundo/recordefim
@onready var pontoatual: Label = $fundo/pontoatual

#contar score
func _ready() -> void:
	recordefim.text = str(Controles.score)

#funcao para cenas e controles
func _process(_delta: float) -> void:
	pontoatual.text = str(Controles.pontuacao)
	if Input.is_action_just_pressed("tiros"):
		get_tree().change_scene_to_file("res://scenes/menu.tscn")
		
		
