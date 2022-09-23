extends Node


onready var dialogo = {"language": {"pt-br": "teste",
						"eng": {
							"intro": ["There was a time, where everything was peaceful. The people were content, the system was working fine, and the ambiance seemed to be just perfect.",
									  "Though, everyone knows that such harmonious, splendid times don’t last forever. And so, a catastrophe came.",
									  "No one knows from where it came, no one knows when it started, and no one knew what was truly happening.",
									  "“What happened to our ever so glorious island?” The people couldn’t help but wonder…"],
							"dialogo": {
								"context": {
									"scene": {
										"talk1": {
										}
									}
								},
								"preLooby": {
									"preLooby": {
										"talk1": [
											["NPC", "Oh, you’re finally awake! Are you okay?"],
											["Dellman",
											 "Yes? I think that I’m fine"],
											["NPC", "That’s good, that’s really good! Let’s hope for it to continue like this~!"],
											["Dellman",
											 "What’s happening here?"],
											["NPC", ["Oh! Perhaps you had a memory loss due to the shock of the current events. But no one actually knows what is happening, the only information that we have is that people started acting strange out of nowhere… is a rebellion happening?! We’re doomed if that’s the case! Oh, and by the way, I’m —! It’s a pleasure to meet you, Dellman! Even though we already know each other… well, details!"]]
										],
										"talk2": ["NPC1", ["I have no idea what’s happening here… can’t anybody save me or wake me up already?",
														   "I have a family… what’s going to happen to them…?",
														   "We are all lost and doomed!",
														   "Don’t talk to me"]
												  ],

										"talk3": [
											["NPC2", [
												"I think that succumbing to desperation is never a wise choice. People here are being too loud."]]
											["Dellman", "Do you have any idea about what’s happening here?"],
											["NPC2", "It depends, what can you offer me in return? *People are just too loud*"]
										],
										"talk4": [
											["NPC2", "Hah… that’s better!"],
											["Dellman", "So, now can you tell me about what you know?"],
											["NPC2", ["Indeed, now that my mind is clearer! I believe that it all started a while ago. I’ve noticed that people have unusual behavior while working, so naturally, I decided to investigate more upon it. My main findings were:",
													  "1- People that were usually active, creative, and open in their decisions began to close themselves and ignore what others said. ",
													  "2- The ones who were collaborative, started behaving like, pardon the frugal wording, “pricks”.",
													  "3- Everyone started to work for their own selves and benefits, individualism, in every sense of the word.",
													  "So, in simple words, this is not something that’s happened out of nowhere, rather, it’s something that’s been created and spread across the whole island"
													  ]
											 ["Dellman", "What do you mean with that?"]
												["NPC2", ["(He seems to be lost in thought)",
														  "(Better not bother him anymore)"]]]
										],
										"talk5": [
											["NPC3", "Hello~!"],
											["Dellman", "“Hello! Do you perhaps know what’s happening?"],
											["NPC3", "Oh, that! Yeah, after all, everyone is talking about that! It’s just like they say! The walls have ears~!"],
											["Dellman", "All… right..? Could you elaborate on that?"]
											["NPC3", "Oh, of course, dear~! I’ve heard all around that people are getting crazy everywhere! The more time, the crazier you get! Shouting, laughing, crying, screaming! It’s daunting, my darling. But, it is what it is"],
											["Dellman", "Alright, thanks for your help, ma’m"],
											["NPC3", "It’s always a pleasure, darling~!"]
										],
										"talk6": [
											["Dellman", "Hello! Do you have any clue? Of our situation, I mean"],
											["NPC4", "Hi! Well, I heard that the Mentors were dealing with the problem and that they would come up with an answer soon… Aside from that, I don’t think that I know much else."],
											["Dellman", "Thanks for your information!"],
											["NPC4", "Glad to help!"]
										],
										"talk7": [
											["Dellman", "Hello, how are you?"]
											["CLOUD", "Hii! I'm good, and you, Dellman?"],
											["Dellman", "I'm Scared! Do you have any useful info?"]
											["CLOUD", "Well, the ones who can help us the most right now, are the ones who are currently not in this room. Just go to the other room."]
										],
										"talk8": [
											["VISION", "I see that we could gather everyone in here, that’s a relief."],
											["RB", "Of course, even my last resort planning is pretty splendid and well calculated!"],
											["KPIs", "Well, of course, without my knowledge, your so-called “ever so good plan” would not have worked!"],
											["VISION", "Enough of this nonsense! Everyone here knows that without my ability to see beyond things you all would be still debating about whether you should do this or that! In the worst case scenario, you would all be dead already!"],
											["KPIs", "Vision, you always act as if the world revolves around you, what you do not know is that this might be your demise."],
											["RB", "Without a proper planning, you’re just a useless daydreamer."],
											["VISION", "What did you two just said?!"],
											["Dellman", "..."],
											["KPIs", "“I have some documentation to finish and analysis to make, so I will be taking my leave."],
											["RB", "Well, I’m seeing that this meaningless conversation will lead me nowhere, so I’ll go organize my schedules and find different ways to do things."],
											["VISION", ["Haaaah… they really cannot see what’s in front of their noses. We’ll never get to a CURE without a consensus",
														"(Vision gives a last scan through the room with his eyes, and leaves.)"]],
											# balao para o Dellman ir para o room principal
											["Dellman", "..."]
										],
										"talk9": [
											["CLOUD", "… Well… since the Mentors weren’t of much help, I suppose that I can disclose some information to you: as you might have noticed, our situation is pretty dire. We are dealing with a virus, more precisely, the ——, which is making everyone of the island strange: they have a retrograde thinking and are completely ignoring our so precious clients’ opinions. This seems like a powerful virus because before we knew it, it spread like wildfire!” “And… as you’ve seen, our last hopes rely on that group, the three Mentors, which the disagreement of opinions made them go separate ways… my worst fear is that they are starting to get infected as well..! What should we do?!"],
											["Dellman", "Well, we’re facing a pretty hard situation here… but let’s keep it cool for now, panicking will only get things worse."],
											["CLOUD", "You are right, Dellman. I should try to think straight for now… Oh! Yeah! I remember that I tried to make an MVP of a possible antibiotic! Although, it’s nothing nearly completion… it’s all that I could do while the Mentors were arguing."],
											["DELLMAN", "Where is it?"],
											["CLOUD", "It’s outside of the house! You can try to gather the knowledge about Lean, XP, and UX that ended up getting lost around the island with all the confusion! Take the opportunity to learn more about them as well, you’ll need it in order to find a cure for this virus! You have to find it!"],
										],
										"talk10": [
											["CLOUD", "It looks like you could gather them all! Nice job!"],
											["Dellman", "What should I do now?"],
											["CLOUD", "Oh! You can try to find the mentor of vision!"],
											["Dellman", "And… how do I find her?"],
											["CLOUD", "Oh, of course! She’s in the farthest left! You’ll find a house near the residential area on the left of the map! You’re doing great! If you need anything, I’ll be here!"],
										]

									}
								},
								"preBoss01": {
									"talk01": ["VISION", "You… you are that little blue guy from the library… if you’re here to face me, then first you’ll have to prove your worth to me. If you can learn and surpass me in my area of expertise, then I’ll consider listening to what you have to say"],
									"talk02": [["VISION", "I’m sorry. My vision must have gotten blurry over time. I should apologize for the troubles that I caused, so I’m deeply sorry!"],
											   ["Dellman", "It’s all right! Everyone makes mistakes, the important part is how you deal with them!  I’m glad that we could treat your condition!"],
											   ["VISION", "No, it’s me who should be thankful! My view has never been more clear now!"],
											   ["Dellman", "We have no time to waste now! Could you create another MVP of the antidote??"],
											   ["VISION", "Of Course!"],
											   ["Dellman", "..."],
											   ["CLOUD", "Hmm… it seems good… but not enough yet… There are other key components missing still, we need to continue our journey! Let’s find the next mentor,KPIs!"],
											   ["VISION", "Wait! Before you go, I wanted to offer my help in this. After you can cure the others, come and find me in the main building: The Dell Edifice. There, we can work together to put an end to this!"]
											   ["Dellman", "..."],
											   ["CLOUD", "Yay! We could cure Vision! Now, for we to get to the gym of KPIs, we need to go to the second house on the left"],
											   ["VISION", "Alright then, let's go!"]
											   ]
								},
								"preBoss02": {
									"talk01": ["KPIs", "Who dares to interfere, when I am in the middle of my research? You must be  gormless to waltz your way in thinking that you can act however you may see fit. I am most certainly not allowing that!"],
									"talk02": [
										["KPIs", "I… apologize. I was not in my right senses. Therefore, I ask for your forgiveness, the way that I conducted was deplorable and unjustified."],
										["CLOUD", "Such eloquent talking! No need to apologize, there are times that you just want to stick to your beliefs and your past experiences."],
										["Dellman", "There's no harm in wanting to focus or follow what you know, but you should always be open and consider others opinions."],
										["KPIs", "I'm relieved to have such empathetic companions, this is a real blessing. I offer you my gratitude for understanding all my misbehavior, and also for everything that you've done for me."],
										["CLOUD", "Now I have to offer YOU my apologies, we have to check the MVP in order to verify whether it's plausible now!"],
										["Dellman", "I never knew that Cloud could speak like that"],
										["KPIs", "I approve of that form of speech!"],
										["CLOUD", "No time to waste, no time to waste! Let me look at the MVP!"],
										["Dellman", "“Alright, here it is"],
										["CLOUD", "Wow! It’s so carefully well made! But still… it doesn’t seem to be good enough yet…"],
										["Dellman", "What’s missing now?"],
										["CLOUD", "The validation… Yes! The validation of your knowledge!"],
										["Dellman", "The what?!"],
										["CLOUD", "We need to get to the Mentor of RB and validate! There's no time! Oh, if you excuse me, I'll go first"],
										["Dellman", "I don't know what's up with this guy… I apologize in Cloud's stead, he's rushing to get the antidote finished."],
										["KPIs", "It's understandable. I'm glad that everything seems to be, at least partially, working out."],
										["Dellman", "Could you please go to The Dell Edifice? Vision asked us to gather everyone up there. That is… if you want to help us…"],
										["KPIs", "I would be more than happy to assist you in this matter."],
										["CLOUD", "Now that we treated KPIs, the one that's left is RB! For we to get to the gym of Validation, we need to go to constructions site on the bottom right"],
										["Dellman", "So we got to the last one, then what are we waiting for? Let's go!"],
									]
								},
								"preBoss03": {
									"talk01": ["RB", "Who are you? Whatever, it doesn’t matter. You’re useless to me if you don’t know how to swiftly create a well calculated plan, considering that changes will most definitely occur, you should adapt your plans accordingly! Go back to where you belong if you can’t even organize yourself!"],
									"talk02": [
										["RB", "Oh! That was a heck of a ride! Oh well, it looks like I was the one who ended up losing my way in the end. I guess it happens! Anyways, I hope that you can forgive me! As I was the one who lost my way."],
										["CLOUD", "It’s all right! Everyone gets lost sometimes, the most important thing is to never lose sight of your heart's reason!"],
										["Dellman", "Yes, Cloud is right. What’s good now is that you are not infected anymore!"],
										["RB", "Yes, thanks for worrying about me!"],
										["CLOUD", "There's no time to waste! Here's something that I made in order to see if the MVP of the antidote is good enough or not!"],
										["Dellman", "Did you create this now??"],
										["CLOUD", "In the meantime that you were trying to cure the Mentors, I worked on this little thing here! Let 's see now! *Cloud puts the MVP inside the machine* And..! What..? How is it still not enough…"],
										["Dellman", "What happened??"],
										["CLOUD", "Even with all of the knowledge from the Mentors… the antidote is still not complete…"],
										["Dellman", "How is that possible… what should we do now?"],
										["RB", "Something seems to be smelling fishy, care to explain what's happening?"],
										["Dellman", "The antidote that we were working hard to finish is not completed yet, even after all that we've done…"],
										["RB", "Oh, is that it? And you're willing to give up just 'cause of that?"],
										["Dellman", "What? But we've done everything that we could!"],
										["RB", "If there's no solution to a problem, then consider it solved! But this problem does have a solution, no?"],
										["Dellman", "What…? (then you remember the other Mentors and that they're waiting at The Dell Edifice) Oh, yes! Vision and KPIs are waiting in The Dell Edifice! We can gather our knowledge to create a proper cure to this!"],
										["CLOUD", "OoooOOOooooOOooH~!!!"],
										["RB", "That's the spirit! My boy!"],
										["CLOUD", "So what are we waiting for?! Let’s go talk to Vision and KPIs! No time, no time!"],
										["RB", "He seems to be very enthusiastic about it now! It's important to not lose that shine in his eyes! haha"],
										["Dellman", "Oh well… I’m sorry on his behalf, he’s very worried and he’s trying to find this cure asap."],
										["RB", "It’s alright, it’s not like I haven’t known him for a lifetime already to not know how he behaves, lol"],
										["Dellman", "Then, could you please go to The Dell Edifice with us? Vision and RB are already waiting there, so that we can gather our forces and make a proper cure!"],
										["RB", "My, of course I will help! Give me the butter and the knife and I’ll get the bread, so that we can create the perfect antidote!"],
										["Dellman", "All… right..?"],
									]
								}
							}
						}, "balao": {
							"context": {
								"scene": {
									"balaoum": {}
								}
							},
							"preLobby": {
								"preLobby": {
									"talk1":  ["So, the people have no idea what’s happening… we’re not in a good situation here… maybe I should try to find out myself what’s happening here? It doesn’t seem like a bad idea but… what if something happens to me in the process? With my memory problems, I’m the most clueless here…)",
											   "(if you try to get out of the building it will say: “Maybe I shouldn’t get out yet, who knows what’s happening out there? I don’t want to risk it for now…"],
									"talk3": ["(He seems to have a clearer sense of what’s happening, if I can satisfy him, it would be great. He seems to be bothered by all the noise)"],
								}
							},
							"Gym01": {["Here is the Gym of the Mentor of Knowledge! (Vision) based on her own preference, she decided to make her gym a labyrinth! Inside, you will find 3 stars that you have to collect in order to pass to the next phase - there are 3 phases in total. She's a very polite and friendly person, with the amazing ability to see the whole picture and where we should go next. Anyways, good luck!"]
									  },
							"Gym02": {["Here is the Gym of the Mentor of KPIs! (KPIs) is a very… well… demanding kind of guy, so he decided to make his gym a stepping stone labyrinth! Though… There's one problem… you can't see where you should step or not! As you may already know, inside you will find 3 stars that you have to collect in order to pass to the next phase - there are 3 phases in total. He's a very serious and eloquent person, attentive to all the details, a perfectionist."]
									  },
							"Gym03": {["Here is the Gym of the Mentor of Validation! (RB) is a very organized, and yet, 'all over the place' kind of woman, so she decided to make her gym a… how do I explain it? It's a puzzle where you have to transform all the symbols into a circle! Just like the other, there are 3 phases in total. She loves to think about the various paths and ways to do the same thing."]
									  }

						}, "instrucao": {
							"context": {
								"scene": {
									"instrucaoUm": {}
								}
							},
							"preLobby": {
								"preLobby": {
									"instrucaoUm": ["Talk to the NPCs in the room to get more information about the situation."],
								}
							},
							"Lobby": {
								"instrucaoUm": ["Find the 5 books in the Lobby and bring them to the room."]
							},
							"Gym01": {
								"Fase01": {
									"instrucaoUm": ["Find the vision mentor in the first house on the left of the map."]
								}
							},
							"Gym02": {
								"Fase01": {
									"instrucaoUm": ["Find the KPIs mentor in the second house on the left of the map."]
								}
							},
							"Gym03": {
								"Fase01": {
									"instrucaoUm": ["Find the RB mentor in the construction site on the bottom right of the map."]
								}
							}

						}
						}
		   }



