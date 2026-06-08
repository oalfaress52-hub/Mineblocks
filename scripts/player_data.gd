extends Node

# --- MINEBLOCKS PLAYER DATA SYSTEM ---
# Phase 1: The Data Buffer (12-Slot Hotbar Activity)

# A fixed array of 12 slots holding 32-bit integer of IDs.
# Each ID points directly to our global block registry.
var hotbar: PackedInt32Array = []

func _ready() -> void:
	# 1. Resize the array to hold exactly 12 slots
	hotbar.resize(12)
	
	# 2. Fill every slot with 0 (0 represents an empty slot)
	hotbar.fill(0)
	
	# 3. Print it to the console to verify the raw memory buffer is active
	print("Mineblocks Player Hotbar Data Buffer Initialized: ", hotbar)
