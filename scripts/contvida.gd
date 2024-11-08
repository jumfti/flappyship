extends Node2D

#pegando os labels para alterar
@onready var vidaicon: TextureRect = $vidaicon
@onready var vidaicon_2: TextureRect = $vidaicon2
@onready var vidaicon_3: TextureRect = $vidaicon3

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	#Alterando a quantidade das vidas
	match Controles.vidas:
		0:
			vidaicon.hide()
			vidaicon_2.hide()
			vidaicon_3.hide()
		1:
			vidaicon.show()
			vidaicon_2.hide()
			vidaicon_3.hide()
		2:
			vidaicon.show()
			vidaicon_2.show()
			vidaicon_3.hide()
		3:
			vidaicon.show()
			vidaicon_2.show()
			vidaicon_3.show()
