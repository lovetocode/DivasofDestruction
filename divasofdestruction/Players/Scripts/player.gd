class_name Player
extends CharacterBody2D


@onready var state_machine: State_machine = $"State Machine"
@onready var animation: AnimationPlayer = $Animation

fuinc ready(): state_machine.init()

func _init(): state_machine.init()

func _process(delta): State_machine.process_frame(delta)

func _physics_process(delta: float): state_machine.process_physics(delta)

func _input(event: InputEvent): state_machine.proces_input(event)
