extends Node

const ANFRAYL_GRATATA_LOG_NAME := "AnfrayL-Gratata:Overwrites"

var alien_names=["baby_alien","bruiser","buffer","charger","chaser","fin-alien","fly","healer","helmet_alien","horned_bruiser","horned_charger","junkie","lamprey","looter","pursuer","slasher","slasher_egg","spawner","spitter","tentacle"]
func _init() -> void: 
	ModLoaderLog.info("Ready to overwrite!", ANFRAYL_GRATATA_LOG_NAME)
	
	var overwrite
	# baby_alien
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/baby_alien/baby_alien.png")
	overwrite.take_over_path("res://entities/units/enemies/baby_alien/baby_alien.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/baby_alien/baby_alien_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/baby_alien/baby_alien-icon.png")

	# bruiser
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/bruiser/bruiser.png")
	overwrite.take_over_path("res://entities/units/enemies/bruiser/bruiser.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/bruiser/bruiser_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/bruiser/bruiser-icon.png")

	# buffer
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/buffer/buffer.png")
	overwrite.take_over_path("res://entities/units/enemies/buffer/buffer.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/buffer/buffer_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/buffer/buffer-icon.png")

	# charger
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/charger/charger.png")
	overwrite.take_over_path("res://entities/units/enemies/charger/charger.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/charger/charger_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/charger/charger-icon.png")

	# chaser
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/chaser/chaser.png")
	overwrite.take_over_path("res://entities/units/enemies/chaser/chaser.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/chaser/chaser_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/chaser/chaser-icon.png")

	# fin-alien
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/fin_alien/fin_alien.png")
	overwrite.take_over_path("res://entities/units/enemies/fin_alien/fin_alien.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/fin_alien/fin_alien_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/fin_alien/fin_alien-icon.png")

	# fly
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/fly/fly.png")
	overwrite.take_over_path("res://entities/units/enemies/fly/fly.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/fly/fly_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/fly/fly-icon.png")

	# healer
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/healer/healer.png")
	overwrite.take_over_path("res://entities/units/enemies/healer/healer.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/healer/healer_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/healer/healer-icon.png")

	# helmet_alien
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/helmet_alien/helmet_alien.png")
	overwrite.take_over_path("res://entities/units/enemies/helmet_alien/helmet_alien.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/helmet_alien/helmet_alien_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/helmet_alien/helmet_alien-icon.png")

	# horned_bruiser
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/horned_bruiser/horned_bruiser.png")
	overwrite.take_over_path("res://entities/units/enemies/horned_bruiser/horned_bruiser.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/horned_bruiser/horned_bruiser_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/horned_bruiser/horned_bruiser-icon.png")

	# horned_charger
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/horned_charger/horned_charger.png")
	overwrite.take_over_path("res://entities/units/enemies/horned_charger/horned_charger.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/horned_charger/horned_charger_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/horned_charger/horned_charger-icon.png")

	# junkie
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/junkie/junkie.png")
	overwrite.take_over_path("res://entities/units/enemies/junkie/junkie.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/junkie/junkie_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/junkie/junkie-icon.png")

	# lamprey
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/lamprey/lamprey.png")
	overwrite.take_over_path("res://entities/units/enemies/lamprey/lamprey.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/lamprey/lamprey_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/lamprey/lamprey-icon.png")

	# looter
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/looter/looter.png")
	overwrite.take_over_path("res://entities/units/enemies/looter/looter.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/looter/looter_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/looter/looter-icon.png")

	# slasher
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/slasher/slasher.png")
	overwrite.take_over_path("res://entities/units/enemies/slasher/slasher.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/slasher/slasher_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/slasher/slasher-icon.png")

	# slasher_egg
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/slasher_egg/slasher_egg.png")
	overwrite.take_over_path("res://entities/units/enemies/slasher_egg/slasher_egg.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/slasher_egg/slasher_egg_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/slasher_egg/slasher_egg-icon.png")

	# spawner
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/spawner/spawner.png")
	overwrite.take_over_path("res://entities/units/enemies/spawner/spawner.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/spawner/spawner_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/spawner/spawner-icon.png")

	# spitter
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/spitter/spitter.png")
	overwrite.take_over_path("res://entities/units/enemies/spitter/spitter.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/spitter/spitter_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/spitter/spitter-icon.png")

	# tentacle
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/tentacle/tentacle.png")
	overwrite.take_over_path("res://entities/units/enemies/tentacle/tentacle.png")
	overwrite = preload("res://mods-unpacked/AnfrayL-Gratata/overwrites/entities/units/enemies/tentacle/tentacle_icon.png")
	overwrite.take_over_path("res://entities/units/enemies/tentacle/tentacle-icon.png")

	ModLoaderLog.info("Finished overwriting", ANFRAYL_GRATATA_LOG_NAME)
