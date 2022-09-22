extends Node


onready var dialogo = {'language': {'pt-br': 'teste',
'eng': {
	'intro': ['There was a time, where everything was peaceful. The people were content, the system was working fine, and the ambiance seemed to be just perfect.
	Though, everyone knows that such harmonious, splendid times don’t last forever. And so, a catastrophe came.
	No one knows from where it came, no one knows when it started, and no one knew what was truly happening.
	“What happened to our ever so glorious island?” The people couldn’t help but wonder…'],
	
	'talk': {
		'before': {
			'fala1' : ['Oh, you’re finally awake! Are you okay?']
			'fala2' : ['Yes? I think that I’m fine']
			'fala3' : ['That’s good, that’s really good! Let’s hope for it to continue like this~!']
			'fala4' : ['What’s happening here?']
			'fala5' : ['Oh! Perhaps you had a memory loss due to the shock of the current events. But no one actually knows what is happening, the only information that we have is that people started acting strange out of nowhere… is a rebellion happening?! We’re doomed if that’s the case! Oh, and by the way, I’m —! It’s a pleasure to meet you, Dellman! Even though we already know each other… well, details!']
			'fala6' : ['So, the people have no idea what’s happening… we’re not in a good situation here… maybe I should try to find out myself what’s happening here? It doesn’t seem like a bad idea but… what if something happens to me in the process? With my memory problems, I’m the most clueless here…)
(if you try to get out of the building it will say: “Maybe I shouldn’t get out yet, who knows what’s happening out there? I don’t want to risk it for now…']
			'fala7' : ['I have no idea what’s happening here… can’t anybody save me or wake me up already?']
			'fala8' : ['I have a family… what’s going to happen to them…?']
			'fala9' : ['We are all lost and doomed']
			
			'fala10' : ['Don’t talk to me']
			'fala11' : ['Do you have any idea about what’s happening here?']
			'fala12' : ['It depends, what can you offer me in return? *People are just too loud']
			'fala13' : ['Hah… that’s better!']
			'fala14' : ['So, now can you tell me about what you know?']
			'fala15' : ['Indeed, now that my mind is clearer! I believe that it all started a while ago. I’ve noticed that people have unusual behavior while working, so naturally, I decided to investigate more upon it. My main findings were: 
1- People that were usually active, creative, and open in their decisions began to close themselves and ignore what others said. 
2- The ones who were collaborative, started behaving like, pardon the frugal wording, “pricks”.
3- Everyone started to work for their own selves and benefits, individualism, in every sense of the word.
So, in simple words, this is not something that’s happened out of nowhere, rather, it’s something that’s been created and spread across the whole island
']
			'fala16' : ['What do you mean with that?']
			
			'fala17' : ['Hello~!']
			'fala18' : ['Hello! Do you perhaps know what’s happening?']
			'fala19' : ['Oh, that! Yeah, after all, everyone is talking about that! It’s just like they say! The walls have ears~!']
			'fala20' : ['All… right..? Could you elaborate on that?']
			'fala21' : ['Oh, of course, dear~! I’ve heard all around that people are getting crazy everywhere! The more time, the crazier you get! Shouting, laughing, crying, screaming! It’s daunting, my darling. But, it is what it is.']
			'fala22' : ['Alright, thanks for your help, ma’m']
			'fala23' : ['It’s always a pleasure, darling~!']
			
			'fala24' : ['Hello! Do you have any clue? Of our situation, I mean']
			'fala25' : ['Hi! Well, I heard that the Mentors were dealing with the problem and that they would come up with an answer soon… Aside from that, I don’t think that I know much else.']
			'fala26' : ['Thanks for your information!']
			'fala27' : ['Glad to help']
			
			'fala28' : ['Hello, how are you?']
			'fala29' : ['Hii! I am good, and you, Dellman?']
			'fala30' : ['I am good! Do you have any useful info?']
			'fala31' : ['Well, the ones who can help us the most right now, are the ones who are currently not in this room. I hope that they will arrive soon.']
			'fala32' : ['Should I leave']
			
			'fala33' : ['I see that we could gather everyone in here, that’s a relief.']
			'fala34' : ['Of course, even my last resort planning is pretty splendid and well calculated!']
			'fala35' : ['Well, of course, without my knowledge, your so-called “ever so good plan” would not have worked!”']
			'fala36' : ['Enough of this nonsense! Everyone here knows that without my ability to see beyond things you all would be still debating about whether you should do this or that! In the worst case scenario, you would all be dead already!']
			'fala37' : ['Vision, you always act as if the world revolves around you, what you do not know is that this might be your demise']
			'fala38' : ['Without a proper planning, you’re just a useless daydreamer.']
			'fala39' : ['What did you two just said?']
			
			'fala41' : ['I have some documentation to finish and analysis to make, so I will be taking my leave']
			'fala42' : ['Well, I’m seeing that this meaningless conversation will lead me nowhere, so I’ll go organize my schedules and find different ways to do things']
			'fala43' : ['Haaaah… they really cannot see what’s in front of their noses. We’ll never get to a CURE without a consensus.” (Vision gives a last scan through the room with his eyes, and leaves.']
			'fala44' : ['… Well… since the Mentors weren’t of much help, I suppose that I can disclose some information to you: as you might have noticed, our situation is pretty dire. We are dealing with a virus, more precisely, the ——, which is making everyone of the island strange: they have a retrograde thinking and are completely ignoring our so precious clients’ opinions. This seems like a powerful virus because before we knew it, it spread like wildfire!”
“And… as you’ve seen, our last hopes rely on that group, the three Mentors, which the disagreement of opinions made them go separate ways… my worst fear is that they are starting to get infected as well..! What should we do?
']
			'fala45' : ['Well, we’re facing a pretty hard situation here… but let’s keep it cool for now, panicking will only get things worse.']
			'fala46' : ['You are right, Dellman. I should try to think straight for now… Oh! Yeah! I remember that I tried to make an MVP of a possible antibiotic! Although, it’s nothing nearly completion… it’s all that I could do while the Mentors were arguing.']
			'fala47' : ['Where is it?']
			'fala48' : ['It’s in that room over there! It’s on top of a table beside a book']
			'fala49' : ['Oh! You found it!']
			'fala50' : ['… That book… that’s what will happen to our island if we can’t control the virus?']
			'fala51' : ['Sadly… yes…']
			'fala52' : ['… … … What can I do to help?']
			'fala53' : ['You want to help?? Well, truth is that we have to accept any kind of help that we can, given the situation… Alright! You can try to gather the knowledge about Lean, XP, and UX that ended up getting lost around the island with all the confusion! Take the opportunity to learn more about them as well, you’ll need it in order to find a cure for this virus!”']
			
			'fala54' : ['You go find the lost books and papers. After collecting them all, Cloud appears']
			'fala55' : ['It looks like you could gather them all! Nice job!']
			'fala56' : ['What should I do now?']
			'fala57' : ['Oh! You can try to find the mentor of vision!']
			'fala58' : ['Oh, of course! She’s in the farthest left! You’ll find a teleportation machine near the residential area! You’re doing great! If you need anything, I’ll be here!']
		}
		'ginasio1': {
			'pre0' : {
				'prefala1' : ['Here is the Gym of the Mentor of Knowledge! (Vision - name here) based on her own preference, she decided to make her gym a labyrinth! Inside, you will find 3 stars that you have to collect in order to pass to the next phase - there are 3 phases in total. She is a very polite and friendly person, with the amazing ability to see the whole picture and where we should go next. Anyways, good luck!']
				'prefala2' : ['You… you are that little blue guy from the library… if you’re here to face me, then first you’ll have to prove your worth to me. If you can learn and surpass me in my area of expertise, then I’ll consider listening to what you have to say']
			}
			'fase1' : { 
				'boss1' : ['I’m sorry. My vision must have gotten blurry over time. I should apologize for the troubles that I caused, so I’m deeply sorry!']
				'boss2' : ['It’s all right! Everyone makes mistakes, the important part is how you deal with them! Right, Dellman?']
				'boss3' : ['Yes, I believe so too. I’m glad that we could treat your condition!']
				'boss4' : ['No, it’s me who should be thankful! My view has never been more clear now!']
				'boss5' : ['We have no time to waste now! Dellman, could you create another MVP of the antidote??']
				'boss6' : ['Oh, yes! Here it is.” (You hand the antidote to Cloud)']
				'boss7' : ['Hmm… it seems good… but not enough yet… There are other key components missing still, we need to continue our journey! Let’s find the next mentor,KPIs!']
				'boss8' : ['Wait! Before you go, I wanted to offer my help in this. After you can cure the others, come and find me in the main building: The Dell Edifice. There, we can work together to put an end to this!']
				'boss9' : ['Yay! We could cure Vision! Now, for we to get to the gym of KPIs, we need to go to —']
				'boss10' : ['Alright then, lets go!']
			}
		}
		'ginasio2': {
			'pre1' : {
				'prefala3' : ['Here is the Gym of the Mentor of KPIs! (KPIs - name here) is a very… well… demanding kind of guy, so he decided to make his gym a stepping stone labyrinth! Though… Theres one problem… you cant see where you should step or not! As you may already know, inside you will find 3 stars that you have to collect in order to pass to the next phase - there are 3 phases in total. Hes a very serious and eloquent person, attentive to all the details, a perfectionist. Anyways, good luck']
				'prefala4' : ['Who dares to interfere, when I am in the middle of my research? You must be  gormless to waltz your way in thinking that you can act however you may see fit. I am most certainly not allowing that!']
			}
			'fase1' : {
				'boss11' : ['I… apologize. I was not in my right senses. Therefore, I ask for your forgiveness, the way that I conducted was deplorable and unjustified']
				'boss12' : ['Such eloquent talking! No need to apologize, there are times that you just want to stick to your beliefs and your past experiences.']
				'boss13' : ['There is no harm in wanting to focus or follow what you know, but you should always be open and consider others opinions']
				'boss14' : ['I am relieved to have such empathetic companions, this is a real blessing. I offer you my gratitude for understanding all my misbehavior, and also for everything that you ve done for me.']
				'boss15' : ['Now I have to offer YOU my apologies, we have to check the MVP in order to verify whether it is plausible now!']
				'boss16' : ['I never knew that Cloud could speak like that']
				'boss17' : ['I approve of that form of speech!']
				'boss18' : ['No time to waste, no time to waste! Let me look at the MVP!']
				'boss19' : ['Wow! It’s so carefully well made! But still… it doesn’t seem to be good enough yet…']
				'boss20' : ['What’s missing now?']
				'boss21' : ['The validation… Yes! The validation of your knowledge!']
				'boss22' : ['We need to get to the Mentor of RB and validate! There is no time! Oh, if you excuse me, I will go first']
				'boss23' : ['I don t know what s up with this guy… I apologize in Cloud is stead, he is rushing to get the antidote finished']
				'boss24' : ['Could you please go to The Dell Edifice? Vision asked us to gather everyone up there. That is… if you want to help us…']
				'boss25' : ['I would be more than happy to assist you in this matter.']
				'boss26' : ['You have my thanks! I have to go now!']
				'boss27' : ['Now that we treated KPIs, the one that is left is RB! For we to get to the gym of Validation, we need to go to —']
				'boss28' : ['So we got to the last one, then what are we waiting for? Let's go!']
			}
		}
		'ginasio3' {
			'pre2' : {
				'prefala4' : ['Here is the Gym of the Mentor of Validation! (RB - name here) is a very organized, and yet, all over the place kind of woman, so she decided to make her gym a… how do I explain it? It is a puzzle where you have to transform all the symbols into a circle! Just like the other, there are 3 phases in total. She loves to think about the various paths and ways to do the same thing. Anyways, good luck!']
			}
			'fase1' : {
				'boss29' : {"Who are you? Whatever, it doesn’t matter. You’re useless to me if you don’t know how to swiftly create a well calculated plan, considering that changes will most definitely occur, you should adapt your plans accordingly! Go back to where you belong if you can’t even organize yourself!"}
				'boss30' : {"Oh! That was a heck of a ride! Oh well, it looks like I was the one who ended up losing my way in the end. I guess it happens! Anyways, I hope that you can forgive me! As I was the one who lost my way.'}	
				'boss31' : {'It is all right! Everyone gets lost sometimes, the most important thing is to never lose sight of your heart's reason!'}
				'boss32' : {'Yes, Cloud is right. What’s good now is that you are not infected anymore!'}
				'boss33' : {'Yes, thanks for worrying about me!'}
				'boss34' : {'There's no time to waste! Here's something that I made in order to see if the MVP of the antidote is good enough or not!'}
				'boss35' : {'Did you create this now??'}
				'boss36' : {'In the meantime that you were trying to cure the Mentors, I worked on this little thing here! Let 's see now! *Cloud puts the MVP inside the machine* And..! What..? How is it still not enough…'}
				'boss37' : {'What happened??'}
				'boss38' : {'Even with all of the knowledge from the Mentors… the antidote is still not complete…'}
				'boss39' : {'How is that possible… what should we do now?'}
				'boss40' : {'Something seems to be smelling fishy, care to explain what's happening?'}
				'boss41' : {'The antidote that we were working hard to finish is not completed yet, even after all that we've done…'}
				'boss42' : {'Oh, is that it? And you're willing to give up just 'cause of that?'}
				'boss43' : {'What? But we've done everything that we could!'}
				'boss44' : {'If there's no solution to a problem, then consider it solved! But this problem does have a solution, no?'}
				'boss45' : {'What…? (then you remember the other Mentors and that they're waiting at The Dell Edifice) Oh, yes! Vision and KPIs are waiting in The Dell Edifice! We can gather our knowledge to create a proper cure to this!'}
				'boss46' : {'OoooOOOooooOOooH~!!!'}
				'boss47' : {'That's the spirit! My boy!'}
				'boss48' : {'So what are we waiting for?! Let’s go talk to Vision and KPIs! No time, no time!” (Cloud goes rushing through the door'}
				'boss49' : {'He seems to be very enthusiastic about it now! It's important to not lose that shine in his eyes! haha'}
				'boss50' : {'Oh well… I’m sorry on his behalf, he’s very worried and he’s trying to find this cure asap'}
				'boss51' : {'It’s alright, it’s not like I haven’t known him for a lifetime already to not know how he behaves, lol'}
				'boss52' : {'Then, could you please go to The Dell Edifice with us? Vision and RB are already waiting there, so that we can gather our forces and make a proper cure!'}
				'boss53' : {'My, of course I will help! Give me the butter and the knife and I’ll get the bread, so that we can create the perfect antidote!'}
				'boss54' : {'All… right..?'}
			
		}
	}
}

}

}



var scenes = [
	{
		"title": "Separação ou concentração dos poderes",
		"text": [
			"Enquanto presidente, você percebe que existem diversas funções a serem realizadas para o melhor desempenho da nação.",
			"De acordo com o filósofo francês Montesquieu, quando os poderes estão concentrados em uma mesma pessoa, não existe garantia de liberdade para os governados.",
			"Sua primeira tarefa como presidente é criar um estado democrático para todos, como você alocaria os poderes para conseguir esse objetivo?"
		],
		"lawExplanation": "Para que um Estado seja verdadeiramente democrático, as funções de criar, executar e julgar leis não devem se concentrar nas mãos de uma única pessoa, pois isso pode levar ao abuso de poder. Nesse sentido, o Estado brasileiro é formado por três poderes: Executivo, Legislativo e Judiciário. Administrar o Estado, definir as leis e executar e cuidar dos conflitos são as funções desses poderes, respectivamente.",
		"answers": {
			"answer1": {
				"text": "Manter o poder de decisões políticas apenas em suas mãos",
				"consequence": {
					"text": [
						"Ao concentrar o poder apenas em suas mãos, você não está agindo democraticamente. O povo vai às ruas protestando e tem o apoio do Congresso.",
						"Percebendo o que fez, você decide voltar à estrutura de Três Poderes."
					],
				},
				"indicators": {
					"congress": -20,
					"socialEconomic": -20
				},
				"next": 2
			},
			"answer2": {
				"text": "Separar os poderes e cada poder terá uma função estatal",
				"consequence": {
					"text": [
						"Ao separar os poderes, você evitou a centralização de poder e fez com que a organização do país se tornasse mais democrática, deixando outros políticos e a população com poder de escolha.",
					],
				},
				"indicators": {
					"congress": 10,
					"socialEconomic": 10
				},
				"next": 2
			},
		},
		"background": 0,
		"image": "President.png", 
	},
	{
		"title": "Quociente Eleitoral",
		"text": [
			"Em um Municipio do Rio Grande do Sul, um candidato a vereador foi o mais votado da eleição superando todos os adversários, porem não foi eleito.",
			"Muitas pessoas que votaram nele estão fazendo publicações nas redes sociais afirmando que as urnas estão fraudadas.",
			"Precisamos de um posicionamento seu à respeito do caso, pois ele está tomando grandes proporções nas redes sociais.",
			"Presidente, sua equipe sabia como as eleições funcionavam e já escreveram isso na nova constituição.",
			"Você quer ocupar seu tempo explicando para o povo porque isso acontece e que é de acordo com a constituição ou prefere que os próprios cidadãos corram atrás de respostas?",
		],
		"lawExplanation": "Isso ocorre porque deputados e vereadores são eleitos pelo sistema proporcional, ao passo que o presidente da República, governadores, senadores e prefeitos são escolhidos pelo sistema majoritário. No primeiro, os votos computados são os de cada partido ou coligação No segundo, quem obtiver mais votos sagra-se vencedor.",
		"answers": {
			"answer1": {
				"text": "Explicar porque é de acordo com a lei",
				"consequence": {
					"text": [
						"Você designou uma equipe para explicar para a população sobre o Quociente Eleitoral. Como resultado, a maioria do povo se acalmou e deixou o restante dos políticos em paz quanto a isso.",
					],
				},
				"indicators": {
					"congress": 5,
					"socialEconomic": 10
				},
				"next": 3
			},
			"answer2": {
				"text": "Não perder tempo dando explicações ",
				"consequence": {
					"text": [
						"A população não fica contente, pois não recebeu satisfação dos políticos.",
						"Algumas pessoas foram às ruas pedindo impeachment, mas sua escolha não se enquadra como crime de responsabilidade.",
						"O Congresso, por sua vez, não se sentiu afetado por sua decisão."
					],
				},
				"indicators": {
					"congress": 0,
					"socialEconomic": -15
				},
				"next": 3
			},
		},
		"background": 0,
		"image": "President.png", 
	},
	{
		"title": "O que é a CLT?",
		"text": [
			"Presidente, ainda não construímos a parte da Constituição que garante direitos aos trabalhadores! Estamos recebendo denúncias de jornadas de trabalhos muito extensas e outros abusos.",
			"Você prefere recriar a CLT ou atender as reclamações que chegaram aos nossos escritórios individualmente?",
		],
		"lawExplanation": "CLT ou Consolidação das Lei do Trabalho é uma série de leis que visam proteger o trabalhador, regular as relações de trabalho e criar o direito processual do trabalho.",
		"answers": {
			"answer1": {
				"text": "Criar leis trabalhistas universais",
				"consequence": {
					"text": [
						"Ao recriar a Consolidação, trabalhadores agora se sentem mais seguros para sua jornada de trabalho, o que baixou a taxa de desemprego e melhorou a economia.",
						"O Congresso, por sua vez, ficou satisfeito com sua escolha e aprovou essa legislação."
					],
				},
				"indicators": {
					"congress": 5,
					"socialEconomic": 10
				},
				"next": 4
			},
			"answer2": {
				"text": "Atender apenas a essas reclamações individuais e nada mais",
				"consequence": {
					"text": [
						"A maior parte da população continua sofrendo abusos, pois você lidou apenas com uma pequena parcela das reclamações.",
						"O povo vai às ruas pedindo mais segurança no trabalho e, vendo isso, o Congresso toma frente e cria algumas leis trabalhistas, mas não tão eficazes como antes."
					],
				},
				"indicators": {
					"congress": -5,
					"socialEconomic": -15
				},
				"next": 4
			},
		},
		"background": 0,
		"image": "President.png"
	},
	{
		"title": "Criação de Projetos de Lei pela população",
		"text": [
			"Presidente, uma parte da população gostaria de propor um projeto de lei em relação aos casos recentes sobre compra de votos",
			"Mas, existem diversas dificuldades em relação à criação de um projeto de lei vindo da população. Qual a atitude o senhor(a) diante essa situação?",
		],
		"lawExplanation": "No Brasil atual, há uma série de processos, para que haja a avaliação de um projeto de lei vindo da iniciativa popular, em que cerca de 1% da população brasileira (1.5 milhão de pessoas) precisa assinar para apresentar um projeto, distribuida por ao menos 5 Estados, com ao menos 30% de eleitores em cada um deles. Já a PEC (Proposta de Emenda Constitucional) serve para alterar algumas partes do texto constitucional sem convocar uma nova assembleia constituinte, mas só pode ser proposta por um terço dos deputados ou senadores, pelo Presidente ou mais da metade das Assembleias Legislativas das Unidades Federativas.",
		"answers": {
			"answer1": {
				"text": "Criar uma PEC referente à compra de votos",
				"consequence": {
					"text": [
						"Ao atender ao pedido criando uma PEC, seu apoio popular aumentou. O Congresso, por sua vez, não teve trabalho a mais, pois a aprovação da PEC foi para o Plenário.",
					],
				},
				"indicators": {
					"congress": 0,
					"socialEconomic": 10
				},
				"next": 5
			},
			"answer2": {
				"text": "Sugerir que a população crie um abaixo assinado para criar uma lei",
				"consequence": {
					"text": [
						"A população conseguiu assinaturas suficientes para transformar a petição pública em lei.",
						"O Congresso votou a favor para não perder o apoio popular, mas alguns políticos não pareciam tão animados com a aprovação."
					],
				},
				"indicators": {
					"congress": -15,
					"socialEconomic": 10
				},
				"next": 5
			},
		},
		"background": 1,
		"image": "President.png"
	},
	{
		"title": "Foro privilegiado",
		"text": [
			"Presidente, estamos com um grave problema: um deputado federal está sendo acusado de receber propina para votar projetos de leis por interesses pessoais.",
			"Ele alega que deve ser julgado pelo Supremo Tribunal Federal, para que não haja perseguição por estar em uma função pública.",
			"Após ouvir suas declarações, qual seria a medida tomada pelo senhor?"
		],
		"lawExplanation": "Na prática, uma ação penal contra uma autoridade pública – como os parlamentares – é julgada por tribunais superiores, diferentemente de um cidadão comum, julgado pela justiça comum. A justificativa é proteger o exercício da função ou do mandato público.",
		"answers": {
			"answer1": {
				"text": "Ele deve ser julgado pela justiça comum",
				"consequence": {
					"text": [
						"Ao escolher que o deputado seja julgado pela justiça comum, a população apoiou sua decisão.",
						"O Congresso, por sua vez, queria que o deputado fosse julgado pelo STF, o que não os deixou satisfeitos com sua decisão.",
					],
				},
				"indicators": {
					"congress": -15,
					"socialEconomic": 10
				},
				"next": 6
			},
			"answer2": {
				"text": "Ele será julgado pelo STF como forma de proteger sua função de Estado",
				"consequence": {
					"text": [
						"Ao escolher que o deputado seja julgado pelo STF, a população não ficou satisfeita com sua decisão, pois queria ele fora política",
						"Já o Congresso, por jogos políticos, ficou satisfeito com sua decisão."
					],
				},
				"indicators": {
					"congress": 5,
					"socialEconomic": -15
				},
				"next": 6
			},
		},
		"background": 1,
		"image": "President.png"
	},
	{
		"title": "Nível do Governo Municipal",
		"text": [
			"Presidente, a população está reclamando sobre o lixo deixado nas ruas e a falta de transporte público fornecido.",
			"De quem você, como presidente, deve cobrar resultados?",
		],
		"lawExplanation": "O nível de governo municipal. No nível municipal, estão os prefeitos e os vereadores, mas não há Judiciário, pois os fóruns locais estão sob a estrutura do Judiciário estadual.",
		"answers": {
			"answer1": {
				"text": "Cobrar das prefeituras de cada cidade",
				"consequence": {
					"text": [
						"Ao cobrar dos governos municipais, você responsabilizou as pessoas corretas para resolverem a situação. Os problemas de lixo e transporte foram resolvidos com agilidade.",
					],
				},
				"indicators": {
					"congress": 0,
					"socialEconomic": 10
				},
				"next": 7
			},
			"answer2": {
				"text": "Cobrar os governadores estaduais ",
				"consequence": {
					"text": [
						"Ao cobrar governos estaduais, você estava exigindo resultados de pessoas que não tinham essa responsabilidade.",
						"Os problemas de lixo e transporte foram resolvidos, pois foram endereçados aos governos municipais, mas demorou mais do que deveria."
					],
				},
				"indicators": {
					"congress": -15,
					"socialEconomic": 5
				},
				"next": 7
			},
		},
		"background": 1,
		"image": "President.png"
	},
	{
		"title": "Asilo Político",
		"text": [
			"Um ex funcionário do Governo da Angola está sendo perseguido pelo governo de seu país por fazer criticas ao atual governo.",
			"Sua equipe analisou o caso e o angolano não cometeu crime algum e possui a ficha limpa em seu país de origem.",
			"Qual seria a sua conduta? Aceitar ou recusar ele?",
		],
		"lawExplanation": "Para que uma pessoa possa ser considerada asilada política, é fundamental que ela esteja sendo perseguida por motivos políticos em seu país de origem. Para receber o benefício, o solicitante de asilo não pode ter cometido crime comum ou estar em aguardo de julgamento relacionado a um crime comum.",
		"answers": {
			"answer1": {
				"text": "Aceitar asilo",
				"consequence": {
					"text": [
						"Sua decisão foi muito elogiada nas redes sociais, já que o evento gerou proporções internacionais e estava sendo acompanhado por pessoas do mundo todo.",
						"Isso também fez com que alguns países enviassem cartas parabenizando a sua atitude."
					],
				},
				"indicators": {
					"congress": 0,
					"socialEconomic": 5
				},
				"next": 8
			},
			"answer2": {
				"text": "Recusar asilo",
				"consequence": {
					"text": [
						"O assunto ganhou notoriedade nas redes sociais e a populção não apoiou da sua decisão de recusar o exilado, afetando assim a sua popularidade.",
					],
				},
				"indicators": {
					"congress": -10,
					"socialEconomic": -15
				},
				"next": 8
			},
		},
		"background": 2,
		"image": "President.png"
	},
	{
		"title": "Fundo eleitoral",
		"text": [
			"Você como presidente pretende fazer uma campanha de reeleição a presidencia do pais e precisa de recursos.",
			"Uma empresa multinacional decide auxilia-lo financeiramente no processo de candidatura.",
			"Qual seria a sua conduta?"
		],
		"lawExplanation": "É um fundo público destinado a financiar campanhas eleitorais, o fundo eleitoral foi criado em 2017, pela lei 13.487. O total de recursos desse fundo é definido pela LOA(Lei Orçamentária Anual), que é uma das principais fontes de receita para campanhas eleitorais. O dinheiro é distribuído aos partidos seguindo alguns critérios, por exemplo, os partidos que possuem representantes na câmara e no senado devem receber as maiores quantias. De acordo com a lei, 30% do valor recebido por cada partido deve ser destinado para mulheres. Além disso, a distribuição deve ser proporcional ao total de candidatos negros apresentados para a disputa eleitoral.",
		"answers": {
			"answer1": {
				"text": "Aceitar a doação de recursos",
				"consequence": {
					"text": [
						"Ao aceitar a verba da iniciativa privada, você cometeu uma ilegalidade.",
						"A população foi às ruas pedindo impeachment, mas isso não se enquadrou como crime de responsabilidade, sendo assim o processo de impeachment não foi iniciado.",
						"O Congresso, por sua vez, não conseguiu fazer a vontade pedida pelo povo, o que diminuiu a aprovação popular."
						
					],
				},
				"indicators": {
					"congress": -15,
					"socialEconomic": -20
				},
				"next": 9
			},
			"answer2": {
				"text": "Recusar a doação de recursos",
				"consequence": {
					"text": [
						"Ao recusar a doação de recursos, você evitou cometer um crime. Isso passou despercebido pela população, mas seu governo perdeu o apoio da empresa que queria fornecer verba para sua candidatura",
						"o que afetou o Congresso negativamente, pois vários políticos tinham acordos firmados com essa empresa."
					],
				},
				"indicators": {
					"congress": -10,
					"socialEconomic": 0
				},
				"next": 9
			},
		},
		"background": 2,
		"image": "President.png"
	},
	{
		"title": "Nível de governo estadual",
		"text": [
			"Presidente, estamos pagando muitos impostos em cima de nossos veículos e as rodovias que ligam nossas cidades estão horríveis.", 
			"Estamos gastando muito dinheiro em pneus por causa de todos os buracos das estradas! Se você é presidente do povo, faça algo para melhorar isso.",	
			"De quem você, como presidente, deve cobrar resultados?"
		],
		"lawExplanation": "Cabe ao governo estadual reparar as estradas que ligam cidades dentro de um estado - O governo estadual recolhe o IPVA (Imposto sobre a Propriedade de Veículos Automotores).",
		"answers": {
			"answer1": {
				"text": "Cobrar resultado de vereadores municipais",
				"consequence": {
					"text": [
						"Ao cobrar resultado da esfera municipal, você estava exigindo resultados de pessoas que não tinham essa responsabilidade.",
						" Os problemas nas rodovias foram resolvidos, pois foram endereçados aos governos estaduais, mas demorou mais do que deveria."
					],
				},
				"indicators": {
					"congress": -15,
					"socialEconomic": 5
				},
				"next": 10
			},
			"answer2": {
				"text": "Cobrar resultado de prefeitos municipais",
				"consequence": {
					"text": [
						"A cobrança de resultado do governo estadual foi um acerto em cheio. Os políticos se movimentaram mais para consertar os problemas que a população estava reclamando.",
						"O Congresso, por ser formado por políticos da esfera estadual, não ficou tão contente com isso, mesmo você tendo tomado a decisão correta."
					],
				},
				"indicators": {
					"congress": -5,
					"socialEconomic": 10
				},
				"next": 10
			},
		},
		"background": 2,
		"image": "President.png"
	},
	{
		"title": "Congresso Nacional",
		"text": [
			"Presidente, a população acredita que alguns dos parlamentares que fazem parte do Congresso Nacional não merecem estar nessa posição.",
			"A única forma de alterar isso é através de uma reforma nos atuais mecanismos políticos.",
			"Você prefere verificar caso a caso e tomar as medidas necessárias para remover os ocupantes do cargo, caso não cumpram os requisitos necessários?"
		],
		"lawExplanation": "O congresso é formado pelo senado e pela câmara dos deputados. O número de deputados que representam os estados varia de acordo com o número da população de cada estado. O mínimo são oito políticos por estado e o máximo são setenta. Por outro lado, são permitidos apenas 3 senadores por estado. O mandato dos senadores é de oito anos, o dobro dos deputados, que é de 4 anos. Apesar de o congresso ser constituído por duas casas, as duas possuem poderes diferentes. É só a câmara que pode, por exemplo, iniciar um processo contra o presidente. E é só o senado que pode processar e julgar esse processo.",
		"answers": {
			"answer1": {
				"text": "Verificar cada caso",
				"consequence": {
					"text": [
						"Ao escolher fazer uma investigação, os membros do Congresso se sentem ameaçados, mas a população fica satisfeita por ter atendido seus pedidos.",
					],
				},
				"indicators": {
					"congress": -10,
					"socialEconomic": -5
				},
				"next": 11
			},
			"answer2": {
				"text": "Ignorar o pedido",
				"consequence": {
					"text": [
						"Ao escolher não inciar uma investigação, a população fica descontente, mas o Congresso fica satisfeito ao não ser alvo de investigações.",
					],
				},
				"indicators": {
					"congress": 10,
					"socialEconomic": -15
				},
				"next": 11
			},
		},
		"background": 0,
		"image": "President.png"
	},
	{
		"title": "Medida Provisória",
		"text": [
			"Presidente, uma parcela da população acredita que não é necessário a obrigatoriedade do título de eleitor para poder votar,",
			"apenas um documento de identificação como RG ou CPF, visto que muitos adolescentes menores de idade não possuem esse documento.",
			"A população acredita que é necessária uma medida provisória para poder permitir que os adolescentes votem sem o título de eleitor, assim tornando o processo mais democrático.",
			"Deseja criar uma MP, ou seja, Medida Provisória, para que adolescentes que não possuem título de eleitor possam votar apenas utilizando RG ou CPF ou  deseja manter o antigo sistema de votação?"
		],
		"lawExplanation": "A medida provisória, conhecida pela sigla MP, é um instrumento que o presidente pode utilizar para criar leis. A MP pode ser criada pelo presidente e somente em situações de extrema relevância e urgência. A partir da data de criação, a MP passa a valer como uma lei pelo período de 60 dias. Durante esse período de 60 dias o Congresso Nacional confere se a lei atende aos requisitos de relevância e urgência, caso positivo, ela se torna uma lei permanente.",
		"answers": {
			"answer1": {
				"text": "Criar MP",
				"consequence": {
					"text": [
						"A MP foi criada e ficou em regimento por 60 dias, mas como não haviam eleições nesse período, de pouco adiantou",
						"A população reconheceu seu esforço, mas não achou uma maneira eficaz. O Congresso, por sua vez, vetou que a MP se tornasse um lei vigente.",
					],
				},
				"indicators": {
					"congress": -10,
					"socialEconomic": -10
				},
				"next": 12
			},
			"answer2": {
				"text": "Manter as leis como estão",
				"consequence": {
					"text": [
						"A troca de ministros no meio do governo gera instabilidade social, pois o novo ministro contratado não tem tanta simpatia para com o povo.",
						"O Congresso, por sua vez, fica neutro a sua decisão."
					],
				},
				"indicators": {
					"congress": 10,
					"socialEconomic": 0
				},
				"next": 12
			},
		},
		
		"background": 0,
		"image": "President.png"
	},
	{
		"title": "Decretos",
		"text": [
			"Presidente, recentemente muitos ministros têm abandonado seus respectivos cargos, alegando que não possuem autonomia o suficiente para tomar suas próprias decisões.",
			"Esse foi o caso do ministro da educação, que abandonou a posição na última semana. Você encontrou a substituta perfeita para o cargo e fez uma proposta.",
			"Ela disse que aceita a proposta mas com uma condição: ter total liberdade para fazer sempre o que é melhor para a população sem interferência externa.",
			"Deseja contratá-la imediatamente e permitir autonomia, agindo sempre de acordo com o que for melhor para a educação do país",
			"ou deseja procurar outra pessoa para o cargo que obedeça sempre à ordens superiores?"
		],
		"lawExplanation": "Decretos são atos administrativos de competência dos chefes do Poder Executivo em cada nível(ou seja, presidente, em nível federal, governadores, em nível estadual, e prefeitos, em nível municipal). Diferentemente das medidas provisórias, os decretos podem ser criados por qualquer chefe do Poder Executivo - e não apenas pelo Presidente da República. Geralmente um decreto é utilizado para nomear pessoas a cargos públicos ou para regulamentar leis. Algumas leis dependem de decretos para que possam ser cumpridas de forma efetiva: por vezes a lei estabelece o que deve ser feito, mas somente o decreto determina a forma como deve ser feito. O decreto tem, portanto, a função de detalhar a lei, regulamentando ou executando o que está disposto no texto.",
		"answers": {
			"answer1": {
				"text": "Contratá-la imediatamente",
				"consequence": {
					"text": [
						"A população achou muito coerente a contratação da nova ministra, pois acredita que ela tem as melhores intenções em mente.",
						"O Congresso, por sua vez, não foi tão apoiador de tanta liberdade para escolhas políticas.",
					],
				},
				"indicators": {
					"congress": -5,
					"socialEconomic": 10
				},
				"next": 13
			},
			"answer2": {
				"text": "Não contratar",
				"consequence": {
					"text": [
						"A pequena parcela da população que queria o direito a voto sem título ficou descontente. O Congresso, por sua vez, concordou com a decisão de não alterar a estrutura de votação.",
					],
				},
				"indicators": {
					"congress": 0,
					"socialEconomic": -10
				},
				"next": 13
			},
		},
		
		"background": 0,
		"image": "President.png"
	},
	{
		"title": "",
		"text": [],
		"lawExplanation": "",
		"answers": {
			"answer1": {
				"text": "",
				"consequence": {
					"text": [
						"",
					],
				},
				"indicators": {
					"congress": 5,
					"socialEconomic": 5
				},
				"next": 14
			},
			"answer2": {
				"text": "",
				"consequence": [
					"",
				],
				"indicators": {
					"congress": -10,
					"socialEconomic": -10
				},
				"next": 14
			},
		},
		
		"background": 0,
		"image": "President.png"
	},
	{
		"title": "Proposta do Gregorio",
		"text": [
			"Sabemos que as coisas estão indo de mau a pior. Faça o que deveria ter feito desde o início...",
			"Espero que dessa vez você tome a decisão correta... Eu tenho uma proposta para você. E essa é a sua última chance.",
			"Deixe que eu tome as decisões a partir de agora, farei com que as coisas mudem para melhor."
		],
		"lawExplanation": "",
		"answers": {
			"answer1": {
				"text": "Aceitar trabalhar para o Gregorio",
				"consequence": {
					"text": [
						"Você será um grande ativo!",
						"Nos veremos novamente."
					],
				},
				"indicators": {
					"congress": -10,
					"socialEconomic": -10
				},
				"next": null
			},
			"answer2": {
				"text": "Recusar proposta de Gregorio",
				"consequence": {
					"text": [
						"Então você se entrega tão fácil...",
						"Vamos ver até onde você irá chegar."
					],
				},
				"indicators": {
					"congress": 0,
					"socialEconomic": 0
				},
				"next": null
			},
		},
	},
		{
			"title": "Processo de Impeachment",
			"text": [
				"Haha presidente, tenho observado sua gestão e percebi que não está tendo retorno positivo em suas escolhas. Isso não é só um aviso!", 
				"Presidente, você está sendo julgado por diversos crimes de responsabilidade, decorrentes de suas escolhas até o momento. Esses crimes podem levá-lo a uma situação de Impeachment.",
				"Abaixo estão listados alguns casos desses possíveis crimes, peço para que selecione um deles, por favor."
			],
			"lawExplanation": "",
			"answers": {
				"answer1": {
					"text": "Ser contra a união",
					"consequence": {
						"text": [
							"Presidente, suas escolhas até aqui abriram um pedido de Impeachment contra você, seus indicadores foram uma das maneiras para te alertar isso.",
							"Porém o processo de Impeachment é algo bem amplo e a escolha da cena anterior iniciou o processo.",
							"Após uma análise feita pelo Congresso, o procedimento de Impeachment foi efetivado e agora você terá que ficar inelegível por um período de 8 anos.",
							"Mas mesmo assim espero que tenha sido uma experiência engrandecedora e que tenha aprendido mais sobre política nessa jornada."
						],
					},
					"indicators": {
						"congress": 0,
						"socialEconomic": 0
					},
					"next": null
				},
				"answer2": {
					"text": "Cometer crime de responsabilidade",
					"consequence": {
						"text": [
							"Presidente, suas escolhas até aqui abriram um pedido de Impeachment contra você, seus indicadores foram uma das maneiras para te alertar isso.",
							"Porém o processo de Impeachment é algo bem amplo e a escolha da cena anterior iniciou o processo.",
							"Após uma análise feita pelo Congresso, o procedimento de Impeachment foi efetivado e agora você terá que ficar inelegível por um período de 8 anos.",
							"Mas mesmo assim espero que tenha sido uma experiência engrandecedora e que tenha aprendido mais sobre política nessa jornada."
						],
					},
				"indicators": {
					"congress": 0,
					"socialEconomic": 0
				},
				"next": null
			},
			"background": 0,
			"image": "President.png"
			},
		}
	]

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
