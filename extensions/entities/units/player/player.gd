extends Player

const ANFRAYL_GRATATA_LOG_NAME := "AnfrayL-Gratata:Player"

onready var _dash_timer: Timer = $DashTimer
onready var _dash_invincibility_timer: Timer = $DashInvincibilityTimer

var _can_dash: bool=true
var _dashing:bool = false
var _dash_speed :float = 1200.0
var _last_move: Vector2 = Vector2.RIGHT

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void: 
	ModLoaderLog.info("BONJOUR", ANFRAYL_GRATATA_LOG_NAME)
	.super()
	print("BONJOUR")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
