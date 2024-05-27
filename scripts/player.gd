extends CharacterBody2D

@export var speed: float = 200.0
@onready var sprite : Sprite2D = $Sprite2D
@onready var animation_tree : AnimationTree = $AnimationTree
@onready var state_machine : CharacterSatetMachine = $CharacterStateMachine
@onready var runSFX = $RunningSFX

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var direction : Vector2 = Vector2.ZERO
var cheat_key : Array = []

const CHEAT_SEQUENCE = [
	"KEY_C", "KEY_H", "KEY_E",
	"KEY_A", "KEY_T"
]

func _ready():
	animation_tree.active = true

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	direction = Input.get_vector("left", "right", "up", "down")
	if direction.x != 0 and state_machine.check_if_can_move():
		velocity.x = direction.x * speed
		if (!runSFX.playing):
			runSFX.play()
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		runSFX.stop()
	
	move_and_slide()
	update_animation_parameter()
	update_facing_direction()
	

func update_animation_parameter():
	animation_tree.set("parameters/Move/blend_position", direction.x)

func update_facing_direction():
	if direction.x > 0:
		sprite.flip_h = false
	if direction.x < 0:
		sprite.flip_h = true

func check_cheat():
	var code_length = cheat_key.size()
	var desired_length = CHEAT_SEQUENCE.size()
	
	if code_length > desired_length:
		cheat_key.remove_at(0)
	
	if cheat_key == CHEAT_SEQUENCE:
		print("Cheat Detected")
		cheat_key.clear()
