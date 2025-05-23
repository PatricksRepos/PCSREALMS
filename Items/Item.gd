extends Node
class_name Item

@export var item_name: String = ""
@export var icon: Texture2D
@export var is_stackable: bool = false

func _ready():
	add_to_group("items")
	if item_name.strip_edges() == "":
		item_name = "Item"  # Default name if none provided.
	self.name = item_name
