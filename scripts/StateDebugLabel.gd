extends Label

@export var state_machine : CharacterSatetMachine


# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	text = "State : " + state_machine.current_state.name
