extends Node2D

func _ready():
	pass

func _on_Button_button_down():
	get_node("Click_mouse").play()
	get_node("button_animation").play("button_voltar")
	var waiting_timer = Timer.new()
	waiting_timer.set_wait_time(0.3)
	waiting_timer.set_one_shot(true)
	self.add_child(waiting_timer)
	waiting_timer.start()
	yield(waiting_timer, "timeout")
	get_tree().reload_current_scene()