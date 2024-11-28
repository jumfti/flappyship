extends Node2D

func _ready() -> void:
	Controles.vidas = 3
	Controles.score = 0

#funcao quando a pontuacao for 0
func _process(_delta: float) -> void:
	if Controles.vidas <= 0:
		fimdejogo()

#funcao para fim de jogo		
func fimdejogo() -> void:
	get_tree().change_scene_to_file("res://scenes/fimdejogo.tscn")
	
	#Verificando a pontuacao para mostrar
	if Controles.score > Controles.pontuacao:
		Controles.pontuacao = Controles.score
			
		
