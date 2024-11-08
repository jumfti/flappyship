extends Label

func _ready() -> void:
	pass

#função para mostrar a quant score
func _process(_delta: float) -> void:
	text = str("%04d" % Controles.score)
