"Ditched Day" by Jason Mitchell

Part 1 - Rules

Species is a kind of value. The species are human and merfolk.

A person has a species. A person is usually human.

Part 2 - Game World

Steam Tunnels Entryway is a room.

The strange device is a portable thing. The player carries the strange device.

The gender button is part of the strange device. 

The species button is part of the strange device.

Instead of pushing the gender button:
	say "There is an odd flash as you press the button.";
	if the player is male: 
		now the player is female;
	otherwise:
		now the player is male.
		
Instead of pushing the species button:
	say "There is an odd flash as you press the button.";
	if the player is human:
		now the player is merfolk;
	otherwise:
		now the player is human.
	
Instead of examining the player when the player is male and the player is human:
	say "As handsome a gentleman as you've ever been. An ex said your butt is your best feature."
	
Instead of examining the player when the player is female and the player is human:
	say "As pretty a lady as you've ever been. An ex said your legs are your best feature."
	
Instead of examining the player when the player is male and the player is merfolk:
	say "As handsome a gentleman as you've ever been. An ex said the dark scales of your tail were most fetching."
	
Instead of examining the player when the player is female and the player is merfolk:
	say "As pretty a lady as you've ever been. An ex said your translucent fins were most fetching."

Part 3 - Tests - Not for release

test gender with "x me / push gender button / x me / push gender button / x me".
test merfolk with "x me / push species button / x me / push gender button / x me".