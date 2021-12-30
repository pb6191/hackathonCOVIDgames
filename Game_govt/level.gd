extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var condition = "Authorities' message manipulated"
var comm1 = 0
var comm3 = 0
var save_count = 0
var data_file = File.new()
var existing_content = ""


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ConfirmationDialog_popup_hide():
	comm1 = comm1 + 1 # Replace with function body.


func _on_ConfirmationDialog2_popup_hide():
	comm1 = comm1 + 1 # Replace with function body.


func _on_ConfirmationDialog3_popup_hide():
	comm1 = comm1 + 1 # Replace with function body.


func _on_ConfirmationDialog4_popup_hide():
	comm1 = comm1 + 1 # Replace with function body.


func _on_ConfirmationDialog4_confirmed():
	comm1 = comm1 + 1 # Replace with function body.


func _on_ConfirmationDialog5_popup_hide():
	comm3 = comm3 + 1 # Replace with function body.


func _on_ConfirmationDialog6_popup_hide():
	comm3 = comm3 + 1 # Replace with function body.


func _on_ConfirmationDialog7_popup_hide():
	comm3 = comm3 + 1 # Replace with function body.


func _on_ConfirmationDialog8_popup_hide():
	comm3 = comm3 + 1 # Replace with function body.


func _on_ConfirmationDialog8_confirmed():
	comm3 = comm3 + 1 # Replace with function body.


func _physics_process(delta):
	if get_node("Control/KinematicBody2D/CollisionPolygon2D").get_global_position().distance_to(get_node("Control/SaveFile").get_global_position()) < 40 and save_count == 0:
		if data_file.file_exists("user://data_file.txt"):
			data_file.open("user://data_file.txt", File.READ)
			existing_content = data_file.get_as_text()
			data_file.close()
		data_file.open("user://data_file.txt", File.WRITE)   
		data_file.store_line(existing_content+condition+",Communication with 1st NPC,"+str(comm1)+",Communication with 3rd NPC,"+str(comm3))
		data_file.close()
		save_count = 1
