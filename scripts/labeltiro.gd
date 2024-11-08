extends Label

#função para mostrar a quant score
func _ready() -> void:
	text = str("%04d" % Controles.ltiro)

func _process(_delta: float) -> void:
	pass
