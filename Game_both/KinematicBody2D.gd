extends KinematicBody2D

# Player movement speed
export var speed = 155
var dialog1_count = 0
var dialog2_count = 0
var dialog3_count = 0
var dialog4_count = 0
var initialPos = Vector2(254, 127)

func _physics_process(delta):
	# Get player input
	var direction: Vector2
	if $"../Area2D".overlaps_body($".") or $"../Area2D5".overlaps_body($"."):
		direction.x = - Input.get_action_strength("ui_left")
		direction.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	elif $"../Area2D2".overlaps_body($".") or $"../Area2D4".overlaps_body($".") or $"../Area2D6".overlaps_body($"."):
		direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
		direction.y = - Input.get_action_strength("ui_up")
	elif $"../Area2D3".overlaps_body($".") or $"../Area2D7".overlaps_body($"."):
		direction.x = Input.get_action_strength("ui_right")
		direction.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	else:
		direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
		direction.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	# If input is digital, normalize it for diagonal movement
	if abs(direction.x) == 1 and abs(direction.y) == 1:
		direction = direction.normalized()
	
	if get_node("CollisionPolygon2D").get_global_position().distance_to(get_node("../NPC1").get_global_position()) < 50 and dialog1_count == 0:
		get_node("../../Control2/ConfirmationDialog").popup()
		get_node("../../Control2/ConfirmationDialog").set_position(initialPos)
		dialog1_count = 1
	
	if get_node("CollisionPolygon2D").get_global_position().distance_to(get_node("../NPC3").get_global_position()) < 50 and dialog3_count == 0:
		get_node("../../Control2/ConfirmationDialog5").popup()
		get_node("../../Control2/ConfirmationDialog5").set_position(initialPos)
		dialog3_count = 1
		
	if get_node("CollisionPolygon2D").get_global_position().distance_to(get_node("../AuthMessage").get_global_position()) < 50 and dialog4_count == 0:
		get_node("../../Control2/AcceptDialog3").popup()
		get_node("../../Control2/AcceptDialog3").set_position(initialPos)
		dialog4_count = 1

	if get_node("CollisionPolygon2D").get_global_position().distance_to(get_node("../NPC2").get_global_position()) < 40 and dialog2_count == 0:
		get_node("../../Control2/AcceptDialog2").popup()
		get_node("../../Control2/AcceptDialog2").set_position(initialPos)
		dialog2_count = 1
	
	if get_node("CollisionPolygon2D").get_global_position().distance_to(get_node("../Exit").get_global_position()) < 40:
		get_tree().quit()
	# Apply movement
	var movement = speed * direction * delta
	move_and_collide(movement)
