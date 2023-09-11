extends ParallaxBackground
#tchan nan!

@export var scroll_speed = 15

@export var bg_texture: CompressedTexture2D = preload("res://assets/textures/bg/Blue.png")

@onready var sprite_2d = $ParallaxLayer/Sprite2D

@onready var sprite = $ParallaxLayer/Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	sprite_2d.region_rect.position += delta * Vector2(scroll_speed, scroll_speed)
	if sprite_2d.region_rect.position >= Vector2(64,64):
		sprite_2d.region_rect.position = Vector2.ZERO
