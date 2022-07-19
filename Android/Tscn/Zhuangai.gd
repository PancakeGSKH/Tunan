extends Node2D

var random = RandomNumberGenerator.new()
var n1
var n2
var n3
var n4
var n5

func zhangai(n,ad):
	if n == 1:
		get_node(ad+"/Fire").visible = true
	elif n == 2:
		get_node(ad+"/Mount").visible = true
	elif n == 3:
		get_node(ad+"/Leidian").visible = true
	elif n == 4:
		get_node(ad+"/Tree").visible = true
	elif n == 5:
		get_node(ad+"/Stone").visible = true

func wang():
	get_node("../Cam/Label").text = "0"
	get_node("../Cam/Wang").visible = true

func _ready():
	random.randomize()
	
	n1 = random.randi_range(1,5)
	get_node("ZA1/Label").text = str(n1)
	n2 = random.randi_range(1,5)
	get_node("ZA2/Label").text = str(n2)
	n3 = random.randi_range(1,5)
	get_node("ZA3/Label").text = str(n3)
	n4 = random.randi_range(1,5)
	get_node("ZA4/Label").text = str(n4)
	n5 = random.randi_range(1,5)
	get_node("ZA5/Label").text = str(n5)
	
	
	zhangai(n1,"ZA1")
	zhangai(n2,"ZA2")
	zhangai(n3,"ZA3")
	zhangai(n4,"ZA4")
	zhangai(n5,"ZA5")

func _on_ZA1_enter():
	wang()
func _on_ZA2_enter():
	wang()
func _on_ZA3_enter():
	wang()
func _on_ZA4_enter():
	wang()
func _on_ZA5_enter():
	wang()
