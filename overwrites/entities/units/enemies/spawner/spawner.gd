extends "res://entities/units/enemies/spawner/spawner.gd"

const eggs = preload("res://mods-unpacked/AnfrayL-Gratata/extensions/particles/eggs_spawning.tscn")
var baby_spawn_sounds = [preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/spawner/Baby_spawn/baby_spawn1.mp3"),preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/spawner/Baby_spawn/baby_spawn2.mp3")]

func die(args: = Utils.default_die_args) -> void :
	.die(args)


	var particles = eggs.instance()
	get_parent().add_child(particles)
	particles.position = global_position
	particles.emitting = true
	SoundManager.play(Utils.get_rand_element(baby_spawn_sounds), 3, 0.1)
	SoundManager.play(Utils.get_rand_element(baby_spawn_sounds), 3, 0.1)

