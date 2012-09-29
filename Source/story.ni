"Ditched Day" by Jason Mitchell

Book I - Rules

Part A - General

Use American dialect. Use serial comma. Use full-length room descriptions.

Part B - Species

Chapter 1 - Species Definition

Species is a kind of value. The species are human, batfolk, and merfolk.

Understand "bat" as batfolk. Understand "mer" as merfolk.

A person has a species. A person is usually human.

Chapter 2 - Human Rules

Section i - Going Up and Down

Instead of going up when the player is human:
	say "It's too high to jump, and you don't see anything to climb up."

Instead of going down when the player is human:
	say "You're too high up, and you don't see anything to climb down."

Chapter 3 - Merfolk Rules

Section i - Going Up and Down

Report going up when the player is merfolk:
	say "You swim up."

Report going down when the player is merfolk:
	say "You swim down."

Chapter 4 - Batfolk Rules

Section i - Going Up and Down

Report going up when the player is batfolk:
	say "You fly up."

Report going down when the player is batfolk:
	say "You fly down."

Section ii - Echolocation

Echolocating is an action applying to nothing.
Understand "echolocate" or "echo" or "squeak" as echolocating.
Instead of echolocating when the player is not batfolk:
	say "You wish you could."
Instead of echolocating when the player is batfolk and the location is lit:
	say "There's no point, you can see fine."
Report echolocating:
	say "You let out a few sharp sounds to get the lay of the room.[paragraph break][echolocation room exits]"

To say echolocation room exits:
	let exits be a list of directions;
	repeat with way running through directions:
		let place be the room way from the location;
		if the place is a room, add way to exits;
	let exit count be the number of entries in exits;
	if exit count is 0:
		say "There doesn't seem to be any way to proceed from this room.";
	otherwise if exit count is 1:
		say "The only way out of this room is [exits].";
	otherwise:
		say "You can leave this room to [exits with definite articles].".

Rule for printing the description of a dark room when the player is batfolk:
	say "(echolocating)[command clarification break][echolocation room exits]";
	now the location is visited.

Rule for printing the name of a dark room when the player is batfolk:
	say Location.

test echo with "set-my-species-to batfolk / echolocate / u / echo / d / n / n / squeak / gonear impossible" in the Steam Tunnels Entryway.

Book II - Game World

Part A - Rooms

Steam Tunnels Entryway is a room. "This is the best place you know of to enter the steam tunnels that run under the campus. It requires the least number of keys and squeezing through tight spaces to get here. Because of this, it's a popular place to go, and the walls are covered in grafitti.

The steam tunnels start to the north, in the room nicknamed 'The Foyer'. There is a dark alcove up above you and a lit one down below, but oddly, no ladders or stairs to reach them."

The flashlight is in the Steam Tunnels Entryway. "A bright LED flashlight lies here on the ground." The flashlight is lit. Understand "light" as the flashlight.

Instead of examining the flashlight:
	say "It seems like the switch is stuck in the ON position. You hope the batteries hold."

The Dark Alcove is above the Steam Tunnels Entryway. "There is not much here besides pipes." The Dark Alcove is dark.

The Lit Alcove is below the Steam Tunnels Entryway. "You don't find much here besides pipes."

The Foyer is north of the Steam Tunnels Entryway. "This room is nicknamed 'The Foyer', as it is considered the first room proper of the steam tunnels. The main entryway is to the south, and the tunnels continue to the north." The Foyer is dark.

The T-Junction is north of the Foyer. "The tunnels stretch east and west here, and you can go the way you came, back to the south." The T-Junction is dark.

The First Dead End is west of the T-Junction. "Just a dead end." The First Dead End is dark.

The Second Dead End is east of the T-Junction. "Huh, a dead end. You'll have to turn around." The Second Dead End is dark.

The Impossible Place is a room. "You're not sure how you ended up here, but you quickly realize that there is nothing but concrete walls all around you in every direction!" The Impossible Place is dark.

Part B - Items

Chapter 1 - The Strange Device

Section i - Definition

The strange device is a portable thing. "You found this strange device in Surjeet's room. You're not quite sure what it does, but there are buttons marked 'gender', 'human', 'merfolk', and 'batfolk'. They beckon you to press them."  The player carries the strange device.

The gender button is part of the strange device.

Instead of pushing the gender button:
	say "There is an odd flash as you press the button.";
	if the player is male:
		now the player is female;
	otherwise:
		now the player is male.

The human button is part of the strange device.

Instead of pushing the human button when the player is human, say "The button goes click, but nothing happens."

Instead of pushing the human button:
	say "There is an odd flash as you press the button.";
	now the player is human.

The merfolk button is part of the strange device. Understand "mer" as the merfolk button.

Instead of pushing the merfolk button when the player is merfolk, say "The button goes click, but nothing happens."

Instead of pushing the merfolk button:
	say "There is an odd flash as you press the button.";
	now the player is merfolk.

The batfolk button is part of the strange device. Understand "bat" as the batfolk button.

Instead of pushing the batfolk button when the player is batfolk, say "The button goes click, but nothing happens."

Instead of pushing the batfolk button:
	say "There is an odd flash as you press the button.";
	now the player is batfolk.

Section ii - Tests

test gender with "set-my-species-to human / x me / push gender button / x me / push gender button / x me".
test human with "set-my-species-to human / up / down / push human button" in the Steam Tunnels Entryway.
test merfolk with "push merfolk button / push merfolk button / x me / push gender button / x me / up / down / down / up / push human button / x me / push merfolk button / push batfolk button / x me" in the Steam Tunnels Entryway.
test batfolk with "push batfolk button / push batfolk button / x me / push gender button / x me / up / down / down / up / push human button / x me / push batfolk button / push merfolk button / x me" in the Steam Tunnels Entryway.

Part C - Actors

Chapter 1 - The Player

Instead of examining the player when the player is male and the player is human:
	say "As handsome a gentleman as you've ever been. An ex said your butt is your best feature."

Instead of examining the player when the player is female and the player is human:
	say "As pretty a lady as you've ever been. An ex said your legs are your best feature."

Instead of examining the player when the player is male and the player is merfolk:
	say "As handsome a gentleman as you've ever been. An ex said the dark scales of your tail were most fetching."

Instead of examining the player when the player is female and the player is merfolk:
	say "As pretty a lady as you've ever been. An ex said the irridescent scales of your tail were most fetching."

Instead of examining the player when the player is male and the player is batfolk:
	say "As handsome a gentleman as you've ever been. An ex said your broad wings were most fetching."

Instead of examining the player when the player is female and the player is batfolk:
	say "As pretty a lady as you've ever been. An ex said your slender wings were most fetching."

Book III - Test Methods - Not for release

Part A - Switch Player Gender

Switching player gender is an action applying to nothing.
Understand "switch-gender" as switching player gender.
Carry out switching player gender:
	If the player is male:
		now the player is female;
	Otherwise:
		now the player is male.
Report switching player gender: say "You decide life as the other gender would be better."

test spg with "switch-gender / x me / switch-gender / x me".

Part B - Switch Player Species

Setting player species is an action applying to one species.
Understand "set-my-species-to [species]" as setting player species.
Understand "sps [species]" as setting player species.
Carry out setting player species: now the player is the species understood.
Report setting player species: say "You decide life would be better as a [the species understood]."

test sps with "set-my-species-to human / x me / set-my-species-to merfolk / x me / set-my-species-to batfolk / x me".

