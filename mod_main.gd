extends Node

const ANFRAYL_GRATATA_DIR := "AnfrayL-Gratata"
const ANFRAYL_GRATATA_LOG_NAME := "AnfrayL-Gratata:Main"

var mod_dir_path := ""
var extensions_dir_path := ""
var translations_dir_path := ""

# Before v6.1.0
# func _init(modLoader = ModLoader) -> void:
func _init() -> void:
	mod_dir_path = ModLoaderMod.get_unpacked_dir().plus_file(ANFRAYL_GRATATA_DIR)
	# Add extensions
	install_script_extensions()
	# Add translations
	add_translations()


func install_script_extensions() -> void:
	extensions_dir_path = mod_dir_path.plus_file("extensions")
	#ModLoaderMod.install_script_extension(
	#	extensions_dir_path.plus_file("entities/units/movement_behaviors/player_movement_behavior.gd")
	#	)
	#ModLoaderMod.install_script_extension(
	#	extensions_dir_path.plus_file("entities/units/player/player.gd")
	#	)
	#	ModLoaderMod.install_script_extension("res://mods-unpacked/AnfrayL-Gratata/entities/units/movement_behaviors/player_movement_behavior.gd")
	# ModLoaderMod.install_script_extension(extensions_dir_path.plus_file(...))


func add_translations() -> void:
	translations_dir_path = mod_dir_path.plus_file("translations")
	# ModLoaderMod.add_translation(translations_dir_path.plus_file(...))


func _ready() -> void:
	ModLoaderLog.info("Ready!", ANFRAYL_GRATATA_LOG_NAME)
