extends CanvasLayer

signal start_game

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func show_message(text):
	$Message.text = text
	$Message.show()
	$MessageTimer.start()

func show_game_over():
	show_message("Meow")
	$Meow.play()
	# Wait until the MessageTimer has counted down.
	await $MessageTimer.timeout
	
	get_tree().reload_current_scene()
	#$Message.text = "Find your pal!"
	#$Message.show()
	# Make a one-shot timer and wait for it to finish.
	#await get_tree().create_timer(1.0).timeout
	#$StartButton.show()
	
	#set character to playable


func _on_start_button_pressed():
	$Message.hide()
	$StartButton.hide()
	start_game.emit()
	

func _on_message_timer_timeout():
	$Message.hide()


func _on_goal_2_body_entered(body):
	show_game_over()
