extends Node


var stop = false

var playerPosition =  Vector2(0, 340)

#Variaveis para saber se as fases foram terminadas e liberar o conteudo no inventario, precisamos ver se pode se fazer de outa forma
var fase1finished=false
var fase2finished=false
var fase3finished=false
var fase4finished=false
var fase5finished=false
var fase6finished=false
var fase7finished=false
var fase8finished=false
var fase9finished=false
var fase10finished=false

var Gin01_enabled = true
var Gin02_enabled = true
var Gin03_enabled = true

var numLivros = 0
var numLivrosLobby=0
var percentVisionGinasio01 = 0.3

var ginasio3final = 0

var keyDialogo = 'teste2' # keydialogo chama as falas das cenas
var indexDialogo = 0

var keyBalao = 'teste2'
var indexBalao = 0

var keyInstru = 'teste2'
var indexInstru = 0

var dinamicaLobbyCondition = true # saber se a dinâmica dos livros ja acabou

# VARIÁVEIS UTILIZADAS NO PRE LOBBY HOUSE
var statusTalkNPC = true
var statusTalkNPC1 = true
var statusTalkNPC2 = true
var statusTalkNPC3 = true
var statusTalkNPC4 = true

var preGinasio

var current_dialogo

var Gin02Fase02Enabled = false
var Gin02Fase03Enabled = false
var Gin02preBoss = false
var count = 0

onready var caminhoDialogo # n foi o tony

