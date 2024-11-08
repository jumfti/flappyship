extends Area2D

var veloct: int=300

func _ready() -> void:
	pass 
	
# script tiro
func _process(delta: float) -> void:
	translate(Vector2(1,0) * veloct * delta)
	
#sumir tiro na tela
	if global_position.x > 1000:
		sumir()

#sumir tiro ao matar inimigo	
func _tirosumir_area_entered(_area: Area2D) -> void:
	veloct = 0
	sumir()

#função para sumir algo
func sumir() -> void:
	queue_free()
