extends Node2D

var CoinScene = preload("res://scenes/Coin/coin.tscn")

func _ready():
	# ALEATORIO
	#for i in range(4):
		#var coin = CoinScene.instantiate()

		#var x = 100 + (randi() % 1000)
		#var y = 100 + 150 * i
		#coin.configurate(Vector2(x, y))
		#$Coins.add_child(coin)
		
	# POSICIONADO SOBRE LOS MARKERS2D
	for marker in $Coins.get_children():
		var coin = CoinScene.instantiate()
		marker.add_child(coin)

func _process(delta):
	pass
