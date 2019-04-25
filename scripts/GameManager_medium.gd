extends Node2D

var init
var number_of_matches
var default_image
var image1
var image2
var image3
var image4
var image5
var image6
var image7
var image8
var image9
var image10
var image11
var image12
var name_image1
var name_image2
var name_image3
var name_image4
var name_image5
var name_image6
var name_image7
var name_image8
var name_image9
var name_image10
var name_image11
var name_image12
var last_try_was_pair
var card_one_checked_if_pairing
var card_two_checked_if_pairing
var card_one_string
var card_two_string
var all_remaining_cards = []
var random_card
var card_number

func _ready():
	number_of_matches = 0
	card_one_string = "Carta 1"
	card_two_string = "Carta 2"
	last_try_was_pair = false
	default_image = preload("res://sprites/versocartas.png")
	image1 = preload("res://sprites/carta1.png")
	name_image1 = "Pinguim"
	image2 = preload("res://sprites/carta2.png")
	name_image2 = "Jacaré"
	image3 = preload("res://sprites/carta3.png")
	name_image3 = "Urso"
	image4 = preload("res://sprites/carta4.png")
	name_image4 = "Sapo"
	image5 = preload("res://sprites/carta5.png")
	name_image5 = "Coruja"
	image6 = preload("res://sprites/carta6.png")
	name_image6 = "Ovelha"
	image7 = preload("res://sprites/carta7.png")
	name_image7 = "Lontra"
	image8 = preload("res://sprites/carta8.png")
	name_image8 = "Polvo"
	image9 = preload("res://sprites/carta9.png")
	name_image9 = "Cachorro"
	image10 = preload("res://sprites/carta10.png")
	name_image10 = "Gato"
	image11 = preload("res://sprites/carta11.png")
	name_image11 = "Girafa"
	image12 = preload("res://sprites/carta12.png")
	name_image12 = "Abelha"
	randomize()
	init = false
	get_node("winning_fireworks").hide()
	get_node("win_color").hide()
	get_node("Parabens").hide()

func _process(delta):
	if !init:
		_shuffle_cards()

func _shuffle_cards():
	all_remaining_cards = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]
	
	#prints (all_remaining_cards.size())
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_1_card_1 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_1_card_2 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_2_card_1 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_2_card_2 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_3_card_1 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_3_card_2 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_4_card_1 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_4_card_2 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_5_card_1 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_5_card_2 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_6_card_1 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_6_card_2 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_7_card_1 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_7_card_2 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_8_card_1 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_8_card_2 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_9_card_1 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_9_card_2 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_10_card_1 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_10_card_2 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_11_card_1 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_11_card_2 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_12_card_1 = "Card" + String(card_number)
	
	random_card = randi()% all_remaining_cards.size()
	card_number = all_remaining_cards[random_card]
	all_remaining_cards.remove(random_card)
	var pair_12_card_2 = "Card" + String(card_number)
	
	get_node(pair_1_card_1).card_face = image1
	get_node(pair_1_card_1).card_name = name_image1
	get_node(pair_1_card_2).card_face = image1
	get_node(pair_1_card_2).card_name = name_image1
	
	get_node(pair_2_card_1).card_face = image2
	get_node(pair_2_card_1).card_name = name_image2
	get_node(pair_2_card_2).card_face = image2
	get_node(pair_2_card_2).card_name = name_image2
	
	get_node(pair_3_card_1).card_face = image3
	get_node(pair_3_card_1).card_name = name_image3
	get_node(pair_3_card_2).card_face = image3
	get_node(pair_3_card_2).card_name = name_image3
	
	get_node(pair_4_card_1).card_face = image4
	get_node(pair_4_card_1).card_name = name_image4
	get_node(pair_4_card_2).card_face = image4
	get_node(pair_4_card_2).card_name = name_image4
	
	get_node(pair_5_card_1).card_face = image5
	get_node(pair_5_card_1).card_name = name_image5
	get_node(pair_5_card_2).card_face = image5
	get_node(pair_5_card_2).card_name = name_image5
	
	get_node(pair_6_card_1).card_face = image6
	get_node(pair_6_card_1).card_name = name_image6
	get_node(pair_6_card_2).card_face = image6
	get_node(pair_6_card_2).card_name = name_image6
	
	get_node(pair_7_card_1).card_face = image7
	get_node(pair_7_card_1).card_name = name_image7
	get_node(pair_7_card_2).card_face = image7
	get_node(pair_7_card_2).card_name = name_image7
	
	get_node(pair_8_card_1).card_face = image8
	get_node(pair_8_card_1).card_name = name_image8
	get_node(pair_8_card_2).card_face = image8
	get_node(pair_8_card_2).card_name = name_image8
	
	get_node(pair_9_card_1).card_face = image9
	get_node(pair_9_card_1).card_name = name_image9
	get_node(pair_9_card_2).card_face = image9
	get_node(pair_9_card_2).card_name = name_image9
	
	get_node(pair_10_card_1).card_face = image10
	get_node(pair_10_card_1).card_name = name_image10
	get_node(pair_10_card_2).card_face = image10
	get_node(pair_10_card_2).card_name = name_image10
	
	get_node(pair_11_card_1).card_face = image11
	get_node(pair_11_card_1).card_name = name_image11
	get_node(pair_11_card_2).card_face = image11
	get_node(pair_11_card_2).card_name = name_image11
	
	get_node(pair_12_card_1).card_face = image12
	get_node(pair_12_card_1).card_name = name_image12
	get_node(pair_12_card_2).card_face = image12
	get_node(pair_12_card_2).card_name = name_image12
	
	init = true

