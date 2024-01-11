extends Node2D

var expression = Expression.new()
var calcString = ""
@onready var oldExpression = $expressionOld
@onready var currentExpression = $currentExpression

func _ready():
	oldExpression.text = ""
	currentExpression.text = ""
	expression.parse("20*4")

func _process(delta):
	currentExpression.text = currentExpression.text
	oldExpression.text = oldExpression.text

func _on_0_pressed():
	calcString += "0"
	currentExpression.text = calcString

func _on_1_pressed():
	calcString += "1"
	currentExpression.text = calcString

func _on_2_pressed():
	calcString += "2"
	currentExpression.text = calcString

func _on_3_pressed():
	calcString += "3"
	currentExpression.text = calcString

func _on_4_pressed():
	calcString += "4"
	currentExpression.text = calcString

func _on_5_pressed():
	calcString += "5"
	currentExpression.text = calcString

func _on_6_pressed():
	calcString += "6"
	currentExpression.text = calcString

func _on_7_pressed():
	calcString += "7"
	currentExpression.text = calcString

func _on_8_pressed():
	calcString += "8"
	currentExpression.text = calcString

func _on_9_pressed():
	calcString += "9"
	currentExpression.text = calcString

func _on_dec_pressed():
	calcString += "."
	currentExpression.text = calcString

func _on_div_pressed():
	calcString += "/"
	currentExpression.text = calcString

func _on_x_pressed():
	calcString += "*"
	currentExpression.text = calcString

func _on_min_pressed():
	calcString += "-"
	currentExpression.text = calcString

func _on_add_pressed():
	calcString += "+"
	currentExpression.text = calcString

func _on_eq_pressed():
	oldExpression.text = currentExpression.text
	expression.parse(calcString)
	var result = expression.execute()
	expression = Expression.new()
	if result == null:
		oldExpression.text = "Error"
		currentExpression.text = "Screen Cleared"
		calcString = ""
	elif result != null:
		expression.parse(str(result))
		calcString = str(result)
		currentExpression.text = str(result)


func _on_clear_pressed():
	expression = Expression.new()
	oldExpression.text = ""
	currentExpression.text = ""
