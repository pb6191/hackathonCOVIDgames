extends AcceptDialog


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


var initialPos = Vector2(254, 127)
# Called when the node enters the scene tree for the first time.
func _ready():
	self.set_position(initialPos)
	var btn = $".".get_close_button()
	btn.visible = false
	self.set_position(initialPos)
	
	
func _input(event):
	if event is InputEventMouseMotion:
		self.set_position(initialPos)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