func _check_if_pair():
	if get_node("CardOneName").text == get_node("CardTwoName").text:
		last_try_was_pair = true
		number_of_matches += 1
		get_node("correct_audio").play()
		get_node("NumberOfMatches").text = "Número de acertos: " + String(number_of_matches)
	if get_node("CardOneName").text != "Card 1" && get_node("CardTwoName").text != "Card 2":
		if get_node("CardOneName").text != get_node("CardTwoName").text:
			_disable_all_cards_clicks()
			var waiting_timer = Timer.new()
			waiting_timer.set_wait_time(0.5)
			waiting_timer.set_one_shot(true)
			self.add_child(waiting_timer)
			waiting_timer.start()
			yield(waiting_timer, "timeout")
			_reset_card_name_strings_and_check_box()
			_turn_around_cards()
			_enable_all_cards_clicks()
	if number_of_matches == 12:
		get_node("win_color").show()
		get_node("button_animation").play("parabens")
		get_node("Parabens").show()
		get_node("winning_fireworks").show()
		get_node("you_win").play()
		get_node("/root/OST").stop()
		var waiting_timer3 = Timer.new()
		waiting_timer3.set_wait_time(1)
		waiting_timer3.set_one_shot(true)
		self.add_child(waiting_timer3)
		waiting_timer3.start()
		yield(waiting_timer3, "timeout")
		var waiting_timer2 = Timer.new()
		waiting_timer2.set_wait_time(3.5)
		waiting_timer2.set_one_shot(true)
		self.add_child(waiting_timer2)
		waiting_timer2.start()
		yield(waiting_timer2, "timeout")
		_check_complete_game()

func _reset_card_name_strings_and_check_box():
	get_node("CardOneName").text = card_one_string
	get_node("CardTwoName").text = card_two_string

func _turn_around_cards():
	get_node(card_one_checked_if_pairing).get_node("Sprite").texture = default_image
	get_node(card_two_checked_if_pairing).get_node("Sprite").texture = default_image

