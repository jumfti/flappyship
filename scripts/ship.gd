extends Node2D

const TIRO = preload("res://scenes/tiro.tscn")
@onready var tirosom:AudioStreamPlayer = $somtiro
var veloc: int = 300
# Chamado quando o nó entra na árvore de cena pela primeira vez.

func _ready() -> void:
	pass # Substitua pelo corpo da função.

# Chamado cada quadro. 'delta' é o tempo decorrido desde o quadro anterior.
func _process(delta: float) -> void:
	
	#para movimento da ship
	var dy: int  = 0
	if Input.is_action_pressed("ui_up"):
		dy += -1
	if Input.is_action_pressed("ui_down"):
		dy += 1
		
	#tiro da ship
	if Input.is_action_just_pressed("tiros"):
		tirosom.play()
		f_tiros()	
	
	#limite do topo
	global_position.y = clamp(global_position.y, 190,560)
		
	translate(Vector2(0, dy) * veloc * delta)
	#pass

#funcao do tiro	(Clona a constante e define a posição do tiro)
func f_tiros() -> void:
	var clone_tiros = TIRO.instantiate()
	get_parent().add_child(clone_tiros)
	clone_tiros.global_position = global_position + (Vector2(15, 0))


func damage(_valordano: int) -> void:
	pass

#quando inimigo colidir na nave
func _on_colisaonave_area_entered(_area: Area2D) -> void:
	Controles.vidas -= 1
	#Para reeiniciar se colidir
	#get_tree().reload_current_scene() 
	