#onready var dialogo = {
#	'teste2': ["Para subirmos o nosso nivel de visao precisamos ter em mente aquilo que buscamos e entender como isso impacta em nosso projeto. \n \nParabens Dellman, voce esta mais perto de entender o que precisa ser feito!"
#	#, 'teste 3 de dicionario']
#	],
#	'Tutorial': ["Neste jogo, cada coluna representa uma dimensão. Assim que as dicas forem apresentadas, pise no quadrado que mais se encaixa com a dica"],
#	'ginasio3fase20': ["um pergunta asdaoishdikasbduoansdibasdn"],
#	'ginasio3fase21': ["dois pergunta asdaoishdikasbduoansdibasdn"],
#	'ginasio3fase22': ["tres pergunta asdaoishdikasbduoansdibasdn"],
#	'ginasio3fase23': ["quatro pergunta asdaoishdikasbduoansdibasdn"],
#	'ginasio3fase24': ["VOCE CONSEGUIU YOU MADE, CONGRATUALATIONS YOU MADE IT, JUST DO IT MAKE YOUR DREAMS COME TRUE JUST DO IT YOU DO IT CONGRATULATIONS CONGRATULATIONS"],
#	'ginasio3fase25': ["VOCE CONSEGUIU YOU MADE, CONGRATUALATIONS YOU MADE IT, JUST DO IT MAKE YOUR DREAMS COME TRUE JUST DO IT YOU DO IT CONGRATULATIONS CONGRATULATIONS"],
#
#	'ginasio3fase30': ["um pergunta asdaoishdikasbduoansdibasdn"],
#	'ginasio3fase31': ["dois pergunta asdaoishdikasbduoansdibasdn"],
#	'ginasio3fase32': ["tres pergunta asdaoishdikasbduoansdibasdn"],
#	'ginasio3fase33': ["quatro pergunta asdaoishdikasbduoansdibasdn"],
#	'ginasio3fase34': ["VOCE CONSEGUIU YOU MADE, CONGRATUALATIONS YOU MADE IT, JUST DO IT MAKE YOUR DREAMS COME TRUE JUST DO IT YOU DO IT CONGRATULATIONS CONGRATULATIONS"],
#	'ginasio3fase35': ["VOCE CONSEGUIU YOU MADE, CONGRATUALATIONS YOU MADE IT, JUST DO IT MAKE YOUR DREAMS COME TRUE JUST DO IT YOU DO IT CONGRATULATIONS CONGRATULATIONS"],
#	'teste': ['outracoisa']
#}