onready var dialogo = {"language": {"pt-br": "teste",
						"eng": {
							"intro": ["There was a time, where everything was peaceful. The people were content, the system was working fine, and the ambiance seemed to be just perfect.",
									  "Though, everyone knows that such harmonious, splendid times don’t last forever. And so, a catastrophe came.",
									  "No one knows from where it came, no one knows when it started, and no one knew what was truly happening.",
									  "“What happened to our ever so glorious island?” The people couldn’t help but wonder…"],
							"instructions": {
								"collectBooksLobby":["Agora você deverá explorar o mapa e coletar cinco livros, com isso aprenderá sobre o modelo de produtos, suas inspirações e seu modo de trabalho."],
								"collectedBooksLobby":["Parabéns!! Agora que você achou os livros vá até uma casa no lado esquerdo do mapa, lá você encontrará o ginásio 1 e seu mentor."],
								"gym1":["Parabéns! Você está no ginásio 1, dentro do ginásio 1, existem 3 labirintos que você deverá atravessar, ao longo do trajeto você aprenderá um pouco das maturidades de vision, roadmap, backlog, stakeholders e data driven"],
								"gym1-outros": ["Colete os 5 livros e ache o fim do labirinto"],
								"instrucAfterGym1":["Agora procure um prédio de dois andares no canto superior direito, lá você entrara no ginásio 2 e encontrara seu mentor"],
								"gym2":["Parabéns! Você chegou no ginásio 2, o ginásio 2 tem 3 fases, para passar de fase você terá que completar o puzzle, sem as métricas dos seus mentores você não conseguira"],
								"instrucAfterGym2":["Agora procure um canteiro de obras na parte central inferior do mapa, lá está o ginásio 3 e seu mentor"],
								"gym3":["Parabéns! Você chegou no ginásio 3, o ginásio 3 tem 3 fases e para completar as fases você deve atravessar o mapa, mas cuidado que dependendo de onde você pisar, você morre. \n\nPara saber o caminho correto você deve ouvir os conselhos do seu mentor, mas ele não te dará o caminho apenas te dará dicas"],
								"mentor": ["Fale com o mentor"]
										},
							"dialogo": {
								"context": {
									"scene": {
										"talk1": {
										}
									}
								},
								"preLobby": {
									"preLobby": {
										"talk1": [
											["NPC", "Oh, you’re finally awake! Are you okay?"],
											["Dellman", "Yes? I think that I’m fine"],
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
											["NPC2", "I think that succumbing to desperation is never a wise choice. People here are being too loud."],
											["Dellman", "Do you have any idea about what’s happening here?"],
											["NPC2", "It depends, what can you offer me in return? People are just too loud"]
										],
										"talk4": [
											["NPC2", "Hah… that’s better!"],
											["Dellman", "So, now can you tell me about what you know?"],
											["NPC2", ["Indeed, now that my mind is clearer! I believe that it all started a while ago. I’ve noticed that people have unusual behavior while working, so naturally, I decided to investigate more upon it. My main findings were:",
													  "1- People that were usually active, creative, and open in their decisions began to close themselves and ignore what others said. ",
													  "2- The ones who were collaborative, started behaving like, pardon the frugal wording, “pricks”.",
													  "3- Everyone started to work for their own selves and benefits, individualism, in every sense of the word.",
													  "So, in simple words, this is not something that’s happened out of nowhere, rather, it’s something that’s been created and spread across the whole island"
													  ],
											 ["Dellman", "What do you mean with that?"],
												["NPC2", ["(He seems to be lost in thought)",
														  "(Better not bother him anymore)"]]]
										],
										"talk5": [
											["NPC3", "Hello~!"],
											["Dellman", "“Hello! Do you perhaps know what’s happening?"],
											["NPC3", "Oh, that! Yeah, after all, everyone is talking about that! It’s just like they say! The walls have ears~!"],
											["Dellman", "All… right..? Could you elaborate on that?"],
											["NPC3", "Oh, of course, dear~! I’ve heard all around that people are getting crazy everywhere! The more time, the crazier you get! Shouting, laughing, crying, screaming! It’s daunting, my darling. But, it is what it is"],
											["Dellman", "Alright, thanks for your help, ma’m"],
											["NPC3", "It’s always a pleasure, darling~!"],
										],
										"talk6": [
											["Dellman", "Hello! Do you have any clue? Of our situation, I mean"],
											["NPC4", "Hi! Well, I heard that the Mentors were dealing with the problem and that they would come up with an answer soon… Aside from that, I don’t think that I know much else."],
											["Dellman", "Thanks for your information!"],
											["NPC4", "Glad to help!"],
										],
										"talk7": [
											["Dellman", "Hello, how are you?"],
											["CLOUD", "Hii! I'm good, and you, Dellman?"],
											["Dellman", "I'm Scared! Do you have any useful info?"],
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
								"contentLobby":{
									"intro": ["O modelo de produtos é um modelo moderno de desenvolvimento de software originado em startups e organizações de desenvolvimento de software orientadas a produtos, que tem como foco a experiencia do cliente. O modelo permite agilidade operacional, permitindo organizações que reajam na velocidade de startups. \nNo modelo de produto, equipes autônomas desenvolvem capacidades focadas em atingir o resultado esperados pela empresa, agindo através de feedbacks diretos com o usuário para rapidamente implantar e entregar valor. \nO Modelo de Produto possui nove dimensões: \n\n-Vision \n-Roadmap \n-Stakeholders \n-Backlog \n-Data Driven \n-User KPI's \n-Business KPI's \n-Deployments KPI's \n-Quality KPI's \n\nCada dimensão é dividida em 4 níveis de maturidade cada vez maiores como parte da jornada de transformação. A medida que as equipes se transformam adotando as práticas do Modelo de Produto, o POMA (Product Opetation Maturity Assessment) ajudará a equipe identificar onde existem oportunidades de transformações adicionais."],
									"lean": ["As equipes formadas devem combinar três técnicas para entregar produtos a seus usuários, a primeira são as técnicas do The Lean Startup, Eric Reis, que é uma metodologia de criação e gestão de startups. Esse método ensina como criar produtos desejados por clientes, gerando ciclos de aprendizado rápidos, reduzindo o risco de construir o produto errado enquanto confortavelmente se muda de direção, caso necessário. \nEssa responsabilidade é do product management e as práticas são: \n\n-Identificar e testar suposições \n-Ciclo de aprendizagem Lean Startup \n-Decisões orientadas por dados \n-Mínimo produto viável (MVP)"],
									"hcd": ["A segunda técnica é o Human Centered Design, estrutura de design centrada nos desejos e necessidades do usuário final, a fim de garantir que o software resolva um problema real para usuários reais, construindo um produto desejável e com usabilidade. \nEssa técnica é responsabilidade dos designers e suas práticas são: \n\n-Definição de mentalidade \n-Estudos etnográficos \n-Entrevistas com usuários \n-Criação de protótipos"],
									"xp": ["A terceira técnica é o Extreme Programming, uma metodologia focada no desenvolvimento de software que possui valores e princípios, que são fundamentados por um conjunto de práticas. Onde o desejo é construir um software funcional em uma velocidade e qualidade consistentes frente a mudanças constantes de requisitos. \nSua responsabilidade é dos desenvolvedores e suas práticas são: \n\n-Programação Emparelhada \n-Desenvolvimento Orientado a Testes \n-Iterações curtas \n-Integração contínua / Implantação Continua"],
									"doubleDiamond": ["Sabia que as equipes de produto trabalham com a metodologia de Double Diamond? \nUm processo de desenvolvimento de uma solução, onde é levantado inúmeras hipóteses e problemas. A metodologia é formada por quatro fases distintas descobrir, definir, desenvolver e entregar. As duas primeiras fases Descobrir e Definir, compõem o primeiro diamante e tem como objetivo principal uma pesquisa aprofundada baseada em um problema. As duas outras fases Desenvolver e Entregar, são focadas em descobrir uma solução, tendo como base as pesquisas desenvolvidas. \n\nNa Dell se trabalha de forma diferente, os times são pequenos e tem essas características: \n\n-Consistem em pessoas com conhecimento multidisciplinar em negócios, engenharia e design \n-Ter autonomia para fazer e agir nas decisões de produto \n-São altamente colaborativos e comunicativos \n-Compartilhar a mesma experiência (o ideal é sentar-se juntos)"]
								},
								"contentGym1Level1":{
									"star1": ["Você sabia que dentro da dimensão de visão, um time só vai para a maturidade 2 após se conscientizar sobre a visão do produto que estão trabalhando e entender como ela se reflete no objetivo de seus esforços de desenvolvimento? Para esse avanço é necessário o time fazer reuniões de brainstorming, pesquisas de usuário e validar a visão de produto com os stakeholders."],
									"star2": ["Você sabia que na maturidade 2 da visão, o time já pode pegar sua ideia do produto e criar um OGSM para ser discutida com os stakeholders e ver se atende os products levels? Além disso, nessa maturidade é necessário fazer um roadmap inicial alinhado com o OGSM e necessidades do cliente, de forma a atingir o próximo nível."],
									"star3": ["Você sabia que na maturidade 3 da visão, é necessário ter um growth board? Só assim será possível todos terem conhecimento sobre a evolução do projeto, seus resultados chaves e suas métricas. Nessa maturidade é necessário revisar periodicamente o roadmap com os stakeholder's e fornecer PLMs com riscos e desafios, juntamente com informações de experimentos lean."],
									"star4": ["Você sabia que uma versão existente de roadmap é útil em todas as maturidades exceto na maturidade 1? Porque nessa maturidade não tem um roadmap prévio, porque é fase de entender as OGSM e fazer brainstorming"],
									"star5": ["Você sabia que só é possível atingir a maturidade 2 de roadmap, quando a equipe tem um roadmap baseado em resultados testáveis por meio de contribuições de usuários e stakeholders?"]
								},
								"contentGym1Level2":{
									"star1": ["Você sabia que apenas na maturidade 4 se espera que a equipe considere proativamente as necessidades dos usuários para orientar as decisões do roadmap?"],
									"star2": ["Você sabia que a única maturidade em que não recebemos os insights dos stakeholders é a maturidade 1?"],
									"star3": ["Você sabia que uma das ações mais básicas para se atingir o nível 2 na maturidade de stakeholders é mapeando os stakeholders do seu produto?"],
									"star4": ["Você sabia que a partir do 3 nível de maturidade dos stakeholder's, é necessário você aplicar consistentemente os princípios do build-measure-learn para evoluir para o nível 4"],
									"star5": ["Você sabia que o principal resultado esperado na maturidade 1 da dimensão backlog é ter o backlog nas métricas de TFS/Jira e Volatilidade/Velocidade do Time de Produto?"]
								},
								"contentGym1Level3":{
									"star1": ["Você sabia que a partir do nível 3 de maturidade do backlog, uma equipe pode usar as métricas de backlog para conversar com os stakeholder's?"],
									"star2": ["Você sabia que após uma equipe atingir o nível de maturidade  4, para ela continuar nesse nível ela precisa fazer Data storytelling leveraging backlog metrics"],
									"star3": ["Você sabia que apenas no nível de maturidade 1 do data driven, os KPI's de produto são dados de referência relevantes para a equipe de produtos?"],
									"star4": ["Você sabia que em todas as maturidades do data driven é esperado uma atualização do roadmap e OGSM's?"],
									"star5": ["Você sabia que na maturidade 4 de data driven é esperado que você aproveite as informações para melhorar seu Growt Board?"]
								},
								"instruGym2Level1": {
									"talk01": ["Deixe todos os módulos em círculo"],
#									"talk01": ["Elimine quase completamente os Bugs: até 2 bugs \nColete os feedbacks dos usuários: Pelo menos 7 feedbacks"],
									"talk02": ["Resolva o desafio antes de ir para a próxima fase"]
									
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
											   ["VISION", "Wait! Before you go, I wanted to offer my help in this. After you can cure the others, come and find me in the main building: The Dell Edifice. There, we can work together to put an end to this!"],
											   ["Dellman", "..."],
											   ["CLOUD", "Yay! We could cure Vision! Now, for we to get to the gym of KPIs, we need to go to the second house on the left"],
											   ["VISION", "Alright then, let's go!"],
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
										["CLOUD", "In the meantime that you were trying to cure the Mentors, I worked on this little thing here! Let 's see now! Cloud puts the MVP inside the machine And..! What..? How is it still not enough…"],
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
							}, "Lobby": {
								"LivroUm": [["O modelo de produtos é um modelo moderno de desenvolvimento de software originado em startups e organizações de desenvolvimento de software orientadas a produtos, que tem como foco a experiência do cliente. O modelo permite agilidade operacional, o que permite que as organizações reajam na velocidade de startups. No modelo de produto, equipes autônomas desenvolvem capacidades focadas em atingir o resultado esperados pela empresa, agindo através de feedbacks diretos com o usuário para rapidamente implantar e entregar valor."],
											["O Modelo de Produto possui 9 dimensões (Vision -> Roadmap -> Stakeholers -> Backlog -> Data Driven -> User KPI's -> Business KPI's -> Deployment KPI's -> Quality KPI's) divididas em 4 níveis de maturidade cada vez maiores como parte da jornada de transformação. À medida que as equipes se transformam adotando as práticas do Modelo de Produto, o POMA (Product Opetation Maturity Assessment) ajudará a equipe identificar onde existem oportunidades de transformação adicionais."],
											["Segue abaixo os nível de maturidade e sua descrição: \n  1-Equipe não adotou essa prática em seu trabalho ou estão em processo de definição \n  2-A equipe começou a seguir esta prática e está acompanhando o progresso. \n  3-Através da prática contínua, a equipe está começando a alcançar os resultados positivos pretendidos. \n  4-Equipe continua progredindo com as boas práticas de forma a obter maior impacto"]
											],
								"LivroDois": [
									["As equipes formadas devem combinar três técnicas para entregar produtos a seus usuários, a primeira são as técnicas do 'The Lean Startup, Eric Reis', que é uma metodologia de criação e gestão de startups. Esse método ensina como criar produtos desejados por clientes, gerando ciclos de aprendizado rápidos, reduzindo o risco de construir o produto errado enquanto confortavelmente se muda de direção, caso necessário."],
									["Essa responsabilidade é do product management e as práticas são: \n -Identificar e testar suposições \n -Ciclo de aprendizagem Lean Startup \n -Decisões orientadas por dados \n -Produto com minima viabilidade (MVP)"],
								],
								"LivroTres": [
									["A segunda técnica é o Human Centered Design, estrutura de design centrada nos desejos e necessidades do usuário final, a fim de garantir que o software resolva um problema real para usuários reais, construindo um produto desejável e com usabilidade. "],
									["Essa técnica é responsabilidade dos designers e suas práticas são: \n -Definição de mentalidade \n -Estudos etnográficos \n -Entrevistas com usuários \n -Criação de protótipos"],
								],
								"LivroQuatro": [
									["A terceira técnica é o Extreme Programming, uma metodologia focada no desenvolvimento de software que possui valores e princípios, que são fundamentados por um conjunto de práticas. Onde o desejo é construir um software funcional em uma velocidade e qualidade consistentes frente a mudanças constantes de requisitos."],
									["Sua responsabilidade é dos desenvolvedores e suas práticas consiste em: \n -Programação Emparelhada \n -Desenvolvimento Orientado a Testes \n -Iterações curtas \n -Integração contínua / Implantação Contínua"],
									["Sua responsabilidade é dos desenvolvedores e suas práticas consiste em: \n -Programação Emparelhada \n -Desenvolvimento Orientado a Testes \n -Iterações curtas \n -Integração contínua / Implantação Contínua"],
								],
								"LivroCinco": [
									["Sabia que as equipes de produto trabalham com a metodologia de Double Diamond? Um processo de desenvolvimento de uma solução, onde é levantado inúmeras hipóteses e problemas. A metodologia é formada por 4 fases distintas descobrir, definir, desenvolver e entregar. As duas primeiras fases- Descobrir e Definir, compõem o primeiro diamante e tem como objetivo principal uma pesquisa aprofundada baseada em um problema. As duas outras fases – Desenvolver e Entregar, são focadas em descobrir uma solução, tendo como base as pesquisas desenvolvidas."],
									["Na Dell se trabalha de forma diferente, os times são pequenos e tem essas características: \n -Consistem em pessoas com conhecimento multidisciplinar em negócios, engenharia e design \n -Ter autonomia para fazer e agir nas decisões de produto \n -São altamente colaborativos e comunicativos \n -Compartilhar a mesma experiência (o ideal é sentar juntos) \n -Estão comprometidos com um resultado, não com uma solução \n -Testar constantemente suas ideias \n -Enviar recursos com frequência \n -Comemore o aprendizado (também conhecido como errar rápido) \n -Abraçar a mudança com novas informações"]
								],

							},
							"Gym01": {
								"Start": ["Here is the Gym of the Mentor of Knowledge! (Vision) based on her own preference, she decided to make her gym a labyrinth! Inside, you will find 3 stars that you have to collect in order to pass to the next phase - there are 3 phases in total. She's a very polite and friendly person, with the amazing ability to see the whole picture and where we should go next. Anyways, good luck!"],
								"Content": {
									"LivroUm": [
										["Você sabia que dentro da dimensão de visão, um time só vai para o estágio 2 após se conscientizar sobre a visão do produto que estão trabalhando e entender como ela se reflete no objetivo de seus esforços de desenvolvimento? Para esse avanço é necessário o time fazer reuniões de brainstorming, pesquisas de usuário e validar a visão de produto com os interessados."],
									],
									"LivroDois": [
										["Você sabia que no estágio 2 da visão, o time já pode pegar sua ideia do produto e criar um OGSM para ser discutida com os stakeholders e ver se atende os products levels? Além disso, nesse estágio é uma necessário fazer um roadmap inicial alinhado com o OGSM e necessidades do cliente, de forma a atingir o próximo level."]
									],
									"LivroTres": [
										["Você sabia que no estágio 3 da visão, é necessário ter um growth board? Só assim será possível todos terem conhecimento sobre a evolução do projeto, seus  resultados chaves e suas métricas. Nesse estágio é necessário revisar periodicamente o roadmap com os stakeholder's e fornecer PLMs com riscos e desafios, juntamente com informações de experimentos lean."],
									],
									"LivroQuatro": [
										["ROADMAP (usando um roteiro baseado em resultados para alinhar os objetivos dos produtos com recursos e lançamentos a longo prazo para orientar as discussões sobre prioridade e desviar as objeções): \n \n Estágios: 1)equipe desconhece ou não mantém um roteiro de produto --> 2) A EQUIPE DESENVOLVEU UM ROTEIRO DE PRODUTO TESTÁVEL BASEADO EM RESULTADOS ATRAVÉS DAS INTERAÇÕES DE USUÁRIO E PARTES INTERESSADAS --> 3)a equipe pode ajustar o roteiro do produto com base nas necessidades do usuário --> 4)equipe considera as necessidades do usuário para orientar proativamente as decisões do roteiro do produto"],
										["Você sabia que uma versão existente de roadmap é útil em todas as maturidades exceto no nível 1? Porque nessa maturidade não tem um roadmap prévio, porque é fase de entender as OGSM e fazer brainstorming"]
									],
									"LivroCinco": [
										["Você sabia que só é possível atingir a maturidade 2 de roadmap, quando a equipe tem um roadmap baseado em resultados testáveis por meio de contribuições de usuários e stakeholders?"],
									],
									"LivroSeis": [
										["Você sabia que o único resultado esperado em todos os níveis de maturidade do Roadmap é um roadmap baseado em resultados?"],
									],
									"LivroSete": [
										["Você sabia que a única maturidade em que não recebemos os insights dos stakeholders é o estágio 1?"],
									],
									"LivroOito": [
										["Você sabia que uma das ações mais básicas para se atingir o nível 2 na maturidade de stakeholders é mapeando os stakeholders do seu produto?"],
									],
									"LivroNove": [
										["Você sabia que a partir do 3 estágio de maturidade dos stakeholder's, é necessário você aplicar consistentemente os principios do build-measure-learn para evoluir para o estágio 4"],
									],
									"LivroDez": [
										["Você sabia que o principal resultado esperado na maturidade 1 na dimensão backlog é ter o backlog nas métricas de TFS/Jira e Volatilidade/Velocidade do Time de Produto?"],
									],
									"LivroOnze": [
										["Você sabia que a partir do 3 nível de maturidade do backlog, você pode atualizar Outcome Based Roadmap com os dados de métricas do backlog?"],
									],
									"LivroDoze": [
										["Você sabia que a partir do 3 nível de maturidade do backlog, uma equipe pode usar as métricas de backlog para conversar com os stakeholder's?"],
									],
									"LivroTreze": [
										["Você sabia que apenas no estágio 1 do data driven, os KPI's de produto são dados de referência relevantes para a equipe de produtos?"],
									],
									"LivroQuatorze": [
										["Você sabia que em todas as maturidades do data driven é esperado uma atualização do roadmap e OGSM's?"],
									],
									"LivroQuinze": [
										["Você sabia que na maturidade 4 de data driven é esperado você aproveitar as informações para melhorar seu Growt Board?"],
									],
								}
							},
							"Gym02": ["Here is the Gym of the Mentor of KPIs! (KPIs) is a very… well… demanding kind of guy, so he decided to make his gym a stepping stone labyrinth! Though… There's one problem… you can't see where you should step or not! As you may already know, inside you will find 3 stars that you have to collect in order to pass to the next phase - there are 3 phases in total. He's a very serious and eloquent person, attentive to all the details, a perfectionist."]
									  ,
							"Gym03": ["Here is the Gym of the Mentor of Validation! (RB) is a very organized, and yet, 'all over the place' kind of woman, so she decided to make her gym a… how do I explain it? It's a puzzle where you have to transform all the symbols into a circle! Just like the other, there are 3 phases in total. She loves to think about the various paths and ways to do the same thing."]
									  

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
								},
								"Content": {
									"Tutorial": {
										"instrucaoUm": ["Neste jogo, cada coluna representa uma dimensão. Assim que as dicas forem apresentadas, pise no quadrado que mais se encaixa com a dica"],
										"instrucaoDois": [""],
									},
									"doubleDiamond": {
										"instrucaoUm": ["Divergir e convergir para descobrir, divergir e convergir para construir"],
										"instrucaoDois": ["Descobrir os melhores problemas -> construir as melhores soluções -> iterar com o usuário baseado em kpi's -> MVP "],
									},
									"lean": {
										"instrucaoUm": ["Reduzir o risco de construir a coisa errada enquanto se muda direção confortavelmente"],
										"instrucaoDois": ["Decisões orientadas por dados"],
									},
									"humanCenterDesigned": {
										"instrucaoUm": ["Garantir que o software resolva um problema real para usuários reais de uma forma desejável, ou seja, com um design, estrutura e a finalidade claros e fáceis de usar"],
										"instrucaoDois": ["Criação de protótipo"],
									},
									"XP": {
										"instrucaoUm": ["Metodologia para conseguir construir softwares funcionais em uma velocidade e qualidade consistentes, mesmo suscetíveis à  recorrentes mudança de requisitos."],
										"instrucaoDois": ["Integrações continuas "],
									},
									"kpiBusiness": {
										"instrucaoUm": ["Essa dimensão é responsável por criar um roadmap baseado em resultados a partir da maturidade nível 2"],
										"instrucaoDois": [""],
									},
									"kpiQuality": {
										"instrucaoUm": ["Prioriza encontrar e resolver bugs antes de adicionar recursos"],
										"instrucaoDois": [""],
									},
									"kpiDeployment": {
										"instrucaoUm": ["Desenvolve maneiras de iteração automática"],
										"instrucaoDois": [""],
									},
									"Stakeholders": {
										"instrucaoUm": ["Quem da inputs importantes ao product team para futuras iterações"],
										"instrucaoDois": [""],
									},
									"Visao": {
										"instrucaoUm": ["Responsável pela visualização dos objetivos, como a implementação de uma Growth Broad"],
										"instrucaoDois": [""],
									},
									"Data": {
										"instrucaoUm": ["Toma decisões baseadas em dados"],
										"instrucaoDois": [""],
									},
									"Road": {
										"instrucaoUm": ["Mapeia os objetivos da equipe, levando em consideração Outcome-Based"],
										"instrucaoDois": [""],
									},
									"Back": {
										"instrucaoUm": ["Acompanha o volume e a volatilidade de user stories."],
										"instrucaoDois": [""],
									},
								}
							},
							"Outros": {}

						}

						}
		   }
#onready var dialogo = {"language": {"pt-br": "teste",
#						"eng": {
#							"intro": ["There was a time, where everything was peaceful. The people were content, the system was working fine, and the ambiance seemed to be just perfect.",
#									  "Though, everyone knows that such harmonious, splendid times don’t last forever. And so, a catastrophe came.",
#									  "No one knows from where it came, no one knows when it started, and no one knew what was truly happening.",
#									  "“What happened to our ever so glorious island?” The people couldn’t help but wonder…"],
#							"instructions": {
#								"collectBooksLobby":["Agora você deverá explorar o mapa e coletar cinco livros, com isso voce entendera o modelo de produtos, suas inspiracoes e seu modo de trabalho."],
#								"collectedBooksLobby":["Parabens!! Agora que voce achou os livros va ate uma casa no lado esquerdo do mapa, la voce encontrara o ginasio 1 e seu mentor"],
#								"gym1":["Parabens! Voce esta no ginasio 1, dentro do ginasio 1, existem 3 labirintos que voce devera atravessar, ao longo do trajeto voce aprendera um pouco das maturidades de vision, roadmap, backlog, stakeholders e data driven"],
#								"instrucAfterGym1":["Agora procure um predio de dois andares no canto superior direito, la voce entrara no ginasio 2 e encontrara seu mentor"],
#								"gym2":["Parabens! Voce chegou no ginasio 2, o ginasio 2 tem 3 fases, para passar de fase voce tera que completar o puzzle, sem as metricas dos seus mentores voce nao conseguira"],
#								"instrucAfterGym2":["Agora procure um canteiro de obras, la esta o ginasio 3 e seu mentor"],
#								"gym3":["Parabens! Voce chegou no ginasio 3, o ginasio 3 tem 3 fases e para completar as fase voce deve atravessar o mapa, mas cuidado que dependendo de onde voce pisar, voce morre. \n\nPara saber o caminho correto voce deve ouvir os conselhos do seu mentor, mas ele nao te dara o caminho apenas te dara dicas"],
#								"mentor": ["Fale com o mentor"]
#										},
#							"dialogo": {
#								"context": {
#									"scene": {
#										"talk1": {
#										}
#									}
#								},
#								"preLobby": {
#									"preLobby": {
#										"talk1": [
#											["NPC", "Oh, you’re finally awake! Are you okay?"],
#											["Dellman", "Yes? I think that I’m fine"],
#											["NPC", "That’s good, that’s really good! Let’s hope for it to continue like this~!"],
#											["Dellman",
#											 "What’s happening here?"],
#											["NPC", ["Oh! Perhaps you had a memory loss due to the shock of the current events. But no one actually knows what is happening, the only information that we have is that people started acting strange out of nowhere… is a rebellion happening?! We’re doomed if that’s the case! Oh, and by the way, I’m —! It’s a pleasure to meet you, Dellman! Even though we already know each other… well, details!"]]
#										],
#										"talk2": ["NPC1", ["I have no idea what’s happening here… can’t anybody save me or wake me up already?",
#														   "I have a family… what’s going to happen to them…?",
#														   "We are all lost and doomed!",
#														   "Don’t talk to me"]
#												  ],
#
#										"talk3": [
#											["NPC2", "I think that succumbing to desperation is never a wise choice. People here are being too loud."],
#											["Dellman", "Do you have any idea about what’s happening here?"],
#											["NPC2", "It depends, what can you offer me in return? *People are just too loud*"]
#										],
#										"talk4": [
#											["NPC2", "Hah… that’s better!"],
#											["Dellman", "So, now can you tell me about what you know?"],
#											["NPC2", ["Indeed, now that my mind is clearer! I believe that it all started a while ago. I’ve noticed that people have unusual behavior while working, so naturally, I decided to investigate more upon it. My main findings were:",
#													  "1- People that were usually active, creative, and open in their decisions began to close themselves and ignore what others said. ",
#													  "2- The ones who were collaborative, started behaving like, pardon the frugal wording, “pricks”.",
#													  "3- Everyone started to work for their own selves and benefits, individualism, in every sense of the word.",
#													  "So, in simple words, this is not something that’s happened out of nowhere, rather, it’s something that’s been created and spread across the whole island"
#													  ],
#											 ["Dellman", "What do you mean with that?"],
#												["NPC2", ["(He seems to be lost in thought)",
#														  "(Better not bother him anymore)"]]]
#										],
#										"talk5": [
#											["NPC3", "Hello~!"],
#											["Dellman", "“Hello! Do you perhaps know what’s happening?"],
#											["NPC3", "Oh, that! Yeah, after all, everyone is talking about that! It’s just like they say! The walls have ears~!"],
#											["Dellman", "All… right..? Could you elaborate on that?"],
#											["NPC3", "Oh, of course, dear~! I’ve heard all around that people are getting crazy everywhere! The more time, the crazier you get! Shouting, laughing, crying, screaming! It’s daunting, my darling. But, it is what it is"],
#											["Dellman", "Alright, thanks for your help, ma’m"],
#											["NPC3", "It’s always a pleasure, darling~!"],
#										],
#										"talk6": [
#											["Dellman", "Hello! Do you have any clue? Of our situation, I mean"],
#											["NPC4", "Hi! Well, I heard that the Mentors were dealing with the problem and that they would come up with an answer soon… Aside from that, I don’t think that I know much else."],
#											["Dellman", "Thanks for your information!"],
#											["NPC4", "Glad to help!"],
#										],
#										"talk7": [
#											["Dellman", "Hello, how are you?"],
#											["CLOUD", "Hii! I'm good, and you, Dellman?"],
#											["Dellman", "I'm Scared! Do you have any useful info?"],
#											["CLOUD", "Well, the ones who can help us the most right now, are the ones who are currently not in this room. Just go to the other room."]
#										],
#										"talk8": [
#											["VISION", "I see that we could gather everyone in here, that’s a relief."],
#											["RB", "Of course, even my last resort planning is pretty splendid and well calculated!"],
#											["KPIs", "Well, of course, without my knowledge, your so-called “ever so good plan” would not have worked!"],
#											["VISION", "Enough of this nonsense! Everyone here knows that without my ability to see beyond things you all would be still debating about whether you should do this or that! In the worst case scenario, you would all be dead already!"],
#											["KPIs", "Vision, you always act as if the world revolves around you, what you do not know is that this might be your demise."],
#											["RB", "Without a proper planning, you’re just a useless daydreamer."],
#											["VISION", "What did you two just said?!"],
#											["Dellman", "..."],
#											["KPIs", "“I have some documentation to finish and analysis to make, so I will be taking my leave."],
#											["RB", "Well, I’m seeing that this meaningless conversation will lead me nowhere, so I’ll go organize my schedules and find different ways to do things."],
#											["VISION", ["Haaaah… they really cannot see what’s in front of their noses. We’ll never get to a CURE without a consensus",
#														"(Vision gives a last scan through the room with his eyes, and leaves.)"]],
#											# balao para o Dellman ir para o room principal
#											["Dellman", "..."]
#										],
#										"talk9": [
#											["CLOUD", "… Well… since the Mentors weren’t of much help, I suppose that I can disclose some information to you: as you might have noticed, our situation is pretty dire. We are dealing with a virus, more precisely, the ——, which is making everyone of the island strange: they have a retrograde thinking and are completely ignoring our so precious clients’ opinions. This seems like a powerful virus because before we knew it, it spread like wildfire!” “And… as you’ve seen, our last hopes rely on that group, the three Mentors, which the disagreement of opinions made them go separate ways… my worst fear is that they are starting to get infected as well..! What should we do?!"],
#											["Dellman", "Well, we’re facing a pretty hard situation here… but let’s keep it cool for now, panicking will only get things worse."],
#											["CLOUD", "You are right, Dellman. I should try to think straight for now… Oh! Yeah! I remember that I tried to make an MVP of a possible antibiotic! Although, it’s nothing nearly completion… it’s all that I could do while the Mentors were arguing."],
#											["DELLMAN", "Where is it?"],
#											["CLOUD", "It’s outside of the house! You can try to gather the knowledge about Lean, XP, and UX that ended up getting lost around the island with all the confusion! Take the opportunity to learn more about them as well, you’ll need it in order to find a cure for this virus! You have to find it!"],
#										],
#										"talk10": [
#											["CLOUD", "It looks like you could gather them all! Nice job!"],
#											["Dellman", "What should I do now?"],
#											["CLOUD", "Oh! You can try to find the mentor of vision!"],
#											["Dellman", "And… how do I find her?"],
#											["CLOUD", "Oh, of course! She’s in the farthest left! You’ll find a house near the residential area on the left of the map! You’re doing great! If you need anything, I’ll be here!"],
#										]
#
#									}
#								},
#								"contentLobby":{
#									"intro": ["O modelo de produtos e um modelo moderno de desenvolvimento de software originado em startups e organizacoes de desenvolvimento de software orientadas a produtos, que tem como foco a experiencia do cliente. O modelo permite agilidade operacional, permitindo organizacoes reajam na velocidade de startups. \nNo modelo de produto, equipes autonomas desenvolvem capacidades focadas em atingir o resultado esperados pela empresa, agindo atraves de feedbacks diretos com o usuario para rapidamente implantar e entregar valor. \nO Modelo de Produto possui nove dimensoes: \n\n-Vision \n-Roadmap \n-Stakeholders \n-Backlog \n-Data Driven \n-User KPI's \n-Business KPI's \n-Deployments KPI's \n-Quality KPI's \n\nCada dimensão é dividida em 4 niveis de maturidade cada vez maiores como parte da jornada de transformacao. A medida que as equipes se transformam adotando as práticas do Modelo de Produto, o POMA (Product Opetation Maturity Assessment) ajudara a equipe identificar onde existem oportunidades de transformacoes adicionais."],
#									"lean": ["As equipes formadas devem combinar tres tecnicas para entregar produtos a seus usuarios, a primeira sao as tecnicas do The Lean Startup, Eric Reis, que e uma metodologia de criacao e gestao de startups. Esse metodo ensina como criar produtos desejados por clientes, gerando ciclos de aprendizado rapidos, reduzindo o risco de construir o produto errado enquanto confortavelmente se muda de direcao, caso necessario. \nEssa responsabilidade e do product management e as práticas sao: \n\n-Identificar e testar suposicoes \n-Ciclo de aprendizagem Lean Startup \n-Decisoes orientadas por dados \n-Produto com minima viabilidade (MVP)"],
#									"hcd": ["A segunda tecnica e o Human Centered Design, estrutura de design centrada nos desejos e necessidades do usuario final, afim de garantir que o software resolva um problema real para usuarios reais, construindo um produto desejável e com usabilidade. \nEssa tecnica e responsabilidade sao dos designers e suas praticas sao: \n\n-Definicao de mentalidade \n-Estudos etnograficos \n-Entrevistas com usuários \n-Criacao de prototipos"],
#									"xp": ["A terceira tecnica e o Extreme Programming, uma metodologia focada no desenvolvimento de software que possui valores e principios, que sao fundamentados por um conjunto de praticas. Onde o desejo e construir um software funcional em uma velocidade e qualidade consistentes frente a mudanças constantes de requisitos. \nSua responsabilidade e dos desenvolvedores e suas praticas consiste em: \n\n-Programacao Emparelhada \n-Desenvolvimento Orientado a Testes \n-Iteracoes curtas \n-Integracao contínua / Implantacao Continua"],
#									"doubleDiamond": ["Sabia que as equipes de produto trabalham com a metodologia de Double Diamond? \nUm processo de desenvolvimento de uma solucao, onde e levantado inumeras hipoteses e problemas. A metodologia e formada por quatro fases distintas descobrir, definir, desenvolver e entregar. As duas primeiras fases Descobrir e Definir, compoem o primeiro diamante e tem como objetivo principal uma pesquisa aprofundada baseada em um problema. As duas outras fases  Desenvolver e Entregar, sao focadas em descobrir uma solucao, tendo como base as pesquisas desenvolvidas. \n\nNa Dell se trabalha de forma diferente, os times sao pequenos e tem essas caracteristicas: \n\n-Consistem em pessoas com conhecimento multidisciplinar em negócios, engenharia e design \n-Ter autonomia para fazer e agir nas decisões de produto \n-Sao altamente colaborativos e comunicativos \n-Compartilhar a mesma experiência (o ideal e sentar-se juntos)"]
#								},
#								"contentGym1Level1":{
#									"star1": ["Voce sabia que dentro da dimensão de visao, um time so vai para a maturidade dois apos se conscientizar sobre a visao do produto que estao trabalhando e entender como ela se reflete no objetivo de seus esforcos de desenvolvimento? Para esse avanco e necessario o time fazer reunioes de brainstorming, pesquisas de usuario e validar a visao de produto com os stakeholders."],
#									"star2": ["Voce sabia que na maturidade dois da visão, o time ja pode pegar sua ideia do produto e criar um OGSM para ser discutida com os stakeholders e ver se atende os products levels? Alem disso, nessa maturidade e necessario fazer um roadmap inicial alinhado com o OGSM e necessidades do cliente, de forma a atingir o proximo level."],
#									"star3": ["Voce sabia que na maturidade tres da visão, e necessario ter um growth board? So assim sera possivel todos terem conhecimento sobre a evolucao do projeto, seus resultados chaves e suas metricas. Nesse estagio e necessario revisar periodicamente o roadmap com os stakeholder's e fornecer PLMs com riscos e desafios, juntamente com informacoes de experimentos lean."],
#									"star4": ["Voce sabia que uma versao existente de roadmap e util em todas as maturidades exceto na maturidade hum? Porque nessa maturidade nao tem um roadmap previo, porque e fase de entender as OGSM e fazer brainstorming"],
#									"star5": ["Voce sabia que so e possivel atingir a maturidade dois de roadmap, quando a equipe tem um roadmap baseado em resultados testaveis por meio de contribuicoes de usuarios e stakeholders?"]
#								},
#								"contentGym1Level2":{
#									"star1": ["Voce sabia que apenas na maturidade quatro se espera que a equipe considere proativamente as necessidades dos usuarios para orientar as decisoes do roadmap?"],
#									"star2": ["Voce sabia que a unica maturidade em que nao recebemos os insights dos stakeholders e a maturidade hum?"],
#									"star3": ["Voce sabia que uma das acoes mais basicas para se atingir o nivel dois na maturidade de stakeholders e mapeando os stakeholders do seu produto?"],
#									"star4": ["Voce sabia que a partir do tres nivel de maturidade dos stakeholder's, e necessario voce aplicar consistentemente os principios do build-measure-learn para evoluir para o nivel quatro"],
#									"star5": ["Voce sabia que o principal resultado esperado na maturidade hum da dimensão backlog e ter o backlog nas metricas de TFS/Jira e Volatilidade/Velocidade do Time de Produto?"]
#								},
#								"contentGym1Level3":{
#									"star1": ["Voce sabia que a partir do nivel tres de maturidade do backlog, uma equipe pode usar as metricas de backlog para conversar com os stakeholder's?"],
#									"star2": ["Voce sabia que apos uma equipe atingir o nivel de maturidade  quatro, para ela continuar nesse nivel ela precisa fazer Data storytelling leveraging backlog metrics"],
#									"star3": ["Voce sabia que apenas no nivel de maturidade hum do data driven, os KPI's de produto sao dados de referencia relevantes para a equipe de produtos?"],
#									"star4": ["Voce sabia que em todas as maturidades do data driven e esperado uma atualização do roadmap e OGSM's?"],
#									"star5": ["Voce sabia que na maturidade quatro de data driven e esperado que voce aproveite as informacoes para melhorar seu Growt Board?"]
#								},
#								"instruGym2Level1": {
#									"talk01": ["Elimine quase completamente os Bugs: ate 2 bugs \nColete os feedbacks dos usuários: Pelo menos 7 feedbacks"],
#
#								},
#								"preBoss01": {
#									"talk01": ["VISION", "You… you are that little blue guy from the library… if you’re here to face me, then first you’ll have to prove your worth to me. If you can learn and surpass me in my area of expertise, then I’ll consider listening to what you have to say"],
#									"talk02": [["VISION", "I’m sorry. My vision must have gotten blurry over time. I should apologize for the troubles that I caused, so I’m deeply sorry!"],
#											   ["Dellman", "It’s all right! Everyone makes mistakes, the important part is how you deal with them!  I’m glad that we could treat your condition!"],
#											   ["VISION", "No, it’s me who should be thankful! My view has never been more clear now!"],
#											   ["Dellman", "We have no time to waste now! Could you create another MVP of the antidote??"],
#											   ["VISION", "Of Course!"],
#											   ["Dellman", "..."],
#											   ["CLOUD", "Hmm… it seems good… but not enough yet… There are other key components missing still, we need to continue our journey! Let’s find the next mentor,KPIs!"],
#											   ["VISION", "Wait! Before you go, I wanted to offer my help in this. After you can cure the others, come and find me in the main building: The Dell Edifice. There, we can work together to put an end to this!"],
#											   ["Dellman", "..."],
#											   ["CLOUD", "Yay! We could cure Vision! Now, for we to get to the gym of KPIs, we need to go to the second house on the left"],
#											   ["VISION", "Alright then, let's go!"],
#											   ]
#								},
#								"preBoss02": {
#									"talk01": ["KPIs", "Who dares to interfere, when I am in the middle of my research? You must be  gormless to waltz your way in thinking that you can act however you may see fit. I am most certainly not allowing that!"],
#									"talk02": [
#										["KPIs", "I… apologize. I was not in my right senses. Therefore, I ask for your forgiveness, the way that I conducted was deplorable and unjustified."],
#										["CLOUD", "Such eloquent talking! No need to apologize, there are times that you just want to stick to your beliefs and your past experiences."],
#										["Dellman", "There's no harm in wanting to focus or follow what you know, but you should always be open and consider others opinions."],
#										["KPIs", "I'm relieved to have such empathetic companions, this is a real blessing. I offer you my gratitude for understanding all my misbehavior, and also for everything that you've done for me."],
#										["CLOUD", "Now I have to offer YOU my apologies, we have to check the MVP in order to verify whether it's plausible now!"],
#										["Dellman", "I never knew that Cloud could speak like that"],
#										["KPIs", "I approve of that form of speech!"],
#										["CLOUD", "No time to waste, no time to waste! Let me look at the MVP!"],
#										["Dellman", "“Alright, here it is"],
#										["CLOUD", "Wow! It’s so carefully well made! But still… it doesn’t seem to be good enough yet…"],
#										["Dellman", "What’s missing now?"],
#										["CLOUD", "The validation… Yes! The validation of your knowledge!"],
#										["Dellman", "The what?!"],
#										["CLOUD", "We need to get to the Mentor of RB and validate! There's no time! Oh, if you excuse me, I'll go first"],
#										["Dellman", "I don't know what's up with this guy… I apologize in Cloud's stead, he's rushing to get the antidote finished."],
#										["KPIs", "It's understandable. I'm glad that everything seems to be, at least partially, working out."],
#										["Dellman", "Could you please go to The Dell Edifice? Vision asked us to gather everyone up there. That is… if you want to help us…"],
#										["KPIs", "I would be more than happy to assist you in this matter."],
#										["CLOUD", "Now that we treated KPIs, the one that's left is RB! For we to get to the gym of Validation, we need to go to constructions site on the bottom right"],
#										["Dellman", "So we got to the last one, then what are we waiting for? Let's go!"],
#									]
#								},
#								"preBoss03": {
#									"talk01": ["RB", "Who are you? Whatever, it doesn’t matter. You’re useless to me if you don’t know how to swiftly create a well calculated plan, considering that changes will most definitely occur, you should adapt your plans accordingly! Go back to where you belong if you can’t even organize yourself!"],
#									"talk02": [
#										["RB", "Oh! That was a heck of a ride! Oh well, it looks like I was the one who ended up losing my way in the end. I guess it happens! Anyways, I hope that you can forgive me! As I was the one who lost my way."],
#										["CLOUD", "It’s all right! Everyone gets lost sometimes, the most important thing is to never lose sight of your heart's reason!"],
#										["Dellman", "Yes, Cloud is right. What’s good now is that you are not infected anymore!"],
#										["RB", "Yes, thanks for worrying about me!"],
#										["CLOUD", "There's no time to waste! Here's something that I made in order to see if the MVP of the antidote is good enough or not!"],
#										["Dellman", "Did you create this now??"],
#										["CLOUD", "In the meantime that you were trying to cure the Mentors, I worked on this little thing here! Let 's see now! *Cloud puts the MVP inside the machine* And..! What..? How is it still not enough…"],
#										["Dellman", "What happened??"],
#										["CLOUD", "Even with all of the knowledge from the Mentors… the antidote is still not complete…"],
#										["Dellman", "How is that possible… what should we do now?"],
#										["RB", "Something seems to be smelling fishy, care to explain what's happening?"],
#										["Dellman", "The antidote that we were working hard to finish is not completed yet, even after all that we've done…"],
#										["RB", "Oh, is that it? And you're willing to give up just 'cause of that?"],
#										["Dellman", "What? But we've done everything that we could!"],
#										["RB", "If there's no solution to a problem, then consider it solved! But this problem does have a solution, no?"],
#										["Dellman", "What…? (then you remember the other Mentors and that they're waiting at The Dell Edifice) Oh, yes! Vision and KPIs are waiting in The Dell Edifice! We can gather our knowledge to create a proper cure to this!"],
#										["CLOUD", "OoooOOOooooOOooH~!!!"],
#										["RB", "That's the spirit! My boy!"],
#										["CLOUD", "So what are we waiting for?! Let’s go talk to Vision and KPIs! No time, no time!"],
#										["RB", "He seems to be very enthusiastic about it now! It's important to not lose that shine in his eyes! haha"],
#										["Dellman", "Oh well… I’m sorry on his behalf, he’s very worried and he’s trying to find this cure asap."],
#										["RB", "It’s alright, it’s not like I haven’t known him for a lifetime already to not know how he behaves, lol"],
#										["Dellman", "Then, could you please go to The Dell Edifice with us? Vision and RB are already waiting there, so that we can gather our forces and make a proper cure!"],
#										["RB", "My, of course I will help! Give me the butter and the knife and I’ll get the bread, so that we can create the perfect antidote!"],
#										["Dellman", "All… right..?"],
#									]
#								}
#							}
#						}, "balao": {
#							"context": {
#								"scene": {
#									"balaoum": {}
#								}
#							},
#							"preLobby": {
#								"preLobby": {
#									"talk1":  ["So, the people have no idea what’s happening… we’re not in a good situation here… maybe I should try to find out myself what’s happening here? It doesn’t seem like a bad idea but… what if something happens to me in the process? With my memory problems, I’m the most clueless here…)",
#											   "(if you try to get out of the building it will say: “Maybe I shouldn’t get out yet, who knows what’s happening out there? I don’t want to risk it for now…"],
#									"talk3": ["(He seems to have a clearer sense of what’s happening, if I can satisfy him, it would be great. He seems to be bothered by all the noise)"],
#								}
#							}, "Lobby": {
#								"LivroUm": [["O modelo de produtos é um modelo moderno de desenvolvimento de software originado em startups e organizações de desenvolvimento de software orientadas a produtos, que tem como foco a experiência do cliente. O modelo permite agilidade operacional, o que permite que as organizações reajam na velocidade de startups.No modelo de produto, equipes autônomas desenvolvem capacidades focadas em atingir o resultado esperados pela empresa, agindo através de feedbacks diretos com o usuário para rapidamente implantar e entregar valor."],
#											["O Modelo de Produto possui 9 dimensões (Vision -> Roadmap -> Stakeholers -> Backlog -> Data Driven -> User KPI's -> Business KPI's -> Deployment KPI's -> Quality KPI's) divididas em 4 níveis de maturidade cada vez maiores como parte da jornada de transformação. À medida que as equipes se transformam adotando as práticas do Modelo de Produto, o POMA (Product Opetation Maturity Assessment) ajudará o equipe identificar onde existem oportunidades de transformação adicionais."],
#											["Segue abaixo os nível de maturidade e sua descrição: \n  1-Equipe não adotou essa prática em seu trabalho ou estão em processo de definição \n  2-A equipe começou a seguir esta prática e está acompanhando o progresso. \n  3-Através da prática contínua, a equipe está começando a alcançar os resultados positivos pretendidos. \n  4-Equipe continua progredindo com as boas práticas de forma a obter maior impacto"]
#											],
#								"LivroDois": [
#									["As equipes formadas devem combinar três técnicas para entregar produtos a seus usuários, a primeira são as técnicas do 'The Lean Startup, Eric Reis', que é uma metodologia de criação e gestão de startups. Esse método ensina como criar produtos desejados por clientes, gerando ciclos de aprendizado rápidos, reduzindo o risco de construir o produto errado enquanto confortalvemente se muda de direção, caso necessário."],
#									["Essa responsabilidade é do product management e as práticas são: \n -Identificar e testar suposições \n -Ciclo de aprendizagem Lean Startup \n -Decisões orientadas por dados \n -Produto com minima viabilidade (MVP)"],
#								],
#								"LivroTres": [
#									["A segunda técnica é o Human Centered Design, estrutura de design centrada nos desejos e necessidades do usuário final, afim de garantir que o software resolva um problema real para usuários reais, construindo um produto desejável e com usabilidade. "],
#									["Essa técnica é responsabilidade dos designers e suas práticas são: \n -Definição de mentalidade \n -Estudos etnográficos \n -Entrevistas com usuários \n -Criação de protótipos"],
#								],
#								"LivroQuatro": [
#									["A terceira técnica é o Extreme Programming, uma metodologia focada no desenvolvimento de software que possui valores e princípios, que são fundamentados por um conjunto de práticas. Onde o desejo é construir um software funcional em uma velocidade e qualidade consistentes frente a mudanças constantes de requisitos."],
#									["Sua responsabilidade é dos desenvolvedores e suas práticas consiste em: \n -Programação Emparelhada \n -Desenvolvimento Orientado a Testes \n -Iterações curtas \n -Integração contínua / Implantação Contínua"],
#								],
#								"LivroCinco": [
#									["Sabia que as equipes de produto trabalham com a metodologia de Double Diamond? Um processo de desenvolvimento de uma solução, onde é levantado inúmeras hipóteses e problemas. A metodolgia é formada por 4 fases distintas descobrir, definir, desenvolver e entregar. As duas primeiras fases- Descobrir e Definir, compõem o primeiro diamante e tem como objetivo principal uma pesquisa aprofundada baseada em um problema. As duas outras fases – Desenvolver e Entregar, são focadas em descobrir uma  solução, tendo como base as pesquisas desenvolvidas."],
#									["Na Dell se trabalha de forma diferente, os times são pequenos e tem essas características: \n -Consistem em pessoas com conhecimento multidisciplinar em negócios, engenheiria e design \n -Ter autonomia para fazer e agir nas decisões de produto \n -São altamente colaborativos e comunicativos \n -Compartilhar a mesma experiência (o ideal é sentar juntos) \n -Estão comprometidos com um resultado, não com uma solução \n -Testar constantemente suas ideias \n -Enviar recursos com frequência \n -Comemore o aprendizado (também conhecido como errar rápido) \n -Abraçar a mudança com novas informações"]
#								],
#
#							},
#							"Gym01": {
#								"Start": ["Here is the Gym of the Mentor of Knowledge! (Vision) based on her own preference, she decided to make her gym a labyrinth! Inside, you will find 3 stars that you have to collect in order to pass to the next phase - there are 3 phases in total. She's a very polite and friendly person, with the amazing ability to see the whole picture and where we should go next. Anyways, good luck!"],
#								"Content": {
#									"LivroUm": [
#										["Você sabia que dentro da dimensão de visão, um time só vai para o estágio 2 após se conscientizar sobre a visão do produto que estão trabalhando e entender como ela se reflete no objetivo de seus esforços de desenvolvimento? Para esse avanço é necessário o time fazer reuniões de brainstorming, pesquisas de usuário e validar a visão de produto com os interessados."],
#									],
#									"LivroDois": [
#										["Você sabia que no estágio 2 da visão, o time já pode pegar sua ideia do produto e criar um OGSM para ser discutida com os stakeholders e ver se atende os products levels? Além disso, nesse estágio é uma necessário fazer um roadmap inicial alinhado com o OGSM e necessidades do cliente, de forma a atingir o próximo level."]
#									],
#									"LivroTres": [
#										["Você sabia que no estágio 3 da visão, é necessário ter um growth board? Só assim será possível todos terem conhecimento sobre a evolução do projeto, seus  resultados chaves e suas métricas. Nesse estágio é necessário revisar periodicamente o roadmap com os stakeholder's e fornecer PLMs com riscos e desafios, juntamente com informações de experimentos lean."],
#									],
#									"LivroQuatro": [
#										["ROADMAP (usando um roteiro baseado em resultados para alinhar os objetivos dos produtos com recursos e lançamentos a longo prazo para orientar as discussões sobre prioridade e desviar as objeções): \n \n Estágios: 1)equipe desconhece ou não mantém um roteiro de produto --> 2) A EQUIPE DESENVOLVEU UM ROTEIRO DE PRODUTO TESTÁVEL BASEADO EM RESULTADOS ATRAVÉS DAS INTERAÇÕES DE USUÁRIO E PARTES INTERESSADAS --> 3)a equipe pode ajustar o roteiro do produto com base nas necessidades do usuário --> 4)equipe considera as necessidades do usuário para orientar proativamente as decisões do roteiro do produto"],
#										["Você sabia que uma versão existente de roadmap é útil em todas as maturidas exceto no nível 1? Porque nessa maturidade não tem um roadmap prévio, porque é fase de entender as OGSM e fazer brainstorming"]
#									],
#									"LivroCinco": [
#										["Você sabia que só é possível atingir a maturidade 2 de roadmap, quando a equipe tem um roadmap baseado em resultados testáveis por meio de contribuições de usuários e stakeholders?"],
#									],
#									"LivroSeis": [
#										["Você sabia que o único resultado esperado em todos os níveis de maturidade do Roadmap é um roadmap baseado em resultados?"],
#									],
#									"LivroSete": [
#										["Você sabia que a única maturidade em que não recebemos os insights dos stakeholders é o estágio 1?"],
#									],
#									"LivroOito": [
#										["Você sabia que uma das ações mais básicas para se atingir o nível 2 na maturidade de stakeholders é mapeando os stakeholders do seu produto?"],
#									],
#									"LivroNove": [
#										["Você sabia que a partir do 3 estágio de maturidade dos stakeholder's, é necessário você aplicar consistentemente os principios do build-measure-learn para evoluir para o estágio 4"],
#									],
#									"LivroDez": [
#										["Você sabia que o principal resultado esperado namaturidade 1 na dimensão backlog é ter o backlog nas métricas de TFS/Jira e Volatilidade/Velocidade do Time de Produto?"],
#									],
#									"LivroOnze": [
#										["Você sabia que a partir do 3 nível de maturidade do backlog, você pode atualizar Outcome Based Roadmap com os dados de métricas do backlog?"],
#									],
#									"LivroDoze": [
#										["Você sabia que a partir do 3 nível de maturidade do backlog, uma equipe pode usar as métricas de backlog para conversar com os stakeholder's?"],
#									],
#									"LivroTreze": [
#										["Você sabia que apenas no estágio 1 do data driven, os KPI's de produto são dados de referência relevantes para a equipe de produtos?"],
#									],
#									"LivroQuatorze": [
#										["Você sabia que em todas as maturidades do data driven é esperado uma atualização do roadmap e OGSM's?"],
#									],
#									"LivroQuinze": [
#										["Você sabia que na maturidade 4 de data driven é esperado você aproveitar as informações para melhorar seu Growt Board?"],
#									],
#								}
#							},
#							"Gym02": ["Here is the Gym of the Mentor of KPIs! (KPIs) is a very… well… demanding kind of guy, so he decided to make his gym a stepping stone labyrinth! Though… There's one problem… you can't see where you should step or not! As you may already know, inside you will find 3 stars that you have to collect in order to pass to the next phase - there are 3 phases in total. He's a very serious and eloquent person, attentive to all the details, a perfectionist."]
#									  ,
#							"Gym03": ["Here is the Gym of the Mentor of Validation! (RB) is a very organized, and yet, 'all over the place' kind of woman, so she decided to make her gym a… how do I explain it? It's a puzzle where you have to transform all the symbols into a circle! Just like the other, there are 3 phases in total. She loves to think about the various paths and ways to do the same thing."]
#
#
#						}, "instrucao": {
#							"context": {
#								"scene": {
#									"instrucaoUm": {}
#								}
#							},
#							"preLobby": {
#								"preLobby": {
#									"instrucaoUm": ["Talk to the NPCs in the room to get more information about the situation."],
#								}
#							},
#							"Lobby": {
#								"instrucaoUm": ["Find the 5 books in the Lobby and bring them to the room."]
#							},
#							"Gym01": {
#								"Fase01": {
#									"instrucaoUm": ["Find the vision mentor in the first house on the left of the map."]
#								}
#							},
#							"Gym02": {
#								"Fase01": {
#									"instrucaoUm": ["Find the KPIs mentor in the second house on the left of the map."]
#								}
#							},
#							"Gym03": {
#								"Fase01": {
#									"instrucaoUm": ["Find the RB mentor in the construction site on the bottom right of the map."]
#								},
#								"Content": {
#									"Tutorial": {
#										"instrucaoUm": ["Neste jogo, cada coluna representa uma dimensão. Assim que as dicas forem apresentadas, pise no quadrado que mais se encaixa com a dica"],
#										"instrucaoDois": [""],
#									},
#									"doubleDiamond": {
#										"instrucaoUm": ["Divergir e convergir para descobrir, divergir e convergir para construir"],
#										"instrucaoDois": ["Descobrir os melhores problemas -> construir as melhores soluções -> iterar com o usuário baseado em kpi's -> MVP "],
#									},
#									"lean": {
#										"instrucaoUm": ["Reduzir o risco de construir a coisa errada enquanto se muda direção confortavelmente"],
#										"instrucaoDois": ["Decisões orientadas por dados"],
#									},
#									"humanCenterDesigned": {
#										"instrucaoUm": ["Garantir que o software resolva um problema real para usuários reais de uma forma desejável, ou seja, com um design, estrutura e a finalidade claros e fáceis de usar"],
#										"instrucaoDois": ["Criação de protótipo"],
#									},
#									"XP": {
#										"instrucaoUm": ["Metodologia para conseguir construir softwares funcionais em uma velocidade e qualidade consistentes, mesmo suscetíveis à  recorrentes mudança de requisitos."],
#										"instrucaoDois": ["Integrações continuas "],
#									},
#									"kpiBusiness": {
#										"instrucaoUm": ["Essa dimensão é responsável por criar um roadmap baseado em resultados a partir da maturidade nível 2"],
#										"instrucaoDois": [""],
#									},
#									"kpiQuality": {
#										"instrucaoUm": ["Prioriza encontrar e resolver bugs antes de adicionar recursos"],
#										"instrucaoDois": [""],
#									},
#									"kpiDeployment": {
#										"instrucaoUm": ["Desenvolve maneiras de iteração automática"],
#										"instrucaoDois": [""],
#									},
#									"Stakeholders": {
#										"instrucaoUm": ["Quem da inputs importantes ao product team para futuras iterações"],
#										"instrucaoDois": [""],
#									},
#									"Visao": {
#										"instrucaoUm": ["Responsável pela visualização dos objetivos, como a implementação de uma Growth Broad"],
#										"instrucaoDois": [""],
#									},
#									"Data": {
#										"instrucaoUm": ["Toma decisões baseadas em dados"],
#										"instrucaoDois": [""],
#									},
#									"Road": {
#										"instrucaoUm": ["Mapeia os objetivos da equipe, levando em consideração Outcome-Based"],
#										"instrucaoDois": [""],
#									},
#									"Back": {
#										"instrucaoUm": ["Acompanha o volume e a volatilidade de user stories."],
#										"instrucaoDois": [""],
#									},
#								}
#							},
#							"Outros": {}
#
#						}
#
#						}
#		   }
#
#
