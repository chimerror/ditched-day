"Ditched Day" by Jason Mitchell

Part 1 - Rules

A person can be either male or female.

Part 2 - Game World

Steam Tunnels Entryway is a room.

The player is male.

The strange device is a portable thing. The player carries the strange device.

The gender button is part of the strange device. 

Instead of pushing the gender button:
	say "There is an odd flash as you press the button.";
	if the player is male: 
		now the player is female;
	otherwise:
		now the player is male.
	
Instead of examining the player when the player is male:
	say "As handsome a gentleman as you've ever been."
	
Instead of examining the player when the player is female:
	say "As pretty a lady as you've ever been."

Part 3 - Tests - Not for release

test gender with "x me / push gender button / x me"