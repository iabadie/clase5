extends Sprite2D


func _ready():
	pass

func _process(delta):
	pass

func configurate(position: Vector2):
	self.position = position

func _on_area_2d_area_entered(area):
	queue_free()
