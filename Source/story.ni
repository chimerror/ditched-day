"Ditched Day" by Jason Mitchell

Part 1 - Rules

Species is a kind of value. The species are human and merfolk.

A person has a species. A person is usually human.

Instead of going up when the player is human:
	say "It's too high to jump, and you don't see anything to climb up."
	
Instead of going down when the player is human:
	say "You're too high up, and you don't see anything to climb down."
	
Report going up when the player is merfolk:
	say "You swim upwards[if the room gone to is visited] to the [room gone to][end if]."
	
Report going down when the player is merfolk:
	say "You swim downwards[if the room gone to is visited] to the [room gone to][end if]."

Part 2 - Game World

Steam Tunnels Entryway is a room.

The Dark Alcove is above the Steam Tunnels Entryway.

The Light Alcove is below the Steam Tunnels Entryway.

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

Switching player gender is an action applying to nothing.
Understand "switch-gender" as switching player gender.
Carry out switching player gender:
	If the player is male:
		now the player is female;
	Otherwise:
		now the player is male.
Report switching player gender: say "You decide life as the other gender would be better."

Setting player species is an action applying to one species.
Understand "set-my-species-to [species]" as setting player species.
Carry out setting player species: now the player is the species understood.
Report setting player species: say "You decide life would be better as a [the species understood]."

test gender with "x me / push gender button / x me / push gender button / x me".
test merfolk with "x me / up / down / push species button / x me / push gender button / x me / up / down / down / up".
test sps with "set-my-species-to human / x me / set-my-species-to merfolk / x me".
test spg with "switch-gender / x me / switch-gender / x me".