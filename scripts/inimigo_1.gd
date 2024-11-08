extends Node2D

#variavel que espera que o nó seja carregavel
@onready var inimigo:AnimatedSprite2D = $inimigo1
@onready var somdead: AudioStreamPlayer2D = $somdead

#velocidade do inimigo
var veli: int = 200
var lifei: bool = true

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	translate(Vector2(-1,0) * veli * delta)

# Quando o tiro pega no inimigo
func _on_danotiro(_area: Area2D) -> void:
	#Ao receber o tiro para o inimigo
	if lifei: 
		veli = 0
		lifei = false
		inimigo.play("dead")
		somdead.play()
		#propriedade para aguardar a animação dead
		await inimigo.animation_finished
		dead()

#função para dead
func dead () -> void:
	#controle de quantidade score
	Controles.score += 25
	queue_free()
