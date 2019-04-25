extends Node2D

var gameManagerPacked_easy
var gameManagerUnpacked_easy
var gameManagerPacked_medium
var gameManagerUnpacked_medium
var gameManagerPacked_hard
var gameManagerUnpacked_hard
var memorytipsPacked
var memorytipsUnpacked
var OST

func _ready():
	gameManagerPacked_easy = preload("res://scenes/GameManager_easy.tscn")
	gameManagerUnpacked_easy = gameManagerPacked_easy.instance()

	gameManagerPacked_medium = preload("res://scenes/GameManager_medium.tscn")
	gameManagerUnpacked_medium = gameManagerPacked_medium.instance()

	gameManagerPacked_hard = preload("res://scenes/GameManager_hard.tscn")
	gameManagerUnpacked_hard = gameManagerPacked_hard.instance()

	memorytipsPacked = preload("res://scenes/Whymemory.tscn")
	memorytipsUnpacked = memorytipsPacked.instance()
	OST = get_node("/root/Global").OST
	OST.play(9.5)

func _input(event):
	if (event.is_pressed() and event.button_index == BUTTON_LEFT):
		get_node("Click_mouse").play()

func _on_StartButton_pressed():
	get_node("button_animation").play("botao_facil")
	var waiting_timer = Timer.new()
	waiting_timer.set_wait_time(0.3)
	waiting_timer.set_one_shot(true)
	self.add_child(waiting_timer)
	waiting_timer.start()
	yield(waiting_timer, "timeout")
	get_node("StartButton").visible = false
	get_node("StartButton2").visible = false
	get_node("StartButton3").visible = false
	get_node("QuitButton").visible = false
	get_node("Credits").visible = false
	get_node("WhyButton").visible = false
	OST.volume_db = -30
	add_child(gameManagerUnpacked_easy)

func _on_StartButton2_pressed():
	get_node("button_animation").play("botao_medio")
	var waiting_timer = Timer.new()
	waiting_timer.set_wait_time(0.3)
	waiting_timer.set_one_shot(true)
	self.add_child(waiting_timer)
	waiting_timer.start()
	yield(waiting_timer, "timeout")
	get_node("StartButton").visible = false
	get_node("StartButton2").visible = false
	get_node("StartButton3").visible = false
	get_node("QuitButton").visible = false
	get_node("Credits").visible = false
	get_node("WhyButton").visible = false
	OST.volume_db = -30
	add_child(gameManagerUnpacked_medium)

func _on_StartButton3_pressed():
	get_node("button_animation").play("botao_dificil")
	var waiting_timer = Timer.new()
	waiting_timer.set_wait_time(0.3)
	waiting_timer.set_one_shot(true)
	self.add_child(waiting_timer)
	waiting_timer.start()
	yield(waiting_timer, "timeout")
	get_node("StartButton").visible = false
	get_node("StartButton2").visible = false
	get_node("StartButton3").visible = false
	get_node("QuitButton").visible = false
	get_node("Credits").visible = false
	get_node("WhyButton").visible = false
	OST.volume_db = -30
	add_child(gameManagerUnpacked_hard)

func _on_WhyButton_button_down():
	get_node("button_animation").play("botao_why")
	var waiting_timer = Timer.new()
	waiting_timer.set_wait_time(0.3)
	waiting_timer.set_one_shot(true)
	self.add_child(waiting_timer)
	waiting_timer.start()
	yield(waiting_timer, "timeout")
	get_node("StartButton").visible = false
	get_node("StartButton2").visible = false
	get_node("StartButton3").visible = false
	get_node("QuitButton").visible = false
	get_node("Credits").visible = false
	get_node("WhyButton").visible = false
	OST.volume_db = -30
	add_child(memorytipsUnpacked)

func _on_QuitButton_button_down():
	get_node("button_animation").play("botao_quit")
	var waiting_timer = Timer.new()
	waiting_timer.set_wait_time(0.3)
	waiting_timer.set_one_shot(true)
	self.add_child(waiting_timer)
	waiting_timer.start()
	yield(waiting_timer, "timeout")
	get_tree().quit()