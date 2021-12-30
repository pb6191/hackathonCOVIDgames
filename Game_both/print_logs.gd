extends Node
	
#var output = []
#var output2 = []
#var save_game = File.new()
#func _input(event):
#	# Mouse in viewport coordinates
#	if event is InputEventMouseButton:
#		output.append("Mouse Click/Unclick at: ")
#		output.append(str(event.position))
#		print("Mouse Click/Unclick at: ", event.position)
#		save_game.open("C:/Users/hp/Downloads/Godot_v3.2.2-stable_win64.exe/savegame.txt", File.READ_WRITE)   
#		var content = save_game.get_as_text()
#		save_game.store_line(content+"Mouse Click/Unclick at: "+str(event.position))
#		#for line in output: save_game.store_line(content+line)
#		save_game.close()
#	elif event is InputEventMouseMotion:
#		output2.append("Mouse Motion at: ")
#		output2.append(str(event.position))