func _disable_all_cards_clicks():
	get_node("Card1").click_enabled = false
	get_node("Card2").click_enabled = false
	get_node("Card3").click_enabled = false
	get_node("Card4").click_enabled = false
	get_node("Card5").click_enabled = false
	get_node("Card6").click_enabled = false
	get_node("Card7").click_enabled = false
	get_node("Card8").click_enabled = false
	get_node("Card9").click_enabled = false
	get_node("Card10").click_enabled = false
	get_node("Card11").click_enabled = false
	get_node("Card12").click_enabled = false
	get_node("Card13").click_enabled = false
	get_node("Card14").click_enabled = false
	get_node("Card15").click_enabled = false
	get_node("Card16").click_enabled = false
	get_node("Card17").click_enabled = false
	get_node("Card18").click_enabled = false
	get_node("Card19").click_enabled = false
	get_node("Card20").click_enabled = false
	get_node("Card21").click_enabled = false
	get_node("Card22").click_enabled = false
	get_node("Card23").click_enabled = false
	get_node("Card24").click_enabled = false

func _enable_all_cards_clicks():
	if get_node("Card1").get_node("Sprite").texture == default_image:
		get_node("Card1").click_enabled = true
	if get_node("Card2").get_node("Sprite").texture == default_image:
		get_node("Card2").click_enabled = true
	if get_node("Card3").get_node("Sprite").texture == default_image:
		get_node("Card3").click_enabled = true
	if get_node("Card4").get_node("Sprite").texture == default_image:
		get_node("Card4").click_enabled = true
	if get_node("Card5").get_node("Sprite").texture == default_image:
		get_node("Card5").click_enabled = true
	if get_node("Card6").get_node("Sprite").texture == default_image:
		get_node("Card6").click_enabled = true
	if get_node("Card7").get_node("Sprite").texture == default_image:
		get_node("Card7").click_enabled = true
	if get_node("Card8").get_node("Sprite").texture == default_image:
		get_node("Card8").click_enabled = true
	if get_node("Card9").get_node("Sprite").texture == default_image:
		get_node("Card9").click_enabled = true
	if get_node("Card10").get_node("Sprite").texture == default_image:
		get_node("Card10").click_enabled = true
	if get_node("Card11").get_node("Sprite").texture == default_image:
		get_node("Card11").click_enabled = true
	if get_node("Card12").get_node("Sprite").texture == default_image:
		get_node("Card12").click_enabled = true
	if get_node("Card13").get_node("Sprite").texture == default_image:
		get_node("Card13").click_enabled = true
	if get_node("Card14").get_node("Sprite").texture == default_image:
		get_node("Card14").click_enabled = true
	if get_node("Card15").get_node("Sprite").texture == default_image:
		get_node("Card15").click_enabled = true
	if get_node("Card16").get_node("Sprite").texture == default_image:
		get_node("Card16").click_enabled = true
	if get_node("Card17").get_node("Sprite").texture == default_image:
		get_node("Card17").click_enabled = true
	if get_node("Card18").get_node("Sprite").texture == default_image:
		get_node("Card18").click_enabled = true
	if get_node("Card19").get_node("Sprite").texture == default_image:
		get_node("Card19").click_enabled = true
	if get_node("Card20").get_node("Sprite").texture == default_image:
		get_node("Card20").click_enabled = true
	if get_node("Card21").get_node("Sprite").texture == default_image:
		get_node("Card21").click_enabled = true
	if get_node("Card22").get_node("Sprite").texture == default_image:
		get_node("Card22").click_enabled = true
	if get_node("Card23").get_node("Sprite").texture == default_image:
		get_node("Card23").click_enabled = true
	if get_node("Card24").get_node("Sprite").texture == default_image:
		get_node("Card24").click_enabled = true

func _on_BackToMenuButton_button_down():
	get_node("Click_mouse").play()
	get_node("button_animation").play("botao_voltar")
	var waiting_timer = Timer.new()
	waiting_timer.set_wait_time(0.3)
	waiting_timer.set_one_shot(true)
	self.add_child(waiting_timer)
	waiting_timer.start()
	yield(waiting_timer, "timeout")
func _on_Click_mouse_finished():
	get_tree().reload_current_scene()

func _check_complete_game():
	get_tree().reload_current_scene()
	_shuffle_cards()