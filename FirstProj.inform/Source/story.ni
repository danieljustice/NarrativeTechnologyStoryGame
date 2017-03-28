"Hi Game, I'm Dad" by "Daniel Justice, Alessandra Pazzaglia, Ghassan Salah, Chloe Baierl, Genevieve Grossman"

Use scoring.

TurnsUntilMove is a number that varies.
TurnsUntilMove is usually 10.

EmbarrassmentLevel is a number that varies.
EmbarrassmentLevel is usually 0.

[Victoria's Secret Setup]
The Aisle is a room. "Shops all around." 
	The Northern Aisle is north of the Aisle. 
	The Southern Aisle is south of the Aisle. 
	The Music Shop is west of the Aisle. 
	The Aladdin's is east of the Aisle.
The Victoria's Secret is a room. "The most awkward store for a Dad to enter.  Your Daughter is far too young for this store."
Underwear is in the Victoria's Secret. 
	the description of Underwear is "The back side says 'Too Hot For You.' But you know its not too hot for you, its room temperature to the touch. Your Daughter probably needs to know this."
Before taking the Underwear:
	if Daughter is in Victoria's Secret:
		increase EmbarrassmentLevel by 10;
		say "[line break]Daughter Embarrassment Level is at [EmbarrassmentLevel] of 50.";
	
Push-Up Bra is in the Victoria's Secret.
	the description of Push-Up Bra is "Looks more like two turtle shells than an article of clothing. Your daughter probably needs to be reminded of the Ninja Turtles."	
Before taking the Push-Up Bra:
	if Daughter is in Victoria's Secret:
		increase EmbarrassmentLevel by 10;
		say "[line break]Daughter Embarrassment Level is at [EmbarrassmentLevel] of 50.";	

[Music Shop Setup]

The Music Shop is a room. "ahhhhh the birthplace of greatness."
The Guitar is in the Music Shop. The description of Guitar is "Guitar Description"

A Tuba is in the Music Shop. 
	The description of the Tuba is "This instrument reminds you of band class.  The class where the man told you how to play music instead of letting it flow from your inner Rocker!"

Instead of taking Tuba: 
	Say "Hey (daughter),  What's the difference between a tuba and a vacuum cleaner? 
		You have to turn one of them on before it sucks.";
	if Daughter is in Music Shop:
		increase EmbarrassmentLevel by 10;
		say "[line break]Daughter Embarrassment Level is at [EmbarrassmentLevel] of 50.";

a Trumpet is in the Music Shop. 

a Piano is in the Music Shop. 

Instead of taking the Piano:
	say "I broke my wrist 10 years ago and I went to the doctor to fix it. and I asked the doctor if I'm able to play the piano after the healing process and the doctor said I could. I said: Good because I couldn't before.";
	if Daughter is in Music Shop:
		increase EmbarrassmentLevel by 10;
		say "[line break]Daughter Embarrassment Level is at [EmbarrassmentLevel] of 50.";

Instead of taking Trumpet:
 	say "you see a trumpet say to your daughter: what's the loudest kind of pet? a trumpet";
	increase EmbarrassmentLevel by 10;
	say "[line break]Daughter Embarrassment Level is at [EmbarrassmentLevel] of 50.";


[Sephora Shop Set-Up]
The Sephora Shop is a room. "Your Daughter can't find a concealer and asks the cashier for help, you come to the rescue with 'Wow, sounds like it's some good stuff then.'"

Watch is in the Sephora Shop. 

Instead of taking the Watch:
	Say "It's a 300$ Watch. Dad says : I'm not gonna fix that watch if you get it... because I don't have the TIME to do it";
	if Daughter is in Sephora Shop:
		increase EmbarrassmentLevel by 10;
		say "[line break]Daughter Embarrassment Level is at [EmbarrassmentLevel] of 50.";
	
Fish Tank is in the Sephora Shop 

Instead of taking the Fish tank:
	say "Why do fish live in saltwater? Because pepperwater makes them sneeze";
	if Daughter is in Sephora Shop:
		increase EmbarrassmentLevel by 10;
		say "[line break]Daughter Embarrassment Level is at [EmbarrassmentLevel] of 50.";
		
[Hot Topic Setup]
The Hot Topic is a room. "Looks like a Vampire lair. Welcome to the Black Parade by My Chemical Romance is being played over the speakers." 

a Studded Belt is in the Hot Topic.
	the description of the Studded Belt is "Times never change."
	

[Aladdin's Setup]
The Aladdin's is a room. "There better be no man with a magic rug to take my Daughter!"

Before going from the Aladdin's to the Aisle:
	say "I've eaten too much Middle Eastern food. Now I falafel"		

Eggs are in the Aladdin's.
	the description of Eggs is "There are a dozen eggs on the counter."

Before taking the Eggs:
	say "Why can't eggs tell a joke to each other? They crack each other up!"



[Piercing Pagoda]
  
The Piercing Pagoda is a room.  "How much did the pirate charge for an ear piercing?  A buck an ear!!!"



The Northern Aisle is a room. 
	The Victoria's Secret is west of the Northern Aisle.
	The Hot Topic is east of the Northern Aisle.
The Southern Aisle is a room. 
	The Sephora Shop is west of the Southern Aisle.
	The Piercing Pagoda is east of the Southern Aisle.
	
	
The Shopping Spree is a scene. The Shopping Spree begins when play begins.
When play begins:
	now the score is 500;







	
	
Daughter is a woman in the Aisle. The description of Daughter is "She's perfect, but she needs to stop shopping."

Every turn:
	if EmbarrassmentLevel is 50:
		end the story;
	let L be a list of rooms; 
	add Victoria's Secret to L;
	add Music Shop to L;
	add Sephora Shop to L;
	add Hot Topic to L;
	add Aladdin's to L;
	add Piercing Pagoda to L;
	decrease TurnsUntilMove by 1;
	if TurnsUntilMove is 0:
		now TurnsUntilMove is 10;
		let NextRoom be entry a random number from 1 to the number of entries in L of L;
		now Daughter is in NextRoom;
		say "Your Daughter has bought an item and moved to [NextRoom]";
		decrease the score by a random number from 10 to 200;
	if the turn count is 2:
		now TurnsUntilMove is 10;
		let NextRoom be entry a random number from 1 to the number of entries in L of L;
		now Daughter is in NextRoom;
		say "Your Daughter has moved to [NextRoom]";
		
		

		