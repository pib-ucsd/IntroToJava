/// sce_initialize_dialogue()
function scr_initialize_dialogue() {
	//
	//	initialize all the dialogue speakers, text, event flags,
	//	notebook flags, and event codes to local arrays of the script caller
	//	that will be transferred to the global versions 
	//	the challenges MUST be the room after room/scene for the dialogue right before

	var scenenum = 0;				//For the intents of easier programming, each scene are the breaks in storyline
	var dia = 0;
	var i = 0;//used for notebook code initialization

#region The dialogue
#region checkpoint 1
	#region scene 1-1
		//scene 1
		//[scene #,dialogue #]
		speak[scenenum,dia] = "Rimac";
		dialogue[scenenum,dia++] = "Alrighty, what a bright day! Let's look at my to-do list. Hmm...time to take on the task of learning Java. But where should I start? It'll take a miracle!";

		//trigger white flash
		arrOfEventFlagCodes[scenenum, dia] = eventCodes.flash;

		speak[scenenum,dia] = "Sun God";
		dialogue[scenenum,dia++] = "Did someone say they needed a miracle?";
		newArray[0][0] = 1;
		show_debug_message(newArray[0]);
		arrOfEventFlagCodes[scenenum, dia] = eventCodes.next;

		scenenum++; dia = 0;
	#endregion

	#region scene 2-1
	//scene 2
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "Woah, what is this place. How did I get here? And why is everything black and white? What happened to my vision?";
	speak[scenenum,dia] = "!@%$#&";
	dialogue[scenenum,dia++] = "N-N0thing is...wr0ng with y0ur...visi0n, the w0rld is...b-black and white. It has b-been ever since...L0rd Din0...t00k 0ver.";
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "The whole world? Am I still on Earth? And who is Lord Dino?";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "EARTH? That word is not in my D A T A B A S E...the string \"Earth\" is n0t f0und. 0ur current l0cati0n: JaVaL0P0Lis, the s0urce 0f all things J-Java.";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Anything inv0lving Java, it was created here. We have c0ffee, the c0ding language...actally that's ab0ut it. C0ffee and c0ding. Mainly the c0ding.";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "I...can't d-drink c0ffee.";
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "Slow down! This is a lot to take in. I'm in a different world and I'm talking to a robot. And I can't see color anymore!";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Maybe y0u can help f-fix this w0rld! And me! F-Fix me and I can help guide y0u t0 fixing JaVaL0P0Lis!";
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "Um...yeah sure. How do I fix you?";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "JaVaL0P0Lis was created with Java. T0 fix, you must learn s0me Java. I will guide y0u with this n0teb00k.";
	arrOfEventFlagCodes[scenenum, dia] = eventCodes.widget;
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "E-Everything y0u need will be in here and more pages will be added as we travel through JaVaL0P0Lis so be sure t0 check back 0ften.";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.notebook;
	arrOfNotebookFlagCodes[scenenum, dia] = i++;
	// hello world
	scenenum++; dia = 0;
#endregion
#endregion

#region checkpoint 2
#region scene 2-2
	//Slides + Challenge 1
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "G00d start! N0w that y0u know what's g0ing 0n, let's fix me.";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.chlg;
	// fix loady
	scenenum++; dia = 0;
#endregion

#region scene 2-3
	//Challenges Robot_is_on = false; //turn to true
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "That wasn't too bad. Maybe Java isn't as terrible as I thought.";
	arrOfEventFlagCodes[scenenum, dia] = eventCodes.miniShake;
	// mcq something
	scenenum++; dia = 0;
#endregion

#region scene 2-4
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "And I'm back and better than ever! Well maybe not, there is still no color in Javalopolis. Wanna help me fix it?";
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "Not really bu-"
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Too bad! Right this way. You can always check the notebook for the best Java content in the land.";
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "Guess I have no choice.";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.notebook;
	arrOfNotebookFlagCodes[scenenum, dia] = i++;
	// challenge variables
	scenenum++; dia = 0;
#endregion
#endregion

#region checkpoint 3
#region scene 2-5
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Woop woop woop! You got color back in the world, well done Rimac.";
	speak[scenenum,dia] = "General Quack";
	dialogue[scenenum,dia++] = "Ahem. Whomst art thou? I am General Quack";
	speak[scenenum,dia] = "General Quack";
	dialogue[scenenum,dia++] = "the General Quack";
	speak[scenenum,dia] = "General Quack";
	dialogue[scenenum,dia++] = "THE General Quack";
	speak[scenenum,dia] = "General Quack";
	dialogue[scenenum,dia++] = "THE GREAT General Quack";
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "What the hey?";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Oh dangit. Don't worry about him. He just stands around and looks really cool.";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Lord Dino increased my property tax and when I didn't pay it he sent General Quack to take out half this place.";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Rimac, it's your job to help me fix this. Find out how much I need to pay General Quack so that he can leave us alone.";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.notebook;
	arrOfNotebookFlagCodes[scenenum, dia] = i++;
	// challenge arithmetic (taxes)
	scenenum++; dia = 0;
#endregion
#endregion

#region checkpoint 4
#region scene 2-6
	speak[scenenum,dia] = "General Quack";
	global.sceneGQ = scenenum;
	global.diaGQ = dia;
	dialogue[scenenum,dia++] = "Oh ho ho, you forgot interest. My time has come. FLAME ON! Get ready for my toasty move!";
	arrOfEventFlagCodes[scenenum, dia] = eventCodes.miniShake;
	scenenum++; dia = 0;
#endregion

#region scene 2-6.5
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "We need to defeat this minion of Lord Dino! Quick! Rimac, use Java to put out his flames!";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.notebook;
	arrOfNotebookFlagCodes[scenenum, dia] = i++;
	// challenge arrays
	scenenum++; dia = 0;
#endregion
#endregion

#region checkpoint 5
#region scene 2-7
	//Slides + Challenge 2c (arrays)
	speak[scenenum,dia] = "General Quack";
	dialogue[scenenum,dia++] = "AHHHHHHH. I HAVE BEEN DEFEATED!";
	//GQ fades out, leaving behind fire powah
	arrOfEventFlagCodes[scenenum, dia] = eventCodes.fadeGQ;

	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Only someone worthy of the fire powah will be able to claim it...";
	arrOfEventFlagCodes[scenenum, dia] = eventCodes.miniShake;

	scenenum++; dia = 0;
#endregion

#region scene 2-7.5
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Woop woop woop we did it! You claimed the fire powah! Now you need to learn how to use it.";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.notebook;
	arrOfNotebookFlagCodes[scenenum, dia] = i++;
	// challenge booleans (upgrade fire powers)
	scenenum++; dia = 0;
#endregion
#endregion

#region checkpoint 6
#region scene 2-8
	//Slides + Challenge 2d (Fire class	basics)
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "Now what?";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "You have learned about the fire powah and what it can do. Now it is time to test it out.";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.notebook;
	arrOfNotebookFlagCodes[scenenum, dia] = i++;
	// challenge call methods
	scenenum++; dia = 0;
#endregion

#region scene 2-9
	//Slides + Challenge 2e (calling methods)
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "Woah that's pretty cool.";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "You need to make sure you are in control of the powah and that the powah is not in control of you. You are playing with Fire!";
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "You worry too much. What could pOsSiBly happen??";
	arrOfEventFlagCodes[scenenum, dia] = eventCodes.miniShake;

	scenenum++; dia = 0;
#endregion

#region scene 2-10
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "See? Make sure you keep a cool head. Now it is time to go somewhere else.";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.fade;

	scenenum++; dia = 0;
#endregion
#endregion

#region checkpoint 7
#region scene 3-1
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "What in the world, we're underwater!";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Heck yea we are. Let's get the next powah to defeat Lord Dino.";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "With fire powahs we can now survive underwater with fire bubbles, so this place is our next mission.";
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "Ok, I can see a bunch of buildings in the distance over there and I'm thinking it's Atlantis.";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Well done kiddo, now let's get past this gate.";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.notebook;
	arrOfNotebookFlagCodes[scenenum, dia] = i++;
	// challenge conditionals
	scenenum++; dia = 0;
#endregion
#endregion

#region checkpoint 8
#region scene 3-2
	//Slides + Challenge 3a (conditionals)
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "Hiyahhhhhh!";
	//gate opens
	arrOfEventFlagCodes[scenenum, dia] = eventCodes.openGate;

	scenenum++; dia = 0;
#endregion

#region scene 3-2.5
	speak[scenenum, dia] = "Loady";
	dialogue[scenenum,dia++] = "You opened the gate! Great work kid.";
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "Ok let's get to this city. Maybe I can get a water powah or something cool like that.";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Actually yeah, I've heard of this General Spoik dude who has water powahs. He's actually the one who destroyed that city";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "What is it about Lord Dino's minions and destroying cities? Anyway, we can stop him and fix the city. Let's do this, follow me.";
	//GS fade in
	speak[scenenum,dia] = "General Spoik";
		global.sceneGS = scenenum;
		global.diaGS = dia;
	dialogue[scenenum,dia++] = "WHO BROKE MY GATE?!";
	//arrOfEventFlagCodes[scenenum, dia] = eventCodes.fadeGS;
	speak[scenenum,dia] = "General Spoik";
	dialogue[scenenum,dia++] = "I'm trying to plan how to rule my city, so please leave. Should I force you away?";
	speak[scenenum,dia] = "General Spoik";
	dialogue[scenenum,dia++] = "Or maybe give y'all cookies to join me.";
	speak[scenenum,dia] = "General Spoik";
	dialogue[scenenum,dia++] = "Or maybe play a game.";
	speak[scenenum,dia] = "General Spoik";
	dialogue[scenenum,dia++] = "Or maybe...";
	arrOfEventFlagCodes[scenenum, dia] = eventCodes.miniMiniShake;

	scenenum++; dia = 0;
#endregion

#region scene 3-2.5.5
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Here, go sneak up behind him and grab the 4th spine to the right of the middle fin.";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.notebook;
	arrOfNotebookFlagCodes[scenenum, dia] = i++;
	// challenge while loop
	scenenum++; dia = 0;
#endregion
#endregion

#region checkpoint 9
#region scene 3-3
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "...so third spine...no wait, right of middle fin and then fourth spine right here. Ooop. Oh hey, water powah.";
	speak[scenenum,dia] = "General Spoik";
	dialogue[scenenum,dia++] = "AHH!! So like don't do that please, and hold on and just wait and uh";
	speak[scenenum,dia] = "General Spoik";
	dialogue[scenenum,dia++] = "*ouch* *wow*";
	speak[scenenum,dia] = "General Spoik";
	dialogue[scenenum,dia++] = "ok";
	speak[scenenum,dia] = "General Spoik";
	dialogue[scenenum,dia++] = "*blep*";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Well done, laddie now let's get outta here. Open a water portal for long enough that we can escape!";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.notebook;
	arrOfNotebookFlagCodes[scenenum, dia] = i++;
	// challenge for loop
	scenenum++; dia = 0;
#endregion

#region scene 3-4
	//Slides + Challenge 3c (for loop)
	//portal appears
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "I created the portal!";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Let's go before it closes.";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.miniShake;

	scenenum++; dia = 0;
#endregion
#endregion

#region checkpoint 10
#region scene 4-1
	//Pre Pre Boss Fight Scene 4
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "That was a close call, but we made it through the portal!";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Of all the places in the entire world. You just had to bring us to the one place where Lord Dino is.";
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "Hey, it was my first time portalling. I'm still getting used to it.";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "HA HA don't get used to it just yet. Lord Dino already has all of the powahs. He can take yours away in a powah battle.";
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "If I beat Lord Dino in a powah battle, could I take all of his powahs away?";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "WHAT? Ok, this is definitely your first time here.";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Here only the champion controls the world.";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "He's beaten all previous challengers and has been the champion for fifteen years. You have about a 0.0001% chance of beating him.";
	//bold if possible
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "That's ok, since I have the power of believing in myself.";
	//Sun God appears with flash of white light
	arrOfEventFlagCodes[scenenum, dia] = eventCodes.flash;

	speak[scenenum,dia] = "Sun God";
	dialogue[scenenum,dia++] = "You have finally cracked the code to succeeding in Java and winning against the champion of the world.";
	speak[scenenum,dia] = "Sun God";
	dialogue[scenenum,dia++] = "You must believe in yourself and persevere through all coding mishaps! Here, take these powahs, go and defeat Lord Dino. Save this world!";
	//Sun God disappears with flash of white light
	arrOfEventFlagCodes[scenenum, dia] = eventCodes.flash;
	//Slides + Challenge 4a (fire)
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Before you face him, there are some things that you need to know. First let's strengthen your Fire powah.";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.notebook;
	arrOfNotebookFlagCodes[scenenum, dia] = i++;
	// challenge fire adv methods
	scenenum++; dia = 0;
#endregion
#endregion

#region checkpoint 11
#region scene 4-2
	//Slides + Challenge 4b (water)
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Let's get your Water powah strengthened before you get into the arena.";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.notebook;
	arrOfNotebookFlagCodes[scenenum, dia] = i++;
	// challenge water class
	scenenum++; dia = 0;
#endregion
#endregion

#region checkpoint 12
#region scene 4-3
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Now it's time to try out your new Earth powah. It's the most industrial.";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.notebook;
	arrOfNotebookFlagCodes[scenenum, dia] = i++;
	scenenum++; dia = 0;
	// challenge adv methods scope
#endregion
#endregion

#region checkpoint 13
#region scene 4-4
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Last but not least, you must practice your air power. It is the most unpredictable powah of them all.";
	arrOfEventFlagCodes[scenenum, dia] = eventCodes.notebook;
	arrOfNotebookFlagCodes[scenenum, dia] = i++;
	// challenge adv methods returning
	scenenum++; dia = 0;
#endregion

#region scene 4-5
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "You are ready now, this is as far as I can help. Go on and challenge Lord Dino.";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "I'm sure he's already waiting for you in the arena since he has spies everywhere. Good luck!";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.next;
	scenenum++; dia = 0;
#endregion
#endregion

#region checkpoint 14
#region scene 5-1
	//Pre Boss Fight Scene 5
	speak[scenenum,dia] = "Giant Meme Lord Dino";
	dialogue[scenenum,dia++] = "I've been waiting for you.";
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "I have trained for this. I am here to end your reign of terror.";
	arrOfEventFlagCodes[scenenum, dia] = eventCodes.bigShake;
	speak[scenenum,dia] = "Giant Meme Lord Dino";
	dialogue[scenenum,dia++] = "Terror?!";
	speak[scenenum,dia] = "Giant Meme Lord Dino";
	dialogue[scenenum,dia++] = "My perfect world has rules. Without rules everyone would be like you are now, running around causing havoc to a perfect world.";
	speak[scenenum,dia] = "Giant Meme Lord Dino";
	dialogue[scenenum,dia++] = "Rules create society. We are lost without them.";
	speak[scenenum,dia] = "Giant Meme Lord Dino";
	dialogue[scenenum,dia++] = "Those without rules are so lost, they cannot even answer the most basic fundamentals about Javalopolis.";
	arrOfEventFlagCodes[scenenum, dia] = eventCodes.bigShake;
	scenenum++; dia = 0;
#endregion
#endregion

#region checkpoint 15
#region scene 5-1.5
	speak[scenenum,dia] = "Giant Meme Lord Dino";
	dialogue[scenenum,dia++] = "Well! I see potential in you after all.";
	speak[scenenum,dia] = "Giant Meme Lord Dino";
	dialogue[scenenum,dia++] = "You should join me and rule over Javalopolis at my side, together we could destroy the remnants of the world and create an entirely new realm.";
	speak[scenenum,dia] = "Giant Meme Lord Dino";
	dialogue[scenenum,dia++] = "A realm where everyone is under our command.";
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "No! I'll never join you! Java is something that should be for everyone to use and create with. I will never bow down to your rules!";
	arrOfEventFlagCodes[scenenum, dia] = eventCodes.transform;
	scenenum++; dia = 0;
#endregion

#region scene 5-3
	speak[scenenum,dia] = "Small Serious Lord Dino";
	dialogue[scenenum,dia++] = "If you won't join me, then I'll have to destroy you and take away all of your powahs.";
	speak[scenenum,dia] = "Small Serious Lord Dino";
	dialogue[scenenum,dia++] = "Welcome to your doom.";
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "You can try but you will never succeed!";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.miniGame;
	scenenum++; dia = 0;
#endregion

#region scene 6-1
	//Post Boss Fight Scene 6
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "After all that training, we did it! We beat Lord Dino!";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "It was all you kid, you did it. You trained with all those challenges and now you have overcome the final challenge in this realm.";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "I bet you want to go home now and leave this crazy place.";
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "You bet, thanks for being with me through everything. I won't forget you or this journey.";
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "Oh and take these powahs. I probably can't use them back home.";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Wait really? You mean it? Aww you're the best. Here take these notebook pages with you to the other side. With all this Java knowledge you're sure to become a master in no time.";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "Especially since there's no Lord Dino to stop you anymore. Let's get that portal ready for the last time.";
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "Bye bye :(";
	speak[scenenum,dia] = "Loady";
	dialogue[scenenum,dia++] = "I'm gonna miss you :[";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.next;
	scenenum++; dia = 0;
#endregion

#region scene 6-2
	//bedroom
	speak[scenenum,dia] = "Rimac";
	dialogue[scenenum,dia++] = "That was crazy, but at least I learned some Java! Finally I can check that off the to-do list.";

	arrOfEventFlagCodes[scenenum, dia] = eventCodes.zoomLoady;
	scenenum++; dia = 0;
#endregion
#endregion

	//The end :(
#endregion


}
