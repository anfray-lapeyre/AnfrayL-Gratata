extends Player

const ANFRAYL_GRATATA_LOG_NAME := "AnfrayL-Gratata:Player"

export (Array, Resource) var dash_sounds

onready var _dash_timer: Timer = $DashTimer
onready var _dash_invincibility_timer: Timer = $DashInvincibilityTimer

var _can_dash: bool=true
var _dashing:bool = false
var _dash_speed :float = 1200.0
var _last_move: Vector2 = Vector2.RIGHT
var dash_smoke : CPUParticles2D 
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void: 
	ModLoaderLog.info("Gratata Player Override", ANFRAYL_GRATATA_LOG_NAME)
	dash_smoke = get_node("DashSmoke")
	
func get_dash() -> bool:
	if _current_movement_behavior is PlayerMovementBehavior:
		return _current_movement_behavior.get_dash()
	return false


func _physics_process(delta: float) -> void :
	._physics_process(delta)
	
	var dash = get_dash()
	if (dash and _can_dash):
		dash()


func dash() -> void :
	_can_dash = false
	_dash_timer.start()
	_dash_invincibility_timer.start()
	SoundManager.play(Utils.get_rand_element(step_sounds), 5, 0.1)
	SoundManager.play(Utils.get_rand_element(step_sounds), 5, 0.1)
	SoundManager.play(Utils.get_rand_element(step_sounds), 5, 0.1)
	disable_hurtbox()
	_dashing = true
	dash_smoke.restart()



func get_next_velocity() -> Vector2:
	if (not _dashing):
		var move_input: = get_move_input()
		var velocity: = move_input + get_next_knockback_value()
		return velocity
	else:
		return _last_move.normalized() * _dash_speed

func reset_rotation() -> void :
	_animation.rotation = 0


func update_animation(movement: Vector2) -> void :
	if ( not (movement.x == 0 and movement.y == 0) and not _dashing):
		_last_move = movement
		
	check_not_moving_stats(movement)
	check_moving_stats(movement)

	if (_dashing):
		if sprite.scale.x > 0:
			_animation.rotation = (_dash_invincibility_timer.time_left / _dash_invincibility_timer.wait_time) * deg2rad(360) * 1
		else:
			_animation.rotation = (_dash_invincibility_timer.time_left / _dash_invincibility_timer.wait_time) * deg2rad(360) * - 1
			
	if movement.x > 0:
		_shadow.scale.x = abs(_shadow.scale.x)
		for sprite in _sprites:
			sprite.scale.x = abs(sprite.scale.x)
	elif movement.x < 0:
		_shadow.scale.x = - abs(_shadow.scale.x)
		for sprite in _sprites:
			sprite.scale.x = - abs(sprite.scale.x)

	if _animation_player.current_animation == "idle":
		_animation_player.playback_speed = 1
	elif _animation_player.current_animation == "move":
		_animation_player.playback_speed = get_move_speed() / stats.speed

	if _animation_player.current_animation == "idle" and movement != Vector2.ZERO:
		_animation_player.play("move")
		_running_smoke.emit()
	elif _animation_player.current_animation == "move" and movement == Vector2.ZERO:
		_animation_player.play("idle")
		_running_smoke.stop()




func _on_DashTimer_timeout():
	_can_dash = true




func _on_DashInvincibilityTimer_timeout():
	enable_hurtbox()
	_dashing = false
	reset_rotation()
	SoundManager.play(Utils.get_rand_element(step_sounds), 5, 0.1)
