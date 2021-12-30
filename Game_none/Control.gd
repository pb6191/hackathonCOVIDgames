extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AcceptDialog_about_to_show():
	if get_tree() != null:
		get_tree().paused = true # Replace with function body.


func _on_AcceptDialog2_about_to_show():
	if get_tree() != null:
		get_tree().paused = true # Replace with function body.


func _on_ConfirmationDialog_about_to_show():
	if get_tree() != null:
		get_tree().paused = true # Replace with function body.


func _on_ConfirmationDialog2_about_to_show():
	if get_tree() != null:
		get_tree().paused = true # Replace with function body.


func _on_ConfirmationDialog3_about_to_show():
	if get_tree() != null:
		get_tree().paused = true # Replace with function body.


func _on_ConfirmationDialog4_about_to_show():
	if get_tree() != null:
		get_tree().paused = true # Replace with function body.


func _on_ConfirmationDialog5_about_to_show():
	if get_tree() != null:
		get_tree().paused = true # Replace with function body.


func _on_ConfirmationDialog6_about_to_show():
	if get_tree() != null:
		get_tree().paused = true # Replace with function body.


func _on_ConfirmationDialog7_about_to_show():
	if get_tree() != null:
		get_tree().paused = true # Replace with function body.


func _on_ConfirmationDialog8_about_to_show():
	if get_tree() != null:
		get_tree().paused = true # Replace with function body.


func _on_AcceptDialog_confirmed():
	if get_tree() != null:
		get_tree().paused = false # Replace with function body.


func _on_AcceptDialog2_confirmed():
	if get_tree() != null:
		get_tree().paused = false # Replace with function body.


func _on_ConfirmationDialog_confirmed():
	if get_tree() != null:
		get_tree().paused = false # Replace with function body.



func _on_ConfirmationDialog_popup_hide():
	if get_tree() != null:
		get_tree().paused = false # Replace with function body.


func _on_ConfirmationDialog2_popup_hide():
	if get_tree() != null:
		get_tree().paused = false # Replace with function body.


func _on_ConfirmationDialog3_popup_hide():
	if get_tree() != null:
		get_tree().paused = false # Replace with function body.


func _on_ConfirmationDialog4_popup_hide():
	if get_tree() != null:
		get_tree().paused = false # Replace with function body.


func _on_ConfirmationDialog5_popup_hide():
	if get_tree() != null:
		get_tree().paused = false # Replace with function body.


func _on_ConfirmationDialog6_popup_hide():
	if get_tree() != null:
		get_tree().paused = false # Replace with function body.


func _on_ConfirmationDialog7_popup_hide():
	if get_tree() != null:
		get_tree().paused = false # Replace with function body.


func _on_ConfirmationDialog8_popup_hide():
	if get_tree() != null:
		get_tree().paused = false # Replace with function body.
