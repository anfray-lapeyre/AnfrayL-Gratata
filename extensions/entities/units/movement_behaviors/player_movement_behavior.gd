extends "res://entities/units/movement_behaviors/player_movement_behavior.gd"


const ANFRAYL_GRATATA_DIR := "AnfrayL-Gratata"
const ANFRAYL_GRATATA_LOG_NAME := "AnfrayL-Gratata:Movement"


# Called when the node enters the scene tree for the first time.
func _ready():
	ModLoaderLog.info("Input dash is going to be setup !", ANFRAYL_GRATATA_LOG_NAME)
	if not InputMap.has_action("dash"):
		InputMap.add_action("dash")
	var ev = InputEventKey.new()
	ev.scancode = KEY_SPACE
	InputMap.action_add_event("dash", ev)
	ev = InputEventKey.new()
	ev.scancode = JOY_SONY_X
	InputMap.action_add_event("dash", ev)
	ev = InputEventKey.new()
	ev.scancode = JOY_XBOX_A
	InputMap.action_add_event("dash", ev)



func get_dash() -> bool:
	var dash: bool = false
	if RunData.is_coop_run:
		dash = Input.is_action_just_pressed(
			"dash_%s" % device
		)
	else:
		dash = Input.is_action_just_pressed(
			"dash"
		)
	return dash
