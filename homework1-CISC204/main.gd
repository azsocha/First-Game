extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func game_over():
	#$Meow.play()
	$HUD.show_game_over()
	
	
	
func new_game():
	$Player1.start($StartPosition.position)
	#playable 
	
	#$HUD.show_message("Get Ready")
	
