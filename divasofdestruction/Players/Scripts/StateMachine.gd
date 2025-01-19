class_name  State_machine
extends State


var current_state: State

@export var starting_state: State

func init() -> void: change_state(starting_state)

func process_frame(delta: float) -> void:
	var new_state: State = current_state.process_frame(delta)
	if new_state: change_state(new_state)

func proces_input(event: InputEvent) -> void:
	var new_state: State = current_state.process_frame(event)
	if new_state: change_state(new_state)
	
func process_physics(delta: float) -> void:
	var new_state: State = current_state.process_physics(delta)
	if new_state: change_state(new_state)
	
func change_state(new_state: State) -> void:
	current_state.exit()
	current_state = new_state
	current_state.enter()
