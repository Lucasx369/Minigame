extends ParallaxBackground

#Variável de referencia a textura de background que terá como referencia background text
onready var background_texture: TextureRect = get_node("Background/TextureRect")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export(int) var scenario_speed
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _physics_process(delta: float) -> void:
	for children in get_children():
		if children is ParallaxLayer:
			children.motion_offset.y -= scenario_speed * delta
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
