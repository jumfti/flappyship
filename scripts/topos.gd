extends ParallaxBackground

@export var veltopo: int = 50

#funcao para passar as bordas (efeito paralax)
func _process(delta: float) -> void:
	scroll_offset.x -= veltopo * delta
