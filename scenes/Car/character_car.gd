extends CharacterBody2D

const SPEED = 300.0

var points;

func _ready():
	points = 0;
	update_points_label()

func _physics_process(delta):
	var directionX = Input.get_axis("ui_left", "ui_right")
	if directionX:
		velocity.x = directionX * SPEED
		Node2D
		$Pivot.rotation_degrees = directionX * 90
		$CharacterCollision.rotation_degrees = directionX * 90
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	var directionY = Input.get_axis("ui_up", "ui_down")
	if directionY:
		velocity.y = directionY * SPEED
		$Pivot.rotation_degrees = 90 + directionY * 90
		$CharacterCollision.rotation_degrees = 90 + directionY * 90
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
	move_and_slide()

func update_points_label():
	$Points.text = "Puntos: " + str(points)

func _on_area_2d_area_entered(area):
	points += 1
	update_points_label()
