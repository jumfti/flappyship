extends Node2D

#clonando o inimigo
const INIMIGO = preload("res://scenes/inimigo_1.tscn")

func _ready() -> void:
	auto_timer()

#função para criar inimigos automaticos
func _on_timer_timeout() -> void:
	#instanciando
	var clone_inimigo = INIMIGO.instantiate()
	get_parent().add_child(clone_inimigo)#clonando
	#definindo de onde vem aleatorio
	clone_inimigo.global_position = Vector2(1000, randi_range(190,560))
	auto_timer()

#Iniciando o auto
func auto_timer () -> void:
	#Usando a propriedade Timer para automatizar
	$Timer.wait_time = (randi_range(1,2))
	$Timer.start()
