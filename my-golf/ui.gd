extends CanvasLayer

@onready var power_bar = $MarginContainer/VBoxContainer/PowerBar
@onready var shots = $MarginContainer/VBoxContainer/Shots

var bar_textures = {
	"green": preload("res://assets/bar_green.png"),
	"yellow": preload("res://assets/bar_yellow.png"),
	"red": preload("res://assets/bar_red.png")
}

func update_shots(value):
	shots.text = "Shots: %s" % value
	
	
func update_power_bar(value):
	power_bar.texture_progress = bar_textures["green"]
	if value > 70:
		power_bar.texture_progress = bar_textures["red"]
	elif value > 40:
		power_bar.texture_progress = bar_textures["yellow"]
	power_bar.value = value
	
	
func show_message(text):
	$Message.text = text
	$Message.show()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
