-- USE ffb_main;

/*
 * Authors
 * NOTE - INSERT empty author for abandoned accounts 
 */
DELETE FROM `authors`;
INSERT INTO `authors`(`id`, `name`, `creation_date`, `update_date`, `delete_date`) VALUES (1,'','1970-01-01','1970-01-01', NULL);

INSERT INTO `authors` (`name`) 
VALUES 
("123irish"),
("Abigail89"),
("Aceofdiamonds"),
("Airam06"),
("Allyrion"),
("Alyndra"),
("Ap_aelfwine"),
("Argenterie"),
("Ariaojou"),
("Aspionage"),
("Atrxx93"),
("AuntieL"),
("BananasPyjamas"),
("Browser13"),
("Ch4"),
("ChampionOfKratos"),
("Charleybradburies"),
("Chazpure"),
("Cj Spencer"),
("Clell65619"),
("Clio_jlh"),
("Daeneryske"),
("DepravedDevil"),
("Dime"),
("Dirtyuncle"),
("Disappearing Boy"),
("Divagonzo"),
("Dorothea_Greengrass"),
("Emmagrant01"),
("Eric Michael Kline"),
("Esama"),
("Farbautidottir"),
("FanfictionWriter101"),
("Femmeslyth"),
("Fightfortherightsofhouseelves"),
("Flipflop_diva"),
("Fluffybookfaerie"),
("Frenchhornbook"),
("Gracerene"),
("GreenhouseThree"),
("Ghostoflinny"),
("Hallows Seeker"),
("Harby"),
("HarryGinnyTonks"),
("HeartsIgnite"),
("Heyitsamorette (AmoretteHD)"),
("Hollidayparty"),
("Hollywoodland"),
("Holyfant"),
("HPTrio"),
("IAltoSax"),
("Icicle"),
("Idleside"),
("Inell"),
("IridescentLugia"),
("Iwant2baweasley (becboobear)"),
("Jayf"),
("Jm1681"),
("Jumper712"),
("Kabal42"),
("Karmealion"),
("Lamp23"),
("Leggo My Lego Harry Potter (Runic_Purple_Panda)"),
("Leviathan0999"),
("Lightofdaye"),
("Liiilyevans"),
("Likebunnies"),
("Lily_pearl (lilyandjoey)"),
("Litfreak89"),
("Littlepuff04"),
("Lokifan"),
("Lomonaaeren"),
("Lostonplatform934"),
("LRThunder"),
("LuanMao"),
("Luna_Weasley03"),
("Luvsanime02"),
("Luvscharlie"),
("Magical_Worlds"),
("MargaretSexyMum"),
("Maraudersaffair"),
("MayorHaggar"),
("Me413"),
("Megamatt09"),
("Methos (Methos2523)"),
("MimiAliceYorke"),
("Missmusicluver"),
("Musyc"),
("M'jai"),
("Nataku's Wrath"),
("NidoranDuran"),
("Nixrocket"),
("Noctus Noxia"),
("Oakel"),
("Olivieblake"),
("Pelespen"),
("PetrificusSomewhatus"),
("Phoenixgal"),
("Pommedeplume"),
("Pottermum"),
("PotterSmut12"),
("Previouslysane (altar_boy)"),
("Prime_Blue"),
("Prince_Asmo"),
("ProfessorQuill"),
("QuarantineClean"),
("QuidditchMom (eibbil_one)"),
("Ragdoll"),
("Red_jacobson"),
("Rickey"),
("Romaine"),
("Ronslady23"),
("RosaCalavera"),
("RubySaintClaire"),
("RZZMG"),
("R_Collins"),
("Sarah1281"),
("Sarcastrow"),
("SazzyLJ"),
("Scarletladyy"),
("ScribblingSteve"),
("Scruffy1"),
("SeaFeudJagger"),
("Selphie800"),
("Senigata"),
("SeriouslySam"),
("Sheltie1987"),
("Smutty_claus"),
("Snowblind12"),
("Somebody's Nightmare"),
("Songquake"),
("SuperMegaAwesomeNinja"),
("Star54kar"),
("Stardust_Warrior"),
("Starstruck1986"),
("TableForThree_Archivist"),
("Takearisk"),
("TarnishedArmour"),
("Thatsarockfact55"),
("ThatsRealMagic"),
("TheHallowsInMe31"),
("Thewaywedo33"),
("The_Lost_Nyctophiliac"),
("Tjs_whatnot"),
("Tommigoesfroging"),
("Torino10154"),
("Triage"),
("Tryslora"),
("TsyberRhaegal"),
("Twisted_Mind"),
("Ufohnoparty (why_didnt_i_get_any_soup)"),
("VanessaWolfie"),
("VelvetInferno"),
("VeryBerry96"),
("Voxangelus"),
("Walgesang"),
("Wendings"),
("WerewolfWarriro"),
("WokFriedIce"),
("Woldy"),
("Wyrdeen"),
("Zakhro"),
("Zephyr_Fauchelevent"),
("Zoelily");


/*
 * Fanfictions
 * 0 -> 'K / 3', 1 -> 'K+ / 7', 2 -> 'T / 12', 3 -> 'M / 16', 4 -> 'MA / 18'
 */
DELETE FROM `fanfictions`;
INSERT INTO `fanfictions` (`name`, `author_id`, `rating_id`, `description`, `language_id`)
SELECT "Dancing Dragonflies" as name, a.id as author_id, 2 as rating_id, "Most people have dysfunctional parents. Mine's a blonde psycho giant robot pilot. I am Taylor Hebert, and my mom Ange is a horrible mother." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Jayf" AND l.name="English"
UNION
SELECT "Necessary" as name, a.id as author_id, 2 as rating_id, "Ange's birthday is coming! But why is Tusk nowhere to be seen?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Ariaojou" AND l.name="English"
UNION
SELECT "Life in the New World" as name, a.id as author_id, 2 as rating_id, "The battle with Embryo concluded, Ange and her friends have settled into a peaceful life among the Dragons, in the Real Earth. Love is in the air, and more importantly so is competition (And Curry!) as Ange and Salamandinay finally finish their battle, with a little help from their friends." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Jm1681" AND l.name="English"
UNION
SELECT "We'll not die!" as name, a.id as author_id, 1 as rating_id, "We cannot die here. We must go back. To the refuge. Where our light… no, my light, is waiting for me." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Cj Spencer" AND l.name="English"
UNION
SELECT "Cross Ange: The Knight of Hilda" as name, a.id as author_id, 2 as rating_id, "What if there was an underground pro-Norma sympathist movement in the world of Cross Ange? And what if one of them encountered Hilda at the lowest point in her life and his destiny became tied up with hers?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Eric Michael Kline" AND l.name="English"
UNION
SELECT "Waiting" as name, a.id as author_id, 1 as rating_id, "It's Tifa's birthday and the rest of AVALANCHE is on their way to Seventh Heaven to celebrate. Before they arrive, all she has to do is clear out a monster nest all by her lonesome. After all, Cloud hasn't come back from his deliveries yet. Right?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Me413" AND l.name="English"
UNION
SELECT "The Lost Love Letters of Cloud Strife" as name, a.id as author_id, 2 as rating_id, "A series of unsent letters written from Cloud to Tifa, since the beginning." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Somebody's Nightmare" AND l.name="English"
UNION
SELECT "The Comeback Kid" as name, a.id as author_id, 3 as rating_id, "Fifteen years ago, the rush of battle and combat were an everyday part of Tifa's life. With the world calm, marriage and family life have made her complacent, and Tifa feels like she has lost her edge. With a little help from Cloud, she reawakens the passion for combat she once had, unaware that ghosts from her past are ready to remerge, sending her on a mission of self-discovery." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Somebody's Nightmare" AND l.name="English"
UNION
SELECT "Innocent Feelings" as name, a.id as author_id, 1 as rating_id, "It was just a kind gesture between neighbors, but it was also the spark of something very special." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Senigata" AND l.name="English"
UNION
SELECT "Journey of a Barmaid" as name, a.id as author_id, 3 as rating_id, "As Cloud and Zack were taken to the Shinra Mansion Tifa had the good fortune to be rescued by Zangan. But what actually happened after arriving in Midgar. Where did our favorite Barmaid start her path that would lead her to fight against Shinra, reunite with an old friend and, eventually, save the planet from destruction?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Senigata" AND l.name="English"
UNION
SELECT "Emerald Dream" as name, a.id as author_id, 3 as rating_id, "Being part of Avalanche had always been one of the greatest things in Jessie's life, something that made her able to fight the injustice of Shinra, but it had also given her the chance to meet the person that she would eventually come to call her best friend. One day, Tifa arrived with a stranger called Cloud Strife." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Senigata" AND l.name="English"
UNION
SELECT "Golden Respite" as name, a.id as author_id, 2 as rating_id, "After their little adventure in the Gold Saucer, the group decided to take a well deserved break before continuing on their journey to stop Sephiroth. As Tifa was contemplating what she should do with her free time, she was approached by none other than Aerith, asking for her help." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Senigata" AND l.name="English"
UNION
SELECT "Lost Heart" as name, a.id as author_id, 2 as rating_id, "Reeling from the loss of Aerith, the party decides to spend the night at Icicle Inn. With nothing much to do, Tifa is left dealing with her own doubts and anxieties in regards to Cloud. Amids the conflict inside herself, she makes a discovery about her departed friend." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Senigata" AND l.name="English"
UNION
SELECT "Fractured Mind" as name, a.id as author_id, 2 as rating_id, "Cloud was gone, Meteor has been summoned and the Weapons were running rampant. To Tifa, it felt like everything was lost, and she had no idea what she should do now. If only Cloud was with them..." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Senigata" AND l.name="English"
UNION
SELECT "Starlight" as name, a.id as author_id, 3 as rating_id, "Shinra was finished. Imploded on itself as soon as Rufus had been taken out, leaving Midgar in total chaos. As Avalanche was helping the civilians of Midgar, Tifa find herself seeking the one person she had left behind and, eventually, confronts her feelings for the boy that had once promised to be her hero under a starlit sky." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Senigata" AND l.name="English"
UNION
SELECT "Post Crisis" as name, a.id as author_id, 3 as rating_id, "Loss and tragedy had always been part of their life. The pain of loss and the guilt of being the ones to survive had nearly torn them apart. But with Geostigma gone, and the burden of Cloud's guilt being lifted from his shoulders, it was time for them move forward. To leave their past regrets behind and finally let themselves experience true happiness." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Senigata" AND l.name="English"
UNION
SELECT "The Gunslinger" as name, a.id as author_id, 2 as rating_id, "Vincent Valentine: A hero of legend, sleeping through time. What happens when he wakes up in Spira to find a new terror destroying the land and a new group of heroes asking for his help?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Nataku's Wrath" AND l.name="English"
UNION
SELECT "Final Fantasy: Guardians" as name, a.id as author_id, 2 as rating_id, "Sakura is a young Al Bhed girl full of life and spirit. She has a fairly normal life with her Uncle Cid and cousin Rikku. But when Rikku finds a strange boy washed up in a cave who claims he's from Zanarkand, a city destroyed for 1000 years, her life will change forever." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="VeryBerry96" AND l.name="English"
UNION
SELECT "Twist in Fate" as name, a.id as author_id, 2 as rating_id, "After escorting 3 summoners in a row, Lady Yue had enough. Until she meets up with Lady Yuna and her guardians that changed her world upside down. Follow Lady Yue as she gains new friends, new family and falls for a certain legendary guardian in red. But what awaits them all in Zanarkand?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="IAltoSax" AND l.name="English"
UNION
SELECT "Final Fantasy X: All Bets Are Off" as name, a.id as author_id, 3 as rating_id, "The Zanarkand Abes are a betting bunch, but what happens when they place their bets on the most precious prize of all: the virginity of the most popular girl at school. It's not as easy as it seems, and they find all sorts of trouble along the way." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Selphie800" AND l.name="English"
UNION
SELECT "All Bets Are Off: The Sequel" as name, a.id as author_id, 3 as rating_id, "This story continues to follow the Zanarkand gang through their summer, and their first year of college." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Selphie800" AND l.name="English"
UNION
SELECT "FFX: All Bets Are Off 3: Tidus & Yuna Forever" as name, a.id as author_id, 3 as rating_id, "The story picks up six months later, and the gang are preparing for their sophomore year of college." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Selphie800" AND l.name="English"
UNION
SELECT "FFX: All Bets Are Off 4: For the Love of Tidus" as name, a.id as author_id, 3 as rating_id, "It continues to chronicle the lives of the 8 main characters as they prepare for their junior year at Zanarkand University. However, this summer an unforeseen event occurs that changes their lives." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Selphie800" AND l.name="English"
UNION
SELECT "All Bets Are Off V: The Conclusion" as name, a.id as author_id, 3 as rating_id, "The conclusion of my All Bets Are Off series." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Selphie800" AND l.name="English"
UNION
SELECT "Neo-Genesis" as name, a.id as author_id, 2 as rating_id, "Yuna mistook Shuyin for Tidus after finding a sphere that inspired her to hunt for clues about what happened to Tidus after he faded. It's no coincidence that Shuyin and Tidus look and sound alike, but what exactly is the mysterious connection between them and how did it happen?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="M'jai" AND l.name="English"
UNION
SELECT "Spira's Dream" as name, a.id as author_id, 2 as rating_id, "Tidus returns to Yuna and the gang, but how? Why? Is he real this time? Or is he still a dream? Does his return foreshadow something else? To find answers, they must return to the Farplane. But the answers they seek are more complicated than they seem." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="M'jai" AND l.name="English"
UNION
SELECT "Spira's Sphere" as name, a.id as author_id, 2 as rating_id, "Now that Tidus is back, the Gullwings have big plans for building a memorial in Zanarkand to honor the fayth and that city's unfortunate history. Spheres that tell Zanarkand's stories will play a major role in the construction, but the Gullwings' allies are skeptical of Tidus's likeness and connections to Shuyin. Tidus's sphere, however, may be the most critical to their hunt." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="M'jai" AND l.name="English"
UNION
SELECT "Spira's Revenge" as name, a.id as author_id, 2 as rating_id, "Someone is seeking Yu Yevon's secrets about aeon creation to bring the dead back to life. And a mysterious stranger from Zanarkand has washed ashore on Besaid Beach again. Yuna and Tidus worry that history might be trying to repeat some dangerous past mistakes. This time, can they save Spira from herself before time runs out?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="M'jai" AND l.name="English"
UNION
SELECT "The More the Merrier" as name, a.id as author_id, 4 as rating_id, "Harry's fantasies are fulfilled in the Room of Requirement thanks to three of Hogwarts' most beautiful" as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Allyrion" AND l.name="English"
UNION
SELECT "Mixed Up Dreams" as name, a.id as author_id, 2 as rating_id, "Harry has a disturbing dream while on the run looking for horcruxes. Hermione gives comfort." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Lost in Muggle London" as name, a.id as author_id, 3 as rating_id, "Ginny needs to get out of the house after the war is over, but in doing so she realizes things are complicated between her and Harry." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "The Perils of Too Much Calming Potion" as name, a.id as author_id, 4 as rating_id, "Harry is anxious after the war is over. In an effort to get over it, he overdoses on a potion and a night of lowered inhibitions ensues." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Second String" as name, a.id as author_id, 4 as rating_id, "Ginny tries to balance the relationships in her life and the expectations of her family and the world around her with what she actually wants." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Family" as name, a.id as author_id, 2 as rating_id, "Harry realizes he really has a family that he belongs to." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "No Rules" as name, a.id as author_id, 3 as rating_id, "Ginny realized she had cheated. But how did you know if you cheated if there weren't rules to follow?" as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Muggle Relations" as name, a.id as author_id, 4 as rating_id, "Harry and Ron search for a mysterious criminal whose magic seems to be out of control. Harry meets a muggle detective. Ron is uncomfortable with muggles, and, more to the point, Harry's poly marriage and sexuality." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Family Time" as name, a.id as author_id, 3 as rating_id, "Harry wants some time away from family, but when he goes out looking for a one night stand, he accidentally ends up spending the evening with Charlie instead." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Lucky Kids" as name, a.id as author_id, 2 as rating_id, "Harry really isn't looking forward to seeing the Dursleys, even if they apparently need him. Luckily, Ginny has his back." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Expanding Bed Charms" as name, a.id as author_id, 4 as rating_id, "Ginny brings her girlfriend home. The sex starts out good, but ends up bad. Still, Harry and Julianna begin a friendship of their own." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Not a Phase" as name, a.id as author_id, 4 as rating_id, "When Harry hears a rumor about his son, he realizes he probably should have been more honest with him earlier" as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Awkward Lunch" as name, a.id as author_id, 2 as rating_id, "Harry visits Albus at Hogwarts after hearing that he and Scorpius are dating." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "At the Hogsnock Baths" as name, a.id as author_id, 3 as rating_id, "Harry invites Ron to the opening of Parvati's new spa retreat for a chance to get back to their friendship, but running into Neville and experiencing the inhibition lowering waters may have ruined their chance." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Perfect Gingerbread Men" as name, a.id as author_id, 2 as rating_id, "Harry is vague. James is confused. Jules is injured and she moves in just in time for Christmas. The parents from James's perspective." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Outsider" as name, a.id as author_id, 4 as rating_id, "Five moments of friendship, sex, and comfort between Harry and Neville over the decades." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Greek Holiday" as name, a.id as author_id, 4 as rating_id, "Harry ends up taking Julianna on holiday with Ron and Hermione instead of Ginny. Hijinks ensue, then feelings" as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "The Daily Prophet Is Still a Gossip Rag" as name, a.id as author_id, 2 as rating_id, "It's been years since The Daily Prophet published anything insidious about Harry, but when a journalist with an agenda gets hold of a rumor about Harry's life, he ends up outed to the wizarding world and has to come up with a response." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Best and the Brightest" as name, a.id as author_id, 4 as rating, "Some of Harry’s best lessons aren’t learned in class." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Tjs_whatnot" AND l.name="English"
UNION
SELECT "Fancy That" as name, a.id as author_id, 3 as rating, "Pansy hates that her friends never celebrate Halloween, so when Harry Potter unexpectedly invites her to attend a fancy dress party, she decides to go. If nothing else, it'll be a laugh and something to tell her friends about, but as the night goes on and things take an unexpected turn, she thinks she might not tell them anything at all. At least, not for a long time." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Scarletladyy" AND l.name="English"
UNION
SELECT "From One Good Time To Another" as name, a.id as author_id, 4 as rating, "Pansy loved her husband, of course she did, but shagging Harry Potter was too devilishly good to give up." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Scarletladyy" AND l.name="English"
UNION
SELECT "Grey Haven" as name, a.id as author_id, 2 as rating, "A year after losing Harry, Hermione isn't coping well." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="QuidditchMom (eibbil_one)" AND l.name="English"
UNION
SELECT "The Red Dress" as name, a.id as author_id, 3 as rating, "Hermione in a red dress, Harry in denial. Here's what happens when the two mix." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="QuidditchMom (eibbil_one)" AND l.name="English"
UNION
SELECT "Up Against the Wall" as name, a.id as author_id, 3 as rating, "Absence makes Harry a bit desperate for Hermione." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="QuidditchMom (eibbil_one)" AND l.name="English"
UNION
SELECT "Caught" as name, a.id as author_id, 3 as rating, "Harry comes home early from a business trip and gets a bit of a surprise" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="QuidditchMom (eibbil_one)" AND l.name="English"
UNION
SELECT "Parkinson's Knickers (Or Lack Thereof)" as name, a.id as author_id, 4 as rating, "Harry always knew the monthly budget meetings were boring, but he didn't realize just how boring until Pansy Parkinson offered to show him something a little more interesting." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="" AND l.name="English"
UNION
SELECT "Quid Pro Quo" as name, a.id as author_id, 4 as rating, "“So it's blackmail then?” he asked, licking his lips. She dropped her gaze, the corners of her lips twisting into a wicked smile. “Generally speaking, I prefer the term extortion.”" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="" AND l.name="English"
UNION
SELECT "Games Without Frontiers" as name, a.id as author_id, 4 as rating, "An exercise in Auror training holds some pleasant surprises for Harry and Tonks." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Kabal42" AND l.name="English"
UNION
SELECT "All's Fair" as name, a.id as author_id, 4 as rating, "The Life of the Auror Seamus Finnigan. Some sex, a little quidditch, some sex, fight some death eaters, some sex, Just your average day. Updating! And now we continue with Seamus and his true love as they find their way in a brave new world of love and dragons." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Sarcastrow" AND l.name="English"
UNION
SELECT "Another Kind of Lesson" as name, a.id as author_id, 4 as rating, "When Pansy thinks herself the perfect Slytherin, it's up to Hermione to teach her that rules do, in fact, apply to her." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Twisted_Mind" AND l.name="English"
UNION
SELECT "Another Kind of Teacher" as name, a.id as author_id, 4 as rating, "After Pansy's last lesson, she finds herself a willing student, but soon learns that what she seeks is not always what she will find . . ." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Twisted_Mind" AND l.name="English"
UNION
SELECT "Another Kind of Punishment" as name, a.id as author_id, 4 as rating, "It's been years since Pansy learned those lessons from Hermione, but she's not done learning yet." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Twisted_Mind" AND l.name="English"
UNION
SELECT "Walkies" as name, a.id as author_id, 4 as rating, "Pansy hates it when Daphne makes her crawl on all fours through the Common Room." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Lokifan" AND l.name="English"
UNION
SELECT "You Did Say ""Anything""" as name, a.id as author_id, 4 as rating, "Pansy chose not to come if it meant doing it in the Slytherin common room. The next day, Daphne makes her pay." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Lokifan" AND l.name="English"
UNION
SELECT "Playing Games" as name, a.id as author_id, 3 as rating, "She doesn’t want to make it an easy victory" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Inell" AND l.name="English"
UNION
SELECT "Just Ask" as name, a.id as author_id, 4 as rating, "Pure smut, responding to a request on tumblr from kelshawke who said that they couldn't find any queerplatonic Harry/Luna so I decided to write a little smut! It's very tidbit, I hope you enjoy!" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Previouslysane (altar_boy)" AND l.name="English"
UNION
SELECT "The Challenges of Remote Subbing" as name, a.id as author_id, 3 as rating, "Hermione learns that subbing outside of the bedroom can be very challenging." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="AuntieL" AND l.name="English"
UNION
SELECT "Pretty From Behind" as name, a.id as author_id, 4 as rating, "It was all Harry's fault, of course. He was the one with the gorgeous arse. Hermione just couldn't help herself." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Clio_jlh" AND l.name="English"
UNION
SELECT "Bliss" as name, a.id as author_id, 4 as rating, "Hermione goes to a sex club on multiple occasions and learns something new about herself every visit" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Inell" AND l.name="English"
UNION
SELECT "That'll Show Them" as name, a.id as author_id, 4 as rating, "She leaned in to kiss Pansy again, slowly, possessively. Her hand curled in the small of Pansy's back, and she hoped that anybody who didn't like it would choke." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Woldy" AND l.name="English"
UNION
SELECT "Normal" as name, a.id as author_id, 3 as rating, "A fractured mind can't distinguish between right or wrong." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="RosaCalavera" AND l.name="English"
UNION
SELECT "Horny at Hogwarts" as name, a.id as author_id, 4 as rating, "Right first off this is basically pure smut. Teenagers stuck at school for most of the year, of course they're going to end up having sex. This is my story of those sexual encounters. Fourth year onwards only. Don't know how this will turn out. Chapter lengths with vary greatly. So just read and review" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Jumper712" AND l.name="English"
UNION
SELECT "Clueless" as name, a.id as author_id, 3 as rating, "Harry and Ginny. Best friends and Room mates. Everyone can see that they are perfect for each other. It's a pity they are both Clueless." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pottermum" AND l.name="English"
UNION
SELECT "The Metamorph Bet" as name, a.id as author_id, 4 as rating, "The contest is over, and Harry has won. Now it's time for Tonks to pay up, whether he wants her to or not." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="MayorHaggar" AND l.name="English"
UNION
SELECT "The Shagging Spot" as name, a.id as author_id, 4 as rating, "Fred and George discover a hidden alcove inside Hogwarts that's perfect for two things: shagging and watching." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Hollywoodland" AND l.name="English"
UNION
SELECT "The Encore" as name, a.id as author_id, 4 as rating, "Anticipating a repeat of the threesome show they witnessed the week before, George and Fred bring along a couple of friends who like to watch." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Hollywoodland" AND l.name="English"
UNION
SELECT "The Minister's Affair" as name, a.id as author_id, 4 as rating, "Members of two families keep one secret to the very end." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Romaine" AND l.name="English"
UNION
SELECT "Favours & Benefits" as name, a.id as author_id, 4 as rating, "Parvati really hates feeling like a third wheel, so when Lavender wants her to go out with her and Neville, Parvati begs Harry to come too." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Lightofdaye" AND l.name="English"
UNION
SELECT "This Christmas" as name, a.id as author_id, 4 as rating, "It’s Christmas Eve at the Ministry party when Lavender begs help from Neville. Last year her heart was broken; maybe this year he can help make everything better!" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Tryslora" AND l.name="English"
UNION
SELECT "The Stockings Were Hung by the Chimney With Care" as name, a.id as author_id, 4 as rating, "Ginny decides to do some holiday decorating with Harry." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Star54kar" AND l.name="English"
UNION
SELECT "Stress Relief" as name, a.id as author_id, 4 as rating, "Not being removed that far from her teenage years gives Tonks a perfect perspective into how to deal with Harry's broodiness. And she could use some tension relief herself to be fair." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Megamatt09" AND l.name="English"
UNION
SELECT "A Very Happy Mother's Day" as name, a.id as author_id, 4 as rating, "Breakfast in bed was nice. Dessert was better." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Megamatt09" AND l.name="English"
UNION
SELECT "Property of Potter" as name, a.id as author_id, 4 as rating, "Ginny is not happy about Fleur not knowing who she belongs to, so she endeavors to correct that problem." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Megamatt09" AND l.name="English"
UNION
SELECT "The One Blessing of a Curse" as name, a.id as author_id, 4 as rating, "Being almost a werewolf comes with some extra-hairy irritations. While magic might be one answer to the problem, Lavender has learned that sometimes getting in and doing it the Muggle way is better." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Tryslora" AND l.name="English"
UNION
SELECT "Stress Relief" as name, a.id as author_id, 4 as rating, "Bill and Fleur teach Hermione a new method for stress relief" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Inell" AND l.name="English"
UNION
SELECT "The Weasley Witches Collective" as name, a.id as author_id, 4 as rating, "The females of the Weasley and Delacour families get to know each other much better in advance of Fleur's coming marriage to Bill. Their lesbian orgy is interrupted by Rita Skeeter who is punished for her indiscretion." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="MargaretSexyMum" AND l.name="English"
UNION
SELECT "Bad Day (Or How to Get Hermione to Stop Worrying And Enjoy Sex While On The Clock)" as name, a.id as author_id, 4 as rating, "Harry devises a way for Hermione to stop having a bad day at work." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="" AND l.name="English"
UNION
SELECT "First Times" as name, a.id as author_id, 2 as rating, "Ginny realises how much she and her daughter are alike. Second in my Lily Luna stories" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pottermum" AND l.name="English"
UNION
SELECT "Eros & Psyche" as name, a.id as author_id, 4 as rating, "It's the end of 7th year at Hogwarts when the Slytherins make a bold move: to challenge the Gryffindors to play EROS & PSYCHE, a scandalous magical card game with a mysterious, dark history." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="RZZMG" AND l.name="English"
UNION
SELECT "Birthday Wishes" as name, a.id as author_id, 4 as rating, "Harry asks his lover what he wants for his birthday. His answer will change their lives." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pottermum" AND l.name="English"
UNION
SELECT "I wasn't thinking about you, again." as name, a.id as author_id, 4 as rating, "For her whole life, she thinks: she has bled, and bled, and bled. And the war is over now. She holds Ron in her arms, night after night, and she thinks, in her heart. She thinks, “I am not thinking about you.” Harry." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Argenterie" AND l.name="English"
UNION
SELECT "Euphemism is a perfectly good word" as name, a.id as author_id, 3 as rating, "Innuendo's, entendres and euphemisms? You'll find them all here." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pottermum" AND l.name="English"
UNION
SELECT "That Need" as name, a.id as author_id, 4 as rating, "Sometimes people have needs they can't satisfy alone. Sometimes that need requires help from friends." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="HPTrio" AND l.name="English"
UNION
SELECT "Seekers of Love" as name, a.id as author_id, 2 as rating, "Harry wakes up to find names tattooed on his wrists. Shenanigans ensue." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Thatsarockfact55" AND l.name="English"
UNION
SELECT "I'm Sure!" as name, a.id as author_id, 4 as rating, "Padma always wants to try new things" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Lightofdaye" AND l.name="English"
UNION
SELECT "Fly Away" as name, a.id as author_id, 4 as rating, "On her 17th birthday, Hermione gets a special invitation from Harry. " as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Likebunnies" AND l.name="English"
UNION
SELECT "Uninhibited: Nymphadora" as name, a.id as author_id, 4 as rating, "Now that he has taken his revenge on the Dursleys, Harry is going after people he wants, instead of ulterior motives compelling him to fuck them. First up is Nymphadora Tonks, after they make the trip to Grimmauld Place. The woman drags Harry into her bedroom, instead of allowing him to join Ron in their room, and Harry is all to happy to oblige her." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="DepravedDevil" AND l.name="English"
UNION
SELECT "Dominating Daphne" as name, a.id as author_id, 4 as rating, "Daphne whimpered when Master nipped at her ear. 'Good ... but we're not done with your punishment yet, are we' EWE" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="ThatsRealMagic" AND l.name="English"
UNION
SELECT "Daphne Dominates" as name, a.id as author_id, 4 as rating, "Mornings were always her favourite time to exercise her own control over him. EWE" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="ThatsRealMagic" AND l.name="English"
UNION
SELECT "Daytime Domination" as name, a.id as author_id, 4 as rating, "'The only thought running through Daphne's sex fogged brain was that she needed her boyfriend and she needed him right. Now.' EWE" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="ThatsRealMagic" AND l.name="English"
UNION
SELECT "Ginny's Need" as name, a.id as author_id, 4 as rating, "Ginny's team has just won the Quidditch Champions. A girl has to celebrate, right?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pottermum" AND l.name="English"
UNION
SELECT "The Bet" as name, a.id as author_id, 4 as rating, "Bill and Fleur play a game with Harry." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Emmagrant01" AND l.name="English"
UNION
SELECT "Sustenance." as name, a.id as author_id, 3 as rating, "My take on Harry and Ginny's first time. Tender, touching and humorous." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pottermum" AND l.name="English"
UNION
SELECT "Ginny's Appetite" as name, a.id as author_id, 3 as rating, "Ginny has a big appetite. Hey, she's a Weasley!" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pottermum" AND l.name="English"
UNION
SELECT "Dinner, Date...Draco?" as name, a.id as author_id, 3 as rating, "Harry and Narcissa's night out is interrupted by an uninvited and unwelcome guest." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="MayorHaggar" AND l.name="English"
UNION
SELECT "When the Magic Stops Working" as name, a.id as author_id, 4 as rating, "It begins with the end. Magic isn't working anymore. Both in Otter's Ridge, where the Aurors are tasked with finding out why magic has simple disappeared in places and from people, and in the relationships that surround Harry. He isn't sure where to look to find Magic again, and when he does seek it out, finds it in unexpected places, and with unexpected consequences. It will take all of those around him to sort through and bring the magic back to life." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Tryslora" AND l.name="English"
UNION
SELECT "Broom Cupboard Encounters" as name, a.id as author_id, 4 as rating, "Slughorn's Christmas Party was Luna's first ever date; how was she supposed to know that she wasn't expected to finish it off by giving herself to her partner for the evening?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="" AND l.name="English"
UNION
SELECT "Harry Potter and his luscious Butt" as name, a.id as author_id, 4 as rating, "Hermione happens upon Harry and his girlfriend getting it on. And then opens up his arse, as well as an entire new world for him. WARNING - Sub!Harry" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="WerewolfWarriro" AND l.name="English"
UNION
SELECT "The Hogwarts Renewal Program" as name, a.id as author_id, 2 as rating, "Dumbledore always had faith in Snape, until Harry Potter pointed several things out to him. Dumbledore hatches a plan to see if Snape is as bad as rumors say. *~*The prologue and first chapter of this story were previously posted on Fanfiction.net, but the story was left there uncompleted. Even if you read the chapters posted there, please reread the whole story. It has been revised, edited, and completed since then.*~*" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND l.name="English"
UNION
SELECT "Tit for Tat" as name, a.id as author_id, 4 as rating, "Hermione has a new cause, and Ron can’t help but think that this is going to be Big Trouble." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Inell" AND l.name="English"
UNION
SELECT "A Vampire Legacy; the story" as name, a.id as author_id, 3 as rating, "We all know now that Alucard was Vlad Tepes, Prince of Wallachia before becoming Dracula. We know he's the oldest warmonger to walk the face of the earth. What we didn't know, was if he still has descendants living among humanity. What if the Hellsing organization was called to get rid of vampires who decided to nest on Privet Drive? ABANDONED/UP FOR ADOPTION. POSSIBLE REWRITE IN THE FUTURE." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Zephyr_Fauchelevent" AND l.name="English"
UNION
SELECT "Saving the Savior" as name, a.id as author_id, 2 as rating, "The Potter Trust Vault has many protections. Too bad Lucius Malfoy didn't know. *~*The prologue and first two chapters of this story were previously posted on Fanfiction.net, but the story was left there uncompleted. Even if you read the chapters posted there, please reread the whole story. It has been revised, edited, and completed since then.*~*" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND l.name="English"
UNION
SELECT "The Last Time" as name, a.id as author_id, 4 as rating, "Harry wants a special present for his birthday-he wants to watch Ron and Hermione. He's shocked when they ask him to join in." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="TableForThree_Archivist" AND l.name="English"
UNION
SELECT "No Thank You" as name, a.id as author_id, 4 as rating, "What if the Dursley family had taken the more practical route of treating Harry kindly in order to keep him away from magic? What if it worked? What if he wants nothing to do with the wizarding world and Dumbledore has to solve his own problems for once?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Sarah1281" AND l.name="English"
UNION
SELECT "Rouse the Dead" as name, a.id as author_id, 4 as rating, "For sdk" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Torino10154" AND l.name="English"
UNION
SELECT "Healing" as name, a.id as author_id, 2 as rating, "Upon finding Harry Potter outside Borgin and Burkes, Madam Poppy Pomfrey discovers something sinister is going on. *~*The prologue of this story was previously posted on Fanfiction.net, but the story was left there uncompleted. Even if you read the chapter posted there, please reread the whole story. It has been revised, edited, and completed since then.*~*" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND l.name="English"
UNION
SELECT "Office Fun" as name, a.id as author_id, 4 as rating, "Harry discovers the joys of office loving." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Ronslady23" AND l.name="English"
UNION
SELECT "Reward" as name, a.id as author_id, 4 as rating, "On a particular day, Harry receives a call that his long time best friend is passed out on a bar. Like the dutiful friend he is, Harry carries Ron to his home. But now, he wants reward. What reward is it? Of course Hermione and Rose. Together." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Zakhro" AND l.name="English"
UNION
SELECT """Harry Potter and the Unbreakable Bond""" as name, a.id as author_id, 4 as rating, "When Hermione uses ancient magic to save Harry and Ron, the trio's lives are changed - forever!" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Leviathan0999" AND l.name="English"
UNION
SELECT "I'm Worried About Harry" as name, a.id as author_id, 4 as rating, "Someone has to help Harry lift his bad mood, and Hermione is going to be the one, and not for totally selfless reasons because have you seen Harry? He's gorgeous. And he's hers. And Ron is gorgeous and hers. And she wants to fuck both of them, basically. That should really be the summary. Hermione wants to fuck them both. So she does." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Heyitsamorette (AmoretteHD)" AND l.name="English"
UNION
SELECT "Before the Wedding" as name, a.id as author_id, 4 as rating, "Vaguely related to a post on tumblr describing bi!Harry talking about how attractive all the Weasley siblings are. And then I just thought...damn Bill/Harry/Fleur would be awesome." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Ufohnoparty (why_didnt_i_get_any_soup)" AND l.name="English"
UNION
SELECT "Roman Holiday" as name, a.id as author_id, 4 as rating, "Times are different now." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Charleybradburies" AND l.name="English"
UNION
SELECT "Goblin Warfare" as name, a.id as author_id, 2 as rating, "Flitwick stumbles upon Harry a few days after the Goblet of Fire spits out his name. *~*The prologue of this story were previously posted on Fanfiction.net, but the story was left there uncompleted. Even if you read the chapter posted there, please reread the whole story. It has been revised, edited, and completed since then.*~*" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND l.name="English"
UNION
SELECT "Harry Potter and the Veela Sisters" as name, a.id as author_id, 4 as rating, "Harry Potter goes on a beach vacation with his fiancée Fleur Delacour. Fleur's younger sister Gabrielle wheedles her way into coming along." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Dirtyuncle" AND l.name="English"
UNION
SELECT "Christmas Holiday" as name, a.id as author_id, 3 as rating, "Home for the holidays, Harry and Ginny finally find their moment alone." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="" AND l.name="English"
UNION
SELECT "Quiet" as name, a.id as author_id, 4 as rating, "She was always the quiet one, until she's in bed with him." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Lightofdaye" AND l.name="English"
UNION
SELECT "Falling Through Clouds" as name, a.id as author_id, 4 as rating, "As soon as Ron stepped back into the life that he and Hermione had been sharing, inside that tent, that intimate capsule, their only protection – something inside Harry clicked back into its rightful place." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Holyfant" AND l.name="English"
UNION
SELECT "Private Party in the Conservatory" as name, a.id as author_id, 4 as rating, "Daphne Greengrass brings her boyfriend, Neville Longbottom, with her to a Slytherin party at the Zabini's manor. He's about to find out just what happens at a Slytherin party after everyone starts drinking." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Iwant2baweasley (becboobear)" AND l.name="English"
UNION
SELECT "Christmas Cheer" as name, a.id as author_id, 4 as rating, "Four years after the Battle of Hogwarts, Harry finally seems to be having all the fun he deserves. But, will this Christmas bring problems or simply more joy?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Smutty_claus" AND l.name="English"
UNION
SELECT "Slytherin Games (Remix of Snakes)" as name, a.id as author_id, 4 as rating, "Pansy had always hated Daphne Greengrass." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Icicle" AND l.name="English"
UNION
SELECT "Anonymous Signs" as name, a.id as author_id, 4 as rating, "The Trio gives up the Wizarding world. For the day. Because there are just some things that wizards can't find in the Wizarding world." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Abigail89" AND l.name="English"
UNION
SELECT "my heart is holding on to you" as name, a.id as author_id, 4 as rating, "six kisses in katie’s life, growing in significance over time" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Aceofdiamonds" AND l.name="English"
UNION
SELECT "Candy Cane Obsessed Freak" as name, a.id as author_id, 4 as rating, "Hermione loves candy canes" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Luvscharlie" AND l.name="English"
UNION
SELECT "Female Transfiguration 101" as name, a.id as author_id, 4 as rating, "Hermione has found a new book in the library that seems to have some very interesting spells, what happens when she and Ginny test their effects together." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Lamp23" AND l.name="English"
UNION
SELECT "Bedtime" as name, a.id as author_id, 4 as rating, "Harry's working too hard." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Holyfant" AND l.name="English"
UNION
SELECT "Tea with the Headmistress" as name, a.id as author_id, 1 as rating, "Halfway through Harry's first year at Hogwarts, a very much alive James and Lily pop in to check in on him." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Fluffybookfaerie" AND l.name="English"
UNION
SELECT "Fire" as name, a.id as author_id, 4 as rating, "Parvati wanted the binding ceremony to be perfect. A little magic goes a long way." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Zoelily" AND l.name="English"
UNION
SELECT "Accio Ballgag!" as name, a.id as author_id, 4 as rating, "Fast-forward, ten years later. Mistress Hermione is so proud of her little Harry! She knew this was exactly how things were supposed to happen right from the start. She's sometimes slightly dysfunctional, just a little possessive, but still adorable..." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Harby" AND l.name="English"
UNION
SELECT "Christmas Bells are Ringing" as name, a.id as author_id, 4 as rating, "It's bad enough that he's being forced to spend the holidays away from home and his closest friends, but constantly being in such close proximity to the woman of his dreams is nothing short of torture." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="MayorHaggar" AND l.name="English"
UNION
SELECT "For This One Day" as name, a.id as author_id, 4 as rating, "He was the last person she expected to wake up in bed with. But the problem is, where do they go from here?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Flipflop_diva" AND l.name="English"
UNION
SELECT "A Birthday Gift" as name, a.id as author_id, 4 as rating, "Victoire's Birthday is here and Fleur wants to give her the best present she could." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Zakhro" AND l.name="English"
UNION
SELECT "A Night in the Lioness' Den" as name, a.id as author_id, 4 as rating, "What happens one night in the girl's Dorms of the noble Lions." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Sheltie1987" AND l.name="English"
UNION
SELECT "Trouble, with a Capital T" as name, a.id as author_id, 2 as rating, "She was fun, smart and sassy. She was trouble, with a capital T!" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pottermum" AND l.name="English"
UNION
SELECT "They spurn the holiday spirit in their usual way" as name, a.id as author_id, 4 as rating, "Hermione and Fleur spend the holiday their usual way." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Luvsanime02" AND l.name="English"
UNION
SELECT "Birthday Surprise" as name, a.id as author_id, 3 as rating, "Harry discovers a surprise on his birthday. It turns out to be a pleasant surprise." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="LRThunder" AND l.name="English"
UNION
SELECT "Walking the Walk" as name, a.id as author_id, 4 as rating, "In the final phases of Harry's Auror training, he learns that appearances aren't always enough. An expert on the subject has some hands-on training techniques to teach him what he needs to learn." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Chazpure" AND l.name="English"
UNION
SELECT "Your secret fantasy" as name, a.id as author_id, 4 as rating, "The twins made a invention that's supposed to resolve unresolved sexual tension. They get Ginny to try it. Yeah .. lets see how that goes." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="VanessaWolfie" AND l.name="English"
UNION
SELECT "Change of Heart" as name, a.id as author_id, 4 as rating, "Pansy Parkinson has a very cunning scheme to keep herself out of Azkaban Prison. Unfortunately, things don't always go as planned." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Ragdoll" AND l.name="English"
UNION
SELECT "Addictive" as name, a.id as author_id, 4 as rating, "ONE SHOT: And her lipstick tastes like sin but she tastes like champagne that's far too expensive for any wedding. She's looking at him, a question in her eyes and he must be a lot more sloshed than he thought he was because she's kissing him again and he. Barely. Notices. " as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="" AND l.name="English"
UNION
SELECT "Restorative" as name, a.id as author_id, 4 as rating, "ONE SHOT: She's never been in love before, and now she is. And strangely enough, it's perfect. It's not the being in love with him part that she's scared of, Hermione realizes. It's losing him. " as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="" AND l.name="English"
UNION
SELECT "Who Seems a Beast (but secretly dreams of beauty)" as name, a.id as author_id, 4 as rating, "The first Halloween after the Second War, all the girls and boys at Hogwarts are expected to put on their happy little costumes. Emphasis on ""little."" A scarred Lavender Brown isn't having it." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Songquake" AND l.name="English"
UNION
SELECT "Flood" as name, a.id as author_id, 4 as rating, "Hermione's idea, of course, this getaway. Away from prying eyes, no one else to focus on, see how they got on then with this new thing between them." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Holyfant" AND l.name="English"
UNION
SELECT "All My Wildest Dreams" as name, a.id as author_id, 4 as rating, "When Harry mentions a particular fantasy, it's difficult for him to put it into words what he wants… but Hermione already knows what he needs." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Walgesang" AND l.name="English"
UNION
SELECT "Dorm Mates" as name, a.id as author_id, 4 as rating, "Late one night in the Gryffindor girls' dorm, something is keeping Parvati Patil from her sleep - and it's coming from the curtained bed of her best friend." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="BananasPyjamas" AND l.name="English"
UNION
SELECT "The 69" as name, a.id as author_id, 4 as rating, "He agrees to a swap, so they can both have what they want." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="LRThunder" AND l.name="English"
UNION
SELECT "Falling Towards Something (It Might Just Be You)" as name, a.id as author_id, 3 as rating, "At the Battle of Hogwarts Hermione discovers Fleur is not who she thinks she is. As they are drawn together again and again, Hermione might just discover she herself is no longer the same person either." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Thewaywedo33" AND l.name="English"
UNION
SELECT "A Love Story in Four Acts" as name, a.id as author_id, 4 as rating, "Things do not change; we change ~ Henry David Thoreau" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Inell" AND l.name="English"
UNION
SELECT "The Intricacies of Magical Etiquette" as name, a.id as author_id, 2 as rating, "When Harry needs Daphne to tutor him so he won't make a fool of himself in the Wizengamot, she suggests a very unique method of compensation." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="MayorHaggar" AND l.name="English"
UNION
SELECT "HBG Mini-series: Lily" as name, a.id as author_id, 4 as rating, "Taken from certain chaps of HBG and made into its own little series." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Sheltie1987" AND l.name="English"
UNION
SELECT "HBG Mini-series: Pureblood Wives" as name, a.id as author_id, 4 as rating, "Just like my Lily and Cho series I am doing." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Sheltie1987" AND l.name="English"
UNION
SELECT "The Prewett Cup" as name, a.id as author_id, 4 as rating, "On the night before her brother's wedding to Hermione, Ginny Potter finds a family artefact, a bottle of wine, and a note from her long-dead Great Aunt Eugenia in her luggage." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Ap_aelfwine" AND l.name="English"
UNION
SELECT "An Odd Turn of Events" as name, a.id as author_id, 4 as rating, "Harry returns from detention to find a party in full swing in the Gryffindor common room. And though everyone is having a good time, Hermione is set on REALLY enjoying herself. Harry X Hermione lemon." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="IridescentLugia" AND l.name="English"
UNION
SELECT "Night Moves" as name, a.id as author_id, 4 as rating, "After the Death Eater attack at the Quidditch world cup sends Harry into an overworked panic trying to get stronger, Hermione resorts to desperate measures to get him to relax. Namely, secret nightly visits where she worships his cock every night to help him let off some steam, but Harry's not quite as sleepy as he lets on, and Hermione is in for a while slew of surprises to come. Commission for Lord of Bones." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="NidoranDuran" AND l.name="English"
UNION
SELECT "The Guest Bedroom" as name, a.id as author_id, 4 as rating, "This is not an invitation, it's an order." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Holyfant" AND l.name="English"
UNION
SELECT "Mirrors And Opposites" as name, a.id as author_id, 4 as rating, "Astoria and Daphne make an ill-considered bet." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Lightofdaye" AND l.name="English"
UNION
SELECT "The List" as name, a.id as author_id, 4 as rating, "Nobody taught them how to be young and irresponsible, so they'll have to teach each other." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Olivieblake" AND l.name="English"
UNION
SELECT "Friends & Lovers" as name, a.id as author_id, 4 as rating, "After nearly thirty years, friends find out there may be more, and lovers find out why it wasn't enough to last." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="TarnishedArmour" AND l.name="English"
UNION
SELECT "The Boy Who Wanted Her" as name, a.id as author_id, 3 as rating, "Harry Potter has his Quidditch groupies and Hermione wants something more from him. Does he want the same from her?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Likebunnies" AND l.name="English"
UNION
SELECT "The Boy Who Was Hers" as name, a.id as author_id, 3 as rating, "This is a sequel to 'The Boy Who Wanted Her.' Harry and Hermione explore their new relationship. And each other." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Likebunnies" AND l.name="English"
UNION
SELECT "How We Live" as name, a.id as author_id, 4 as rating, "Well this is basically a story of how Harry lives. His work life and his home life. Him, his wife Ginny. Their toy Luna and the others who they take pleasure in." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Wendings" AND l.name="English"
UNION
SELECT "The Infernal Plan" as name, a.id as author_id, 3 as rating, "Set during and after their sixth year at Hogwarts, Hermione asks something of Harry that will change their lives forever." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Likebunnies" AND l.name="English"
UNION
SELECT "Center of Attention" as name, a.id as author_id, 4 as rating, "Written as Bonus Content for theloveofhp fest. Total PWP. Based on the prompt: ""Daphne is not really into boys, but she likes to experiment, and it turns out as long as she gets to fuck Pansy, she doesn't really mind if Draco is watching or even participating a little bit."" I regret nothing!" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="" AND l.name="English"
UNION
SELECT "Vein of Gold" as name, a.id as author_id, 3 as rating, "Hermione has been ordering some suspicious magical texts. Harry is sent to intervene, but finds he would much rather work with her than follow the wishes of those meddling Weasleys. " as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pelespen" AND l.name="English"
UNION
SELECT "Encounters After the Yule Ball" as name, a.id as author_id, 4 as rating, "Harry has several encounters after the Yule Ball. Set in fourth year." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Sheltie1987" AND l.name="English"
UNION
SELECT "Love You Completely" as name, a.id as author_id, 4 as rating, "“We want to love you completely. Physically.” Ron finally looked up. “Because it's the only thing that will bring both of us peace.”" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Starstruck1986" AND l.name="English"
UNION
SELECT "A Chance Meeting" as name, a.id as author_id, 4 as rating, "" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Starstruck1986" AND l.name="English"
UNION
SELECT "You're my what?" as name, a.id as author_id, 4 as rating, "Halfway through his fourth year Harry wakes up to a surprise." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Starstruck1986" AND l.name="English"
UNION
SELECT "Not On His List" as name, a.id as author_id, 4 as rating, "As much as he wanted it, Harry didn't dare to put this on his Christmas list. Pansy got it for him anyway." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Musyc" AND l.name="English"
UNION
SELECT "An Unexpected Source of Wisdom" as name, a.id as author_id, 4 as rating, "Lavender and Parvati plant a very interesting idea in the Trio's heads." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Alyndra" AND l.name="English"
UNION
SELECT "Troika" as name, a.id as author_id, 4 as rating, "Hermione finds that her life is more complicated, more confusing and a lot more fun than she ever thought it would be." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Lily_pearl (lilyandjoey)" AND l.name="English"
UNION
SELECT "Subservient Housewives and other Mythical Creatures" as name, a.id as author_id, 4 as rating, "From the outside, Susan looks like a doting, subservient housewife to her busy Auror husband. The outside would be very surprised at what goes on behind closed doors." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Voxangelus" AND l.name="English"
UNION
SELECT "Ice Princess" as name, a.id as author_id, 2 as rating, "Building a romance from a fanon cliche turned on its head." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="LuanMao" AND l.name="English"
UNION
SELECT "Harry in a new world" as name, a.id as author_id, 4 as rating, "Harry constructs a new personae and strikes at the Death Eaters where they feel safe" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Clell65619" AND l.name="English"
UNION
SELECT "Harry Potter and the Marriage Contracts" as name, a.id as author_id, 4 as rating, "The War is Over, Harry has won. But at what cost? At odds with Dumbledore, estranged from the Weasleys, betrayed by Lupin, Harry tries to carry on for his 7th year." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Clell65619" AND l.name="English"
UNION
SELECT "Live! For God's Sake, Live!" as name, a.id as author_id, 4 as rating, "The Weasleys drag Harry to a club after the war. But mocking Harry causes everything to unravel" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="HarryGinnyTonks" AND l.name="English"
UNION
SELECT "A Lesson in Propriety" as name, a.id as author_id, 4 as rating, "" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Dime" AND l.name="English"
UNION
SELECT "Confessions Under A Night Sky" as name, a.id as author_id, 4 as rating, "" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Snowblind12" AND l.name="English"
UNION
SELECT "The Weasley Wives' Club" as name, a.id as author_id, 4 as rating, "" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="RubySaintClaire" AND l.name="English"
UNION
SELECT "A Place To Call Home" as name, a.id as author_id, 4 as rating, "Harry won the war. It's a couple of months afterward, and unexpectedly, he's quite literally picked up off the face of the world and shoved into another. One where Harry Potter died a long time ago, and the Potter family is still fighting against a war with a Dark Lord who is ruling over the world one muggle murder at a time. They say he's their only hope.Harry really doesn't want in." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Missmusicluver" AND l.name="English"
UNION
SELECT "Unsealed" as name, a.id as author_id, 2 as rating, "After fifty years, the trial records of a special prisoner are unsealed and the details and motives of the most well known magical murder are revealed." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Esama" AND l.name="English"
UNION
SELECT "Slumber Party" as name, a.id as author_id, 4 as rating, "One-shot. Slight AU. Ginny and Tonks are best friends, but Ginny can't help but notice the way her best friend keeps staring at her fiancée. She decides to do something about it. Warnings: PWP, girl!cock, threesome." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Femmeslyth" AND l.name="English"
UNION
SELECT "A Memorable Farewell" as name, a.id as author_id, 4 as rating, "(June 1998)" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pommedeplume" AND l.name="English"
UNION
SELECT "Yearning Hearts" as name, a.id as author_id, 1 as rating, "(September 1, 1998) Ginny Weasley and Parvati Patil are heading back for a final year at Hogwarts School of Witchcraft and Wizardry and desperately missing the ones they love. Elsewhere in the world Harry Potter and Lavender Brown are missing them as well." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pommedeplume" AND l.name="English"
UNION
SELECT "Open to Love" as name, a.id as author_id, 4 as rating, "(February 1999)" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pommedeplume" AND l.name="English"
UNION
SELECT "Things to Do in Berlin (When You're Bored)" as name, a.id as author_id, 4 as rating, "(March 1999)" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pommedeplume" AND l.name="English"
UNION
SELECT "Normal Things" as name, a.id as author_id, 4 as rating, "(June 1999)" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pommedeplume" AND l.name="English"
UNION
SELECT "The Girl Who Topped" as name, a.id as author_id, 4 as rating, "(May-July 2000) Ginny finds a special toy in a wizarding sex toy catalogue that can join with your body and change its shape and size and can't wait to top Harry with it." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pommedeplume" AND l.name="English"
UNION
SELECT "Sort of Friends and Lovers" as name, a.id as author_id, 4 as rating, "(August-September 2000) " as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pommedeplume" AND l.name="English"
UNION
SELECT "Various Climaxes" as name, a.id as author_id, 4 as rating, "(March 2001) " as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pommedeplume" AND l.name="English"
UNION
SELECT "Luna's Desires" as name, a.id as author_id, 4 as rating, "(June-July 2001)" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pommedeplume" AND l.name="English"
UNION
SELECT "The Art of Being Slytherin" as name, a.id as author_id, 4 as rating, "(Summer 2001 - Autumn 2002)" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pommedeplume" AND l.name="English"
UNION
SELECT "Welcome to the Family" as name, a.id as author_id, 3 as rating, "(June 2003) Hermione Granger and Ron Weasley have been invited over to sit down and talk with Ron's sister Ginny and her boyfriend Harry Potter. Revelations await that Ron may not be fully prepared for..." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pommedeplume" AND l.name="English"
UNION
SELECT "Open Doors" as name, a.id as author_id, 4 as rating, "(July 2026)" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pommedeplume" AND l.name="English"
UNION
SELECT "One in a Million" as name, a.id as author_id, 4 as rating, "When Pansy fucked Harry, she liked to pretend she was Ginny Weasley." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Maraudersaffair" AND l.name="English"
UNION
SELECT "You've Got Me Pegged" as name, a.id as author_id, 4 as rating, "If Harry wants a go at Ginny's arse, he's going to have to let her have a go at his." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Gracerene" AND l.name="English"
UNION
SELECT "Let go" as name, a.id as author_id, 4 as rating, "Too often Harry woke aggressively, shooting upward before his eyes fully opened. It didn’t matter if he had gone to bed fully content. The act of waking made his body tense like a coil ready to snap. " as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Lostonplatform934" AND l.name="English"
UNION
SELECT "Best Behaviour" as name, a.id as author_id, 4 as rating, "The wedding was lovely. Really. It was. " as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Idleside" AND l.name="English"
UNION
SELECT "The World's a Stage" as name, a.id as author_id, 4 as rating, "After the post-""Draco and Ginny's Wedding"" ignition of whatever it is going on with Daphne, Pansy, and Harry (See: ""Best Behaviour""), each of the three has to navigate between their friends, the rest of the wizarding world (and its expectations placed on them), and each other." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Idleside" AND l.name="English"
UNION
SELECT "(Revel)ations" as name, a.id as author_id, 4 as rating, "Daphne, Harry, and Pansy attend a series of social events, where they finally let their friends know about their relationship. " as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Idleside" AND l.name="English"
UNION
SELECT "Blood and Bones" as name, a.id as author_id, 4 as rating, "The trio of Daphne, Harry, and Pansy have settled in to a comfortable spot in their relationship. With a new challenge from Pureblood politics, they all have parts to play to defend their future. All three will have to face their families and the skeletons in their closets." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Idleside" AND l.name="English"
UNION
SELECT "Helping Hands" as name, a.id as author_id, 4 as rating, "Harry is fine." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Idleside" AND l.name="English"
UNION
SELECT "Cosmopolitan" as name, a.id as author_id, 4 as rating, "Pansy's trip to Milan was supposed to be an escape from the doldrums of Britain, and yet as soon as she arrives, she finds that things aren't working out the way that she had expected." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Idleside" AND l.name="English"
UNION
SELECT "My Mind Is Screaming (But Your Touch Brings Me Silence)" as name, a.id as author_id, 4 as rating, "Everyone knows that Harry Potter was betrayed near the end of the war and held captive in the Dark Lord's dungeons. But no one truly knows what went down inside those walls." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="" AND l.name="English"
UNION
SELECT "Paramount ~ Extension" as name, a.id as author_id, 3 as rating, "This is an extension to a story in my Trio Love in 50 Words series." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Ronslady23" AND l.name="English"
UNION
SELECT "We Three Seekers" as name, a.id as author_id, 4 as rating, "Harry's got a totally undeserved detention that has to be served with his rival Cedric Diggory and the girl he likes, who happens to be dating Cedric, Cho Chang. But when he shows up to the Prefect's Bathroom to serve it, things don't go quite as he expected..." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Farbautidottir" AND l.name="English"
UNION
SELECT "Best Friends, Always" as name, a.id as author_id, 4 as rating, "In this AU where Cedric doesn’t die in the Goblet of Fire, Ron and Harry’s friendship is tested by the secret Harry is keeping. A secret that’s threatening to make itself known with every steamy letter Cho and Cedric send Harry while he stays with the Weasleys." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Farbautidottir" AND l.name="English"
UNION
SELECT "Harry Potter and The Heir of House Greengrass" as name, a.id as author_id, 2 as rating, "Daphne Greengrass finds herself in the confidence of Hermione Granger in their 4th year at Hogwarts. Can a group of teens learn to navigate love, friendship, identity and lies in the face of a deadly threat? How will this change Harry Potter's destiny?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="SazzyLJ" AND l.name="English"
UNION
SELECT "From Southampton to New York and Beyond" as name, a.id as author_id, 3 as rating, "Harry takes a sabattical and spoils himself with a world cruise. Little does he know he'll meet a travel companion who will change his life forever." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Dorothea_Greengrass" AND l.name="English"
UNION
SELECT "Memorial Week" as name, a.id as author_id, 3 as rating, "Harry and Daphne return home from their cruise around the world to a lot of problems. " as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Dorothea_Greengrass" AND l.name="English"
UNION
SELECT "Rose's Birthday Present" as name, a.id as author_id, 4 as rating, "It's Rose Weasley's 18th Birthday, and she's really looking forward to the 'special' present Uncle Harry gives all the girls!" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Red_jacobson" AND l.name="English"
UNION
SELECT "Daphne Greengrass and the Importance Of Intent" as name, a.id as author_id, 2 as rating, "This is the story of how Voldemort and the tools he created to defy death were destroyed by Harry Potter and me while sitting in an empty Hogwarts classroom using Harry's idea, my design, and most importantly, our intent. Set during 6th Year." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="PetrificusSomewhatus" AND l.name="English"
UNION
SELECT "The Importance Of Intent: After The Credits" as name, a.id as author_id, 2 as rating, "This is a compilation of one shots inspired by my story Daphne Greengrass and the Importance of Intent. If you enjoyed that story and would like to read more than you've come to the right place." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="PetrificusSomewhatus" AND l.name="English"
UNION
SELECT "On A Night Like This - Potter Chronicle's" as name, a.id as author_id, 4 as rating, "Not every romance starts normally. How one fateful night in Harry's sixth year would be the first step in the rest of his life. Three Peat - First part of a series. AU - Rated M." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Oakel" AND l.name="English"
UNION
SELECT "May It Be – Potter Chronicles" as name, a.id as author_id, 3 as rating, "A Potter Chronicles Story - Three years on from the battle of Hogwarts, Harry battles with his inner demons after receiving the biggest news of his young life. " as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Oakel" AND l.name="English"
UNION
SELECT "Hounds & Hippogriffs - The Potter Chronicles" as name, a.id as author_id, 4 as rating, "Family bliss is all that Daphne Potter had sort in all her youth, an old foe returns that threatens to ruin it all and help may come from the most unlikely of places." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Oakel" AND l.name="English"
UNION
SELECT "Embers of Ruin - The Potter Chronicles" as name, a.id as author_id, 3 as rating, "With a new movement rising across Europe, the leading powers on the continent take council to address the concern. Harry and his friends are thrust into dangerous waters once again as the embers of revolution begin to burn. Action/Political/Romance HP/DG. Upsetting scenes." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Oakel" AND l.name="English"
UNION
SELECT "The Role Reversal" as name, a.id as author_id, 2 as rating, "Head Auror Harry Potter finds himself caught in a web of ambition, murder and hope. An enemy lurks in the shadow but help comes from unexpected quarters." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="QuarantineClean" AND l.name="English"
UNION
SELECT "Sensations Of Shemales: Items Of Aphrodomina" as name, a.id as author_id, 4 as rating, "The Triwizard Cup takes a turn as ancient secret begins to rise in Hogwarts. Witches have a strange secret, about what lays between their legs. But secrets never remain so at Hogwarts. Sex takes control for the first time in hundreds of years and Harry and various others learn that witches are less than conventional when it comes to pleasure. Shemale sex with multiple pairings." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="FanfictionWriter101" AND l.name="English"
UNION
SELECT "Becoming Lord Black" as name, a.id as author_id, 4 as rating, "If Harry wishes to become Lord Black there is only one witch who satisfies all of the criteria to become his wife: the virginal Daphne Greengrass." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="MayorHaggar" AND l.name="English"
UNION
SELECT "Harry Potter: The True Wizards Way" as name, a.id as author_id, 4 as rating, "Witches have a secret, and Harry's gift is that he's man enough to help them with it. What starts with helping a friend grows more and more, and soon the witches of Hogwarts and beyond will learn just how special a wizard like Harry is." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Prime_Blue" AND l.name="English"
UNION
SELECT "Flower Power" as name, a.id as author_id, 4 as rating, "Fleur has a foolproof plan to win the Triwizard Tournament: fuck the competition so hard that they won't be able to complete. It's working well until she finds out just what Harry's packing. Will she be able to handle him? Of course not." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Browser13" AND l.name="English"
UNION
SELECT "The Life and Times of Edward Lupin (permanently discontinued)" as name, a.id as author_id, 1 as rating, "Harry Potter wasn't the only orphan of war. Edward Remus ""Teddy"" Lupin was used to being different. He knew most kids couldn't hear their friends breathe during hide and seek, or make their legs longer when they couldn't reach cookies on a higher shelf. And, of course, most kids have parents. Having lived a fairly sheltered life with his grandmother, he didn't have much in the way of friends his age. Now he is heading off to Hogwarts, without his best friend Victoire, he finds himself woefully unprepared for the world of friendships, lessons and, in some cases, unfair judgements. Turns out, real life isn't as perfect as his books told him..." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Luna_Weasley03" AND l.name="English"
UNION
SELECT "The Bite Of Darkness" as name, a.id as author_id, 3 as rating, "The debacle of the International Quidditch tournament leaves Sebastian Delacour in a state of un-rest as his eldest daughter embarks on the journey of fame and fortune. What is a father to do when his child possesses the spirit of a bear and the stubbornness of a mule? The goblins lead him to a young man, who for all intents and purposes should not exist." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="The_Lost_Nyctophiliac" AND l.name="English"
UNION
SELECT "Homunculus to the Life" as name, a.id as author_id, 3 as rating, "In a conversation with Dumbledore’s portrait after the battle at Hogwarts, Harry finds out that he is and always has been a homunculus—a substitute body made to carry the Horcrux so that little Harry Potter, who lies asleep as a baby under powerful charms, wouldn’t have to. Harry struggles to process the news, the fallout, and the discovery that he might disintegrate at any moment." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Lomonaaeren" AND l.name="English"
UNION
SELECT "Community Board: Looking for Companionship" as name, a.id as author_id, 4 as rating, "During Harry's final year at Hogwarts Headmistress McGonagall puts a community board connected to all the common rooms. In an effort to eliminate house rivalries it was meant to connect students from different houses. Instead girls who are broke from the war are using it as a way to sell themselves. Harry was just looking for a friend but comes out with a new hobby." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="PotterSmut12" AND l.name="English"
UNION
SELECT "Always Read the Instructions" as name, a.id as author_id, 4 as rating, "Ginny comes up with a solution to the problem of Harry shagging her to the point of exhaustion. Bbut when he goes to use it while she's showering with her teammates after practice, she realizes she REALLY should have read the instruction manual." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="MayorHaggar" AND l.name="English"
UNION
SELECT "Harry Potter: After the Battle" as name, a.id as author_id, 4 as rating, "After the Battle of Hogwarts, Harry Potter struggles to put his life back together, to embrace a world he didn’t think he’d be able to see, from beginning Auror training and enduring a scathing, unauthorized biography by none other than Rita Skeeter, to salvaging his relationship with Ginny Weasley. Without the guidance of leaders like Albus Dumbledore, Remus Lupin, or even Severus Snape, and freed from the weighty task of defeating Lord Voldemort, Harry is faced with the most querulous mystery to date: himself." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Daeneryske" AND l.name="English"
UNION
SELECT "Substitute My Coke for Gin" as name, a.id as author_id, 4 as rating, "A secret from Harry’s schooldays stirs up trouble during his engagement to Ginny." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Lightofdaye" AND l.name="English"
UNION
SELECT "Red Right Hand" as name, a.id as author_id, 4 as rating, "What could possibly go wrong if one stupidly decides to sleep with his prime (and only) suspect in a murder case? No less when the suspect just happens to be your best mate's sister." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Fightfortherightsofhouseelves" AND l.name="English"
UNION
SELECT "Negotiate" as name, a.id as author_id, 4 as rating, "Lily Luna comes to her Mum to ask about a particular piece of jewellery she saw in old photographs and asks her mum a delicate question." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Divagonzo" AND l.name="English"
UNION
SELECT "Where The Grass Is Greener" as name, a.id as author_id, 4 as rating, "After the war, ideologies are questioned, priorities changed, and relationships cycled through like the ever-changing seasons. Harry, perhaps for the first time in his life, can just live and experience what it means to simply be another person – or as much as he can be, considering his name and fame. Co-authored with StellaStarMagic" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="SeaFeudJagger" AND l.name="English"
UNION
SELECT "Apex Predator" as name, a.id as author_id, 4 as rating, "Fleur invites Harry to lunch to 'thank him' for rescuing her sister in the second task. Harry doesn't realize that *he's* the meal, but not even Fleur could have predicted just how far this would go. Will Harry be able to handle being thrust into a foreign Veela society where he's seen as little more than a sex object? Will that Veela society be able to handle Harry Potter?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="VelvetInferno" AND l.name="English"
UNION
SELECT "Society Fair" as name, a.id as author_id, 1 as rating, "Newly appointed to the Wizengamot, Harry is shocked by how truly archaic things are. Can he join forces with the only person who actually cares about the world they live in, to be able to change their society for the better or will he be blocked at every turn. Political AU fic, eventually HP/DG." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="MimiAliceYorke" AND l.name="English"
UNION
SELECT "Harry Potter and The Truth or Dare?" as name, a.id as author_id, 4 as rating, "I know, truth or dare ... it's a bit of a cliche. There is nothing overly original or inventive here, but that doesn't mean it can't be fun. " as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="SuperMegaAwesomeNinja" AND l.name="English"
UNION
SELECT "Panacea" as name, a.id as author_id, 4 as rating, "Sequel to Novocaine. The initial foundation has been laid, but there is still a lot more to do. Harry and Daphne navigate their relationship, and new and old challenges in their quest to rebuild the wizarding world." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Stardust_Warrior" AND l.name="English"
UNION
SELECT "Novocaine" as name, a.id as author_id, 3 as rating, "After the end of the war, Harry has a meeting in Gringotts that changes his life. Given a unique opportunity to rebuild the world, he takes it upon himself to restore what was once lost to the wizarding world, while falling for a charming witch at the same time." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Stardust_Warrior" AND l.name="English"
UNION
SELECT "A Long-Awaited Letter" as name, a.id as author_id, 1 as rating, """I Told You! Potters always end up in Gryffindor, it's in our blood!"" Wanting to prank the sneakiest Slytherin was a good idea. At least, that's what Harry thought... Post-War One-shot, HP/DG" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Wyrdeen" AND l.name="English"
UNION
SELECT "Born As The Seventh Month Dies" as name, a.id as author_id, 2 as rating, "After being abandoned at the Dursleys for eight years, Harry Potter isn't quick to forgive his parents - particularly since he has to share them with the self-absorbed Boy-Who-Lived, Oliver Potter. Will the Potter family be able to mend after years apart, or are some wounds just too deep to heal? Series now complete!" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Aspionage" AND l.name="English"
UNION
SELECT "Neither Can Live While The Other Survives" as name, a.id as author_id, 2 as rating, "After his first year back in the Wizarding World, Harry has started to rebuild a tenuous relationship with his parents and is headed off to Hogwarts. Of course, his time at school will be far from peaceful. Being the twin brother of the Boy-Who-Lived is never easy, especially when everyone thinks you’re a Squib. Filled with the burning desire to prove himself, Harry decides to carve a place for himself in a world where he seems destined to be forgotten. Sequel to Born As The Seventh Month Dies." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Aspionage" AND l.name="English"
UNION
SELECT "Those Who Have Thrice Defied Him" as name, a.id as author_id, 2 as rating, "Things at Hogwarts are rarely peaceful - Harry knows that all too well. His Boy-Who-Lived brother, Oliver Potter, is constantly being dragged into all sorts of life-threatening situations, so after three years of constant danger it’s not that surprising when Oliver’s name is pulled out of the Goblet of Fire. It is shocking, however, when Harry’s name comes out right after it. As Harry and Oliver try to figure out a way to cope in such a dangerous tournament, a darker threat looms at the edges. And with that threat lies a bigger question - why would someone put Harry’s name in? And how will Harry and his family cope with the answer? Sequel to Neither Can Live While The Other Survives." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Aspionage" AND l.name="English"
UNION
SELECT "Power The Dark Lord Knows Not" as name, a.id as author_id, 2 as rating, "Voldemort is dead, but he’s not going to stay that way. As the Order of the Phoenix frantically try to destroy Voldemort’s Horcruxes before he’s resurrected once more, a reluctant Harry and his brother are shuttled off to Hogwarts for their fifth year. Here, they’ll face more challenges than just Voldemort - namely one Dolores Umbridge and her smear campaign. Even if half of Hogwarts doesn’t believe that Harry’s the Boy-Who-Lived, he certainly knows it - and so do the Death Eaters. And Harry’s getting ready to earn his title and fight. Sequel to Those Who Have Thrice Defied Him." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Aspionage" AND l.name="English"
UNION
SELECT "The Two Brothers" as name, a.id as author_id, 2 as rating, "A series of oneshots from the perspective of Oliver Potter, twin brother of Harry Potter and the Boy-Who-Lived. At least, he thinks he’s the Boy-Who-Lived. Note:This fic takes place within the Sybillance universe, so you probably want to read those fics first or this won’t make much sense." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Aspionage" AND l.name="English"
UNION
SELECT "Daphne Greengrass and the Preemptive Adulterer" as name, a.id as author_id, 3 as rating, "Harry doesn't necessarily expect a polite ""thank you"" after saving Daphne Greengrass and her younger sister from falling to their deaths, but he definitely doesn't expect the stream of verbal and magical curses he gets instead. His surprise is nothing compared to hers when her curse fails, though, and that discovery propels the two into a whirlwind week of legal loophole abuse, awkward lust, and weaponized Pureblood etiquette lessons." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="ScribblingSteve" AND l.name="English"
UNION
SELECT "Harry Potter: Life With A Single Futa Mother" as name, a.id as author_id, 4 as rating, "During his third year at Hogwarts Harry learns a closely guarded secret about a Witch's body, arriving back home for the summer he soon finds out that with nothing left to hide his mother is far more open than he would ever believe, and day after day Harry is exposed to a part of his mother he never expected to see." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Prime_Blue" AND l.name="English"
UNION
SELECT "Firewhiskeys & Happy Endings" as name, a.id as author_id, 4 as rating, "Ginny and Harry have to retire from their meet up with Ron and Hermione early when things are starting to heat up pretty quickly as Harry is trying his best not to kiss her senseless right there and then and Ginny's way too eager for him to actually do so." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Ghostoflinny" AND l.name="English"
UNION
SELECT "Harry Potter: The Big Bukkake Bang" as name, a.id as author_id, 4 as rating, "In need of funds to run their Defence group but with no access to bring anything in through traditional means, Harry and the girls need to think of alternative methods of raising money." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Prime_Blue" AND l.name="English"
UNION
SELECT "Fleur Delacour and the Secret of the Teardrop" as name, a.id as author_id, 3 as rating, "Fleur, born a curse, gifted above all Veela, and far less than a Veela all at once. She believed her life was one doomed to loneliness until a certain green-eyed boy with a scar on his forehead flipped everything on its head and showed her a life she could have, and how wonderous magic really was...AU, with a few pairings planned." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Triage" AND l.name="English"
UNION
SELECT "His Last Curse" as name, a.id as author_id, 3 as rating, "Harry Potter had not been back to Britain since the end of Voldemort. He returns due to strange circumstances and finds that while some things have changed, curses and dark magic are still prevalent. Plying his skills as a cursebreaker, he will learn why he left in the first place and will have to try to do what he did best, one last time." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="WokFriedIce" AND l.name="English"
UNION
SELECT "Enough of Both" as name, a.id as author_id, 4 as rating, "part of the three broomsticks summer soiree! prompt: found family & summer solstice" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Takearisk" AND l.name="English"
UNION
SELECT "Old Love" as name, a.id as author_id, 2 as rating, "10-year-old Willow Young had always been warned of the house at the end of the lane along with its mysterious occupant. But still, she found herself drawn to the house and the old man with sad green eyes that lived inside." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="TheHallowsInMe31" AND l.name="English"
UNION
SELECT "Awakening" as name, a.id as author_id, 4 as rating, "Fleur comes across a distraught Harry in a lonely corridor of Hogwarts and turns the situation to her advantage in corrupting the boy to be her plaything." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Atrxx93" AND l.name="English"
UNION
SELECT "Harry Potter and The Revival of The Phoenix" as name, a.id as author_id, 4 as rating, "Umbridge's rule over Hogwarts has provoked the rage and impatience of Harry Potter and his friends, pushing them over the edge to create Dumbledore's Army, a secret group that will be taught proper Defense Against the Dark Arts by Harry Potter himself. The group has some unexpected additions, however, that are bound to change Harry Potter's life forever. Part 1 of The Green Path Trilogy, a re-write of Books 5-6-7.
Smarter Harry, Competent Harry NOT Evil-Godlike Harry. Also, no bashing + Mentor Dumbledore." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Prince_Asmo" AND l.name="English"
UNION
SELECT "Snakes, Cats, and Ladders" as name, a.id as author_id, 4 as rating, "By her fifth year at Hogwarts, Daphne Greengrass had lost almost everything. She searches for a way out of Slytherin's social hierarchy and the hell that her schooling had slowly become. Little did she know, it was under her nose the whole time. Fifth Year. AU." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Ch4" AND l.name="English"
UNION
SELECT "The Veela's Captive" as name, a.id as author_id, 4 as rating, "Six months ago, when a newly married Harry Potter jokingly acted as if he was extremely vulnerable to suggestion under the effects of Fleur Delacour's most powerful allure, he thought she'd merely laugh at his antics. Well she didn't. Not at all... Instead, she almost immediately started demanding that he do all manner of sexual things with her. " as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Karmealion" AND l.name="English"
UNION
SELECT "A Soft Place to Land" as name, a.id as author_id, 4 as rating, "Ginny guides Harry as they both cope with change." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="GreenhouseThree" AND l.name="English"
UNION
SELECT "Nineteen Years Later..." as name, a.id as author_id, 4 as rating, "After seeing his middle child off to the train station, Harry sees someone he never thought he'd see again - especially not on Platform 9¾." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Littlepuff04" AND l.name="English"
UNION
SELECT "Amour Et Officium" as name, a.id as author_id, 4 as rating, "On that fateful Halloween night, Sirius Black makes a decision that will alter the destiny of the world. Looking at his godson, he decides vengeance could wait. He had a child to raise. After all, wasn’t revenge a dish best served cold?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="R_Collins" AND l.name="English"
UNION
SELECT "You Will Never Put Me Through That Again" as name, a.id as author_id, 4 as rating, """Were you really dead?"" she breathes, so low he would have missed it if he wasn’t so close to her. " as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Hollidayparty" AND l.name="English"
UNION
SELECT "Fleur De Lis" as name, a.id as author_id, 4 as rating, "The mayhem after an intriguing World Cup Final leads Harry down a path of danger, betrayal, and perhaps, even true love." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Magical_Worlds" AND l.name="English"
UNION
SELECT "Desperate Times" as name, a.id as author_id, 4 as rating, "When Harry learns Daphne Greengrass is selling herself to earn money for her family after the war, he decides to step in and help her. Of course, when has Daphne ever made things easy? Oneshot" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="ProfessorQuill" AND l.name="English"
UNION
SELECT "Under the Starry Skies, the Greengrass Lies" as name, a.id as author_id, 4 as rating, "Tired of waiting for her boyfriend to get a clue, Daphne decides to climb into his lap and take matters into her own hands. After all, fortune (and spankings) favor the brats! (AU where Hogwarts starts at 14.)" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Magical_Worlds" AND l.name="English"
UNION
SELECT "Who Wouldn't Want You" as name, a.id as author_id, 2 as rating, "The British Wizarding World is rebuilding following the Second Blood War, but some of the most vulnerable are slipping through the cracks. After seeing firsthand how orphans of the war are being treated, he makes some major life changes to be the person he wish he had growing up. This is my take on Harry as a foster parent." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Nixrocket" AND l.name="English"
UNION
SELECT "It's Complicated" as name, a.id as author_id, 4 as rating, "Harry and Ginny each have a secret, and by chance, realise they can help each other out. Both are determined to keep this new relationship purely physical, but their past relationship rekindles old feelings. Can they keep this relationship a secret from their family? Can they have the best of both worlds? It's Complicated!" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Pottermum" AND l.name="English"
UNION
SELECT "Pretty Please with a Ginny on Top" as name, a.id as author_id, 4 as rating, "Ginny discovers her inner 'top'." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Rickey" AND l.name="English"
UNION
SELECT "Four Times Harry Walked in on Ron and Hermione and One Time He Didn’t" as name, a.id as author_id, 4 as rating, "“For fuck’s sake,” Harry sputtered. Ron jumped, nearly exposing Hermione to Harry’s line of sight. He thanked Merlin that it was dark. “Harry,” Ron panted, as he pulled his trousers back up. “I didn’t expect you to be early.” “Early?” Harry shot back. “I’m on time. Where the fuck is George anyway?” “Downstairs closing,” Ron answered, still not moving from between Hermione’s legs. “He said he could close without me since I’d been working so hard.” “So, you thought you’d come up here and have a quickie?”" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Liiilyevans" AND l.name="English"
UNION
SELECT "Ménage à Quatre" as name, a.id as author_id, 4 as rating, "Hogwarts is reopening after a year of rebuilding and fixing the damages from the war, but in that year a lot has changed for everyone... How with some going back for their final year, and others moving on with their lives... Harry, Ginny and Hermione are looking to the future, rekindling old friends and discovering new relationships, exploring sexuality, and learning that the future might be far more open than they had originally believed..." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Methos (Methos2523)" AND l.name="English"
UNION
SELECT "Brumous" as name, a.id as author_id, 3 as rating, "A mirror remembered. Such a subtle thing, yet also very potent. A butterfly flaps its wings and one small difference, one small action, causes an endless ripple of effects. Harry Potter and Sirius Black discover the true meaning of family as the world tilts on its axis." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="SeriouslySam" AND l.name="English"
UNION
SELECT "Needs" as name, a.id as author_id, 3 as rating, "Harry discovers that he needs Hermione much more than he originally thought..." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Litfreak89" AND l.name="English"
UNION
SELECT "Her Goodbye" as name, a.id as author_id, 3 as rating, "Harry and Fleur get together the night before they leave Hogwarts in GoF. Rated M for sex." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Disappearing Boy" AND l.name="English"
UNION
SELECT "Bath and Bed" as name, a.id as author_id, 3 as rating, "Sometimes after a long days work all you need is some TLC. Harry and Ginny Lemon" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Tommigoesfroging" AND l.name="English"
UNION
SELECT "Homework with Hermione" as name, a.id as author_id, 3 as rating, "Hermione is feeling a little jealous of Ron's relationship with Lavender, and decides to "release some tension" with Harry one night in the common room. Pure smutty smut, so rated M. Hermione/Harry." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Airam06" AND l.name="English"
UNION
SELECT "Harry Potter and the Prefects Bath" as name, a.id as author_id, 3 as rating, "Harry uses the prefects bath to relax, he falls asleep and is awakened as the door opens." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="123irish" AND l.name="English"
UNION
SELECT "Library Princess" as name, a.id as author_id, 3 as rating, "Pansy stalks Hermione in the library one night and a steamy scene ensues. Femslash. Femmeslash. Girl on Girl. Language. Bondage. BDSM." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Frenchhornbook" AND l.name="English"
UNION
SELECT "Emerald Coven" as name, a.id as author_id, 3 as rating, "Harry, still coming to terms with the reality of his destiny, and only just beginning to understand his greatest foe finds himself the unintended recipient of a magical bond between himself and one Gabrielle Delacour. An epic AU story beginning in the middle of sixth year, follows harry as one dramatic event leads him down a spiral path of debauchery and discovery." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Hallows Seeker" AND l.name="English"
UNION
SELECT "Dirty games" as name, a.id as author_id, 3 as rating, "my first oneshot/Bellamione: Hermione visits Bellatrix in an old house to have some fun with her." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Noctus Noxia" AND l.name="English"
UNION
SELECT "The Courtesan" as name, a.id as author_id, 3 as rating, "Pansy Parkinson is a whore. At least by society's standards. Harry/Pansy. One-shot. Not fluffy. Originally written for the 2008 pphpficexchange at LiveJournal; gift for yinepu." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="HeartsIgnite" AND l.name="English"
UNION
SELECT "Enjoy the Fireworks" as name, a.id as author_id, 3 as rating, "At the apparent 'wedding' of Bill Weasley and Fleur Delacour Harry finally steps out and reveals his knowledge of the betrayals along with a few other secrets to boot, all that's left to do is sit back and enjoy the fireworks. WARNING: Lemons (don't like then don't read), and this fic is (I think) bordering the line between PWP and SWS" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="ChampionOfKratos" AND l.name="English"
UNION
SELECT "Feral" as name, a.id as author_id, 3 as rating, "Hermione isn't exactly the innocent little girl she used to be and she knows that. Hermione isn't sure when it started. She knew that Bella had started it, but it was too late now. The four of them were bound together. And that's just the way Hermione wants it with the three Black sisters. Bellamione Andromione and Narcmione inside" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="TsyberRhaegal" AND l.name="English"
UNION
SELECT "Domesticated" as name, a.id as author_id, 3 as rating, "Sequel to ""Feral,"" Hermione experiences domesticated life with her three beloved Black sisters and Bellatrix and Narcissa adapt to muggle pastimes. Bellamione, Andromione and Narcissmione. *Warning: OOCness*" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="TsyberRhaegal" AND l.name="English"
UNION
SELECT "Godfather Neville" as name, a.id as author_id, 3 as rating, "Forgiveness is hard. Very hard. Sometimes impossible, but that doesn't mean there can't be a second chance. Neville meets Hydra, Hermione and Bellatrix's daughter. Takes place before ""Voyeurism is such a strong word.""" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="TsyberRhaegal" AND l.name="English"
UNION
SELECT "Voyeurism is such a strong word" as name, a.id as author_id, 3 as rating, "Voyeurism is such a strong word, isn't it? Bellatrix and Andromeda certainly don't think they can be blamed for wanting to see their Hermione writhe under Narcissa…..or on top of Narcissa, depending on what happens, you know? Rated M for a reason (but with a title like that, are you surprised?) Narcimione, masturbation and voyeurism ahead" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="TsyberRhaegal" AND l.name="English"
UNION
SELECT "Reciprocation is key" as name, a.id as author_id, 3 as rating, ""If there's one thing I'm sure the Black family knows is that a lady is never to go unsatisfied and that reciprocation is key to a good relationship." Takes place literally the morning after "Voyeurism is such a strong word." Hermione pays Narcissa back for the quite...pleasurable experience the night before. Rated M for a reason." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="TsyberRhaegal" AND l.name="English";

/*
 * Link
 * NOTE Links to fanfictions
 */
DELETE FROM `links`;
INSERT INTO `links`(`url`, `fanfiction_id`) 
SELECT "https://archiveofourown.org/works/7746940/chapters/17662930", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Dancing Dragonflies" AND a.name = "Jayf"
UNION
SELECT "https://www.fanfiction.net/s/11171160/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Necessary" AND a.name = "Ariaojou"
UNION
SELECT "https://www.fanfiction.net/s/11171789/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Life in the New World" AND a.name = "Jm1681"
UNION
SELECT "https://www.fanfiction.net/s/11423880/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "We'll not die!" AND a.name = "Cj Spencer"
UNION
SELECT "https://www.fanfiction.net/s/12885248/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Cross Ange: The Knight of Hilda" AND a.name = "Eric Michael Kline"
UNION
SELECT "https://www.fanfiction.net/s/13678532/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Comeback Kid" AND a.name = "Somebody's Nightmare"
UNION
SELECT "https://www.fanfiction.net/s/14077257/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Lost Love Letters of Cloud Strife" AND a.name = "Somebody's Nightmare"
UNION
SELECT "https://www.fanfiction.net/s/14078396/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Waiting" AND a.name = "Me413"
UNION
SELECT "https://www.fanfiction.net/s/13330614/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Innocent Feelings" AND a.name = "Senigata"
UNION
SELECT "https://www.fanfiction.net/s/13330619/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Journey of a Barmaid" AND a.name = "Senigata"
UNION
SELECT "https://www.fanfiction.net/s/13396980/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Emerald Dream" AND a.name = "Senigata"
UNION
SELECT "https://www.fanfiction.net/s/13417712/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Golden Respite" AND a.name = "Senigata"
UNION
SELECT "https://www.fanfiction.net/s/13423308/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Lost Heart" AND a.name = "Senigata"
UNION
SELECT "https://www.fanfiction.net/s/13428455/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Fractured Mind" AND a.name = "Senigata"
UNION
SELECT "https://www.fanfiction.net/s/13447581/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Starlight" AND a.name = "Senigata"
UNION
SELECT "https://www.fanfiction.net/s/13330623/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Post Crisis" AND a.name = "Senigata"
UNION
SELECT "https://www.fanfiction.net/s/3054771/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Gunslinger" AND a.name = "Nataku's Wrath"
UNION
SELECT "https://www.fanfiction.net/s/8487603/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Final Fantasy: Guardians" AND a.name = "VeryBerry96"
UNION
SELECT "https://www.fanfiction.net/s/7823214/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Twist in Fate" AND a.name = "IAltoSax"
UNION
SELECT "https://www.fanfiction.net/s/5096318/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Final Fantasy X: All Bets Are Off" AND a.name = "Selphie800"
UNION
SELECT "https://www.fanfiction.net/s/5195185/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "All Bets Are Off: The Sequel" AND a.name = "Selphie800"
UNION
SELECT "https://www.fanfiction.net/s/6844081/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "FFX: All Bets Are Off 3: Tidus & Yuna Forever" AND a.name = "Selphie800"
UNION
SELECT "https://www.fanfiction.net/s/9661091/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "FFX: All Bets Are Off 4: For the Love of Tidus" AND a.name = "Selphie800"
UNION
SELECT "https://www.fanfiction.net/s/10804886/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "All Bets Are Off V: The Conclusion" AND a.name = "Selphie800"
UNION
SELECT "https://www.fanfiction.net/s/13490272/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Neo-Genesis" AND a.name = "M'jai"
UNION
SELECT "https://www.fanfiction.net/s/13265491/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Spira's Dream" AND a.name = "M'jai"
UNION
SELECT "https://www.fanfiction.net/s/13336008/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Spira's Sphere" AND a.name = "M'jai"
UNION
SELECT "https://www.fanfiction.net/s/13761265/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Spira's Revenge" AND a.name = "M'jai"
UNION
SELECT "https://archiveofourown.org/works/1029121/chapters/2049512", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion"
UNION
SELECT "https://archiveofourown.org/works/10506063", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Mixed Up Dreams" AND a.name = "Phoenixgal"
UNION
SELECT "https://archiveofourown.org/works/10391232", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Lost in Muggle London" AND a.name = "Phoenixgal"
UNION
SELECT "https://archiveofourown.org/works/10394559", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Perils of Too Much Calming Potion" AND a.name = "Phoenixgal"
UNION
SELECT "https://archiveofourown.org/works/10394589", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Second String" AND a.name = "Phoenixgal"
UNION
SELECT "https://archiveofourown.org/works/10860894", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Family" AND a.name = "Phoenixgal"
UNION
SELECT "https://archiveofourown.org/works/10394610", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "No Rules" AND a.name = "Phoenixgal"
UNION
SELECT "https://archiveofourown.org/works/12216330", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Muggle Relations" AND a.name = "Phoenixgal"
UNION
SELECT "https://archiveofourown.org/works/12199704", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Family Time" AND a.name = "Phoenixgal"
UNION
SELECT "https://archiveofourown.org/works/10394628", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Lucky Kids" AND a.name = "Phoenixgal"
UNION
SELECT "https://archiveofourown.org/works/10864125", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Expanding Bed Charms" AND a.name = "Phoenixgal"
UNION
SELECT "https://archiveofourown.org/works/10394706", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Not a Phase" AND a.name = "Phoenixgal"
UNION
SELECT "https://archiveofourown.org/works/12258987", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Awkward Lunch" AND a.name = "Phoenixgal"
UNION
SELECT "https://archiveofourown.org/works/10506039", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "At the Hogsnock Baths" AND a.name = "Phoenixgal"
UNION
SELECT "https://archiveofourown.org/works/10864611", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal"
UNION
SELECT "https://archiveofourown.org/works/9710111", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Outsider" AND a.name = "Phoenixgal"
UNION
SELECT "https://archiveofourown.org/works/11917491", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Greek Holiday" AND a.name = "Phoenixgal"
UNION
SELECT "https://archiveofourown.org/works/14171427", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal"
UNION
SELECT "https://archiveofourown.org/works/1078686", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Best and the Brightest" AND a.name = "Tjs_whatnot"
UNION
SELECT "https://archiveofourown.org/works/1087458", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy"
UNION
SELECT "https://archiveofourown.org/works/1129793", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "From One Good Time To Another" AND a.name = "Scarletladyy"
UNION
SELECT "https://archiveofourown.org/works/117609", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Grey Haven" AND a.name = "QuidditchMom (eibbil_one)"
UNION
SELECT "https://archiveofourown.org/works/117626", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Red Dress" AND a.name = "QuidditchMom (eibbil_one)"
UNION
SELECT "https://archiveofourown.org/works/117627", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Up Against the Wall" AND a.name = "QuidditchMom (eibbil_one)"
UNION
SELECT "https://archiveofourown.org/works/117632", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Caught" AND a.name = "QuidditchMom (eibbil_one)"
UNION
SELECT "https://archiveofourown.org/works/1179394", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Parkinson's Knickers (Or Lack Thereof)" AND a.name = ""
UNION
SELECT "https://archiveofourown.org/works/1183749", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Quid Pro Quo" AND a.name = ""
UNION
SELECT "https://archiveofourown.org/works/136800", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Games Without Frontiers" AND a.name = "Kabal42"
UNION
SELECT "https://archiveofourown.org/works/1522337/chapters/3219140", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "All's Fair" AND a.name = "Sarcastrow"
UNION
SELECT "https://archiveofourown.org/works/1603226", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Another Kind of Lesson" AND a.name = "Twisted_Mind"
UNION
SELECT "https://archiveofourown.org/works/1603265", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Another Kind of Teacher" AND a.name = "Twisted_Mind"
UNION
SELECT "https://archiveofourown.org/works/1603409", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Another Kind of Punishment" AND a.name = "Twisted_Mind"
UNION
SELECT "https://archiveofourown.org/works/2057250", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Walkies" AND a.name = "Lokifan"
UNION
SELECT "https://archiveofourown.org/works/5929906", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "You Did Say ""Anything""" AND a.name = "Lokifan"
UNION
SELECT "https://archiveofourown.org/works/2159955", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Playing Games" AND a.name = "Inell"
UNION
SELECT "https://archiveofourown.org/works/2223129", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Just Ask" AND a.name = "Previouslysane (altar_boy)"
UNION
SELECT "https://archiveofourown.org/works/228014", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Challenges of Remote Subbing" AND a.name = "AuntieL"
UNION
SELECT "https://archiveofourown.org/works/23223", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Pretty From Behind" AND a.name = "Clio_jlh"
UNION
SELECT "https://archiveofourown.org/works/2330375", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Bliss" AND a.name = "Inell"
UNION
SELECT "https://archiveofourown.org/works/237011", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "That'll Show Them" AND a.name = "Woldy"
UNION
SELECT "https://archiveofourown.org/works/2441465", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Normal" AND a.name = "RosaCalavera"
UNION
SELECT "https://archiveofourown.org/works/2689190/chapters/6016817", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Horny at Hogwarts" AND a.name = "Jumper712"
UNION
SELECT "https://archiveofourown.org/works/2748764/chapters/6161819", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Clueless" AND a.name = "Pottermum"
UNION
SELECT "https://archiveofourown.org/works/2783978", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Metamorph Bet" AND a.name = "MayorHaggar"
UNION
SELECT "https://archiveofourown.org/works/305912", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Shagging Spot" AND a.name = "Hollywoodland"
UNION
SELECT "https://archiveofourown.org/works/305913", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Encore" AND a.name = "Hollywoodland"
UNION
SELECT "https://archiveofourown.org/works/3084182", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Minister's Affair" AND a.name = "Romaine"
UNION
SELECT "https://archiveofourown.org/works/3153056", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Favours & Benefits" AND a.name = "Lightofdaye"
UNION
SELECT "https://archiveofourown.org/works/1140315", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "This Christmas" AND a.name = "Tryslora"
UNION
SELECT "http://archiveofourown.org/works/133672", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Stockings Were Hung by the Chimney With Care" AND a.name = "Star54kar"
UNION
SELECT "https://archiveofourown.org/works/1494676", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Stress Relief" AND a.name = "Megamatt09"
UNION
SELECT "https://archiveofourown.org/works/1594001", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "A Very Happy Mother's Day" AND a.name = "Megamatt09"
UNION
SELECT "https://archiveofourown.org/works/1681298/chapters/3572561", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Property of Potter" AND a.name = "Megamatt09"
UNION
SELECT "https://archiveofourown.org/works/218355", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The One Blessing of a Curse" AND a.name = "Tryslora"
UNION
SELECT "https://archiveofourown.org/works/2266149", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Stress Relief" AND a.name = "Inell"
UNION
SELECT "https://archiveofourown.org/works/2508476", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Weasley Witches Collective" AND a.name = "MargaretSexyMum"
UNION
SELECT "https://archiveofourown.org/works/287895", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Bad Day (Or How to Get Hermione to Stop Worrying And Enjoy Sex While On The Clock)" AND a.name = ""
UNION
SELECT "https://archiveofourown.org/works/3244520", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "First Times" AND a.name = "Pottermum"
UNION
SELECT "https://archiveofourown.org/works/3316826/chapters/7247597", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG"
UNION
SELECT "https://archiveofourown.org/works/3319946/chapters/7254968", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Birthday Wishes" AND a.name = "Pottermum"
UNION
SELECT "https://archiveofourown.org/works/3552710/chapters/7823180", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "I wasn't thinking about you, again." AND a.name = "Argenterie"
UNION
SELECT "https://archiveofourown.org/works/3664839", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Euphemism is a perfectly good word" AND a.name = "Pottermum"
UNION
SELECT "https://archiveofourown.org/works/386831/chapters/633840", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "That Need" AND a.name = "HPTrio"
UNION
SELECT "https://archiveofourown.org/works/3869599/chapters/8647621", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Seekers of Love" AND a.name = "Thatsarockfact55"
UNION
SELECT "https://archiveofourown.org/works/3940219", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "I'm Sure!" AND a.name = "Lightofdaye"
UNION
SELECT "https://archiveofourown.org/works/4009669", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Fly Away" AND a.name = "Likebunnies"
UNION
SELECT "https://archiveofourown.org/works/4060003", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Uninhibited: Nymphadora" AND a.name = "DepravedDevil"
UNION
SELECT "https://archiveofourown.org/works/3387680", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Dominating Daphne" AND a.name = "ThatsRealMagic"
UNION
SELECT "https://archiveofourown.org/works/4081549", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Daphne Dominates" AND a.name = "ThatsRealMagic"
UNION
SELECT "https://archiveofourown.org/works/7030750", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Daytime Domination" AND a.name = "ThatsRealMagic"
UNION
SELECT "https://archiveofourown.org/works/4104787", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Harry's Need" AND a.name = "Pottermum"
UNION
SELECT "https://archiveofourown.org/works/4111189", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Ginny's Need" AND a.name = "Pottermum"
UNION
SELECT "https://archiveofourown.org/works/4244874", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Bet" AND a.name = "Emmagrant01"
UNION
SELECT "https://archiveofourown.org/works/4261107/chapters/9645003", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Sustenance." AND a.name = "Pottermum"
UNION
SELECT "https://archiveofourown.org/works/4295556", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Ginny's Appetite" AND a.name = "Pottermum"
UNION
SELECT "https://archiveofourown.org/works/4314258", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Dinner, Date...Draco?" AND a.name = "MayorHaggar"
UNION
SELECT "https://archiveofourown.org/works/434599/chapters/737881", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Dinner, Date...Draco?" AND a.name = "Tryslora"
UNION
SELECT "https://archiveofourown.org/works/4361342/chapters/9895154", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Broom Cupboard Encounters" AND a.name = ""
UNION
SELECT "https://archiveofourown.org/works/4413446/chapters/10024109", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Harry Potter and his luscious Butt" AND a.name = "WerewolfWarriro"
UNION
SELECT "https://archiveofourown.org/works/4417412/chapters/10035245", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)"
UNION
SELECT "https://archiveofourown.org/works/4429739", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Tit for Tat" AND a.name = "Inell"
UNION
SELECT "https://archiveofourown.org/works/4576842/chapters/10424151", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent"
UNION
SELECT "https://archiveofourown.org/works/4580109/chapters/10431903", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)"
UNION
SELECT "https://archiveofourown.org/works/4636959", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Last Time" AND a.name = "TableForThree_Archivist"
UNION
SELECT "https://archiveofourown.org/works/4694069", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "No Thank You" AND a.name = "Sarah1281"
UNION
SELECT "https://archiveofourown.org/works/4714073", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Rouse the Dead" AND a.name = "Torino10154"
UNION
SELECT "https://archiveofourown.org/works/4736876/chapters/10825904", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)"
UNION
SELECT "https://archiveofourown.org/works/474197/chapters/822358", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Office Fun" AND a.name = "Ronslady23"
UNION
SELECT "https://archiveofourown.org/works/4749380", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Reward" AND a.name = "Zakhro"
UNION
SELECT "https://archiveofourown.org/works/4749584/chapters/10857227", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999"
UNION
SELECT "https://archiveofourown.org/works/4815533", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "I'm Worried About Harry" AND a.name = "Heyitsamorette (AmoretteHD)"
UNION
SELECT "https://archiveofourown.org/works/4915315", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Before the Wedding" AND a.name = "Ufohnoparty (why_didnt_i_get_any_soup)"
UNION
SELECT "https://archiveofourown.org/works/4972744", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Roman Holiday" AND a.name = "Charleybradburies"
UNION
SELECT "https://archiveofourown.org/works/4973755/chapters/11423518", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)"
UNION
SELECT "https://archiveofourown.org/works/4979758/chapters/11437501", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Harry Potter and the Veela Sisters" AND a.name = "Dirtyuncle"
UNION
SELECT "https://archiveofourown.org/works/5230337", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Christmas Holiday" AND a.name = ""
UNION
SELECT "https://archiveofourown.org/works/5256011", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Quiet" AND a.name = "Lightofdaye"
UNION
SELECT "https://archiveofourown.org/works/533693", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Falling Through Clouds" AND a.name = "Holyfant"
UNION
SELECT "https://archiveofourown.org/works/5414423", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Private Party in the Conservatory" AND a.name = "Iwant2baweasley (becboobear)"
UNION
SELECT "https://archiveofourown.org/works/5423630", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Christmas Cheer" AND a.name = "Smutty_claus"
UNION
SELECT "https://archiveofourown.org/works/542943", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Slytherin Games (Remix of Snakes)" AND a.name = "Icicle"
UNION
SELECT "https://archiveofourown.org/works/544129", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Anonymous Signs" AND a.name = "Abigail89"
UNION
SELECT "https://archiveofourown.org/works/5443523", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "my heart is holding on to you" AND a.name = "Aceofdiamonds"
UNION
SELECT "https://archiveofourown.org/works/5479661", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Candy Cane Obsessed Freak" AND a.name = "Luvscharlie"
UNION
SELECT "https://archiveofourown.org/works/5548187/chapters/12796865", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Female Transfiguration 101" AND a.name = "Lamp23"
UNION
SELECT "https://archiveofourown.org/works/5560825", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Bedtime" AND a.name = "Holyfant"
UNION
SELECT "https://archiveofourown.org/works/5588080", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Tea with the Headmistress" AND a.name = "Fluffybookfaerie"
UNION
SELECT "https://archiveofourown.org/works/5690038", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Fire" AND a.name = "Zoelily"
UNION
SELECT "https://archiveofourown.org/works/5690041/chapters/13106431", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Accio Ballgag!" AND a.name = "Harby"
UNION
SELECT "https://archiveofourown.org/works/5743573", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Christmas Bells are Ringing" AND a.name = "MayorHaggar"
UNION
SELECT "https://ficwad.com/story/238864", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Christmas Bells are Ringing" AND a.name = "MayorHaggar"
UNION
SELECT "https://archiveofourown.org/works/5746036", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "For This One Day" AND a.name = "Flipflop_diva"
UNION
SELECT "https://archiveofourown.org/works/5769400", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "A Birthday Gift" AND a.name = "Zakhro"
UNION
SELECT "https://archiveofourown.org/works/5853172", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "A Night in the Lioness' Den" AND a.name = "Sheltie1987"
UNION
SELECT "https://archiveofourown.org/works/5974891/chapters/13730596", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Trouble, with a Capital T" AND a.name = "Pottermum"
UNION
SELECT "https://archiveofourown.org/works/6088113", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "They spurn the holiday spirit in their usual way" AND a.name = "Luvsanime02"
UNION
SELECT "https://archiveofourown.org/works/6088252", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Birthday Surprise" AND a.name = "LRThunder"
UNION
SELECT "https://archiveofourown.org/works/6176", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Walking the Walk" AND a.name = "Chazpure"
UNION
SELECT "https://archiveofourown.org/works/621094", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Your secret fantasy" AND a.name = "VanessaWolfie"
UNION
SELECT "https://archiveofourown.org/works/631887", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Change of Heart" AND a.name = "Ragdoll"
UNION
SELECT "https://archiveofourown.org/works/6523219", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Addictive" AND a.name = ""
UNION
SELECT "https://archiveofourown.org/works/6522772", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Restorative" AND a.name = ""
UNION
SELECT "https://archiveofourown.org/works/666705", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Who Seems a Beast (but secretly dreams of beauty)" AND a.name = "Songquake"
UNION
SELECT "https://archiveofourown.org/works/6701890", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Flood" AND a.name = "Holyfant"
UNION
SELECT "https://archiveofourown.org/works/6907138", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "All My Wildest Dreams" AND a.name = "Walgesang"
UNION
SELECT "https://archiveofourown.org/works/6942352/chapters/15832207", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Dorm Mates" AND a.name = "BananasPyjamas"
UNION
SELECT "https://archiveofourown.org/works/6968818", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The 69" AND a.name = "LRThunder"
UNION
SELECT "https://archiveofourown.org/works/7299847/chapters/16579465", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Falling Towards Something (It Might Just Be You)" AND a.name = "Thewaywedo33"
UNION
SELECT "https://archiveofourown.org/works/7309483", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "A Love Story in Four Acts" AND a.name = "Inell"
UNION
SELECT "https://archiveofourown.org/works/7370608", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Intricacies of Magical Etiquette" AND a.name = "MayorHaggar"
UNION
SELECT "https://archiveofourown.org/works/749765/chapters/1399092", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "HBG Mini-series: Lily" AND a.name = "Sheltie1987"
UNION
SELECT "https://archiveofourown.org/works/749784/chapters/1399144", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "HBG Mini-series: Pureblood Wives" AND a.name = "Sheltie1987"
UNION
SELECT "https://archiveofourown.org/works/7800409", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Prewett Cup" AND a.name = "Ap_aelfwine"
UNION
SELECT "https://archiveofourown.org/works/7968340", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "An Odd Turn of Events" AND a.name = "IridescentLugia"
UNION
SELECT "https://archiveofourown.org/works/7973254/chapters/18238369", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Night Moves" AND a.name = "NidoranDuran"
UNION
SELECT "https://archiveofourown.org/works/8634751/chapters/19801915", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Guest Bedroom" AND a.name = "Holyfant"
UNION
SELECT "https://archiveofourown.org/works/9270734", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Mirrors And Opposites" AND a.name = "Lightofdaye"
UNION
SELECT "https://archiveofourown.org/works/9463646", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The List" AND a.name = "Olivieblake"
UNION
SELECT "https://archiveofourown.org/works/9578324", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Friends & Lovers" AND a.name = "TarnishedArmour"
UNION
SELECT "https://archiveofourown.org/works/959452", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Boy Who Wanted Her" AND a.name = "Likebunnies"
UNION
SELECT "https://archiveofourown.org/works/959605", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Boy Who Was Hers" AND a.name = "Likebunnies"
UNION
SELECT "https://archiveofourown.org/works/9604055/chapters/21697106", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "How We Live" AND a.name = "Wendings"
UNION
SELECT "https://archiveofourown.org/works/960459/chapters/1881823", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Infernal Plan" AND a.name = "Likebunnies"
UNION
SELECT "https://archiveofourown.org/works/961200", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Center of Attention" AND a.name = ""
UNION
SELECT "https://archiveofourown.org/works/968734", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Vein of Gold" AND a.name = "Pelespen"
UNION
SELECT "https://archiveofourown.org/works/982512", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Encounters After the Yule Ball" AND a.name = "Sheltie1987"
UNION
SELECT "https://archiveofourown.org/works/9857489", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Love You Completely" AND a.name = "Starstruck1986"
UNION
SELECT "https://deluded-musings.fanficauthors.net/A_Chance_Meeting/Harry/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "A Chance Meeting" AND a.name = "Clell65619"
UNION
SELECT "https://ficwad.com/story/121391", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "You're my what?" AND a.name = "Scruffy1"
UNION
SELECT "https://archiveofourown.org/works/631287", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Not On His List" AND a.name = "Musyc"
UNION
SELECT "https://archiveofourown.org/works/7816444", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "An Unexpected Source of Wisdom" AND a.name = "Alyndra"
UNION
SELECT "https://archiveofourown.org/works/86489", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Troika" AND a.name = "Lily_pearl (lilyandjoey)"
UNION
SELECT "https://archiveofourown.org/works/86489", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Subservient Housewives and other Mythical Creatures" AND a.name = "Voxangelus"
UNION
SELECT "https://ficwad.com/story/155242", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Ice Princess" AND a.name = "LuanMao"
UNION
SELECT "https://ficwad.com/story/81174", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Harry in a new world" AND a.name = "Clell65619"
UNION
SELECT "https://ficwad.com/story/90820", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Harry Potter and the Marriage Contracts" AND a.name = "Clell65619"
UNION
SELECT "https://ficwad.com/story/96371", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Live! For God's Sake, Live!" AND a.name = "HarryGinnyTonks"
UNION
SELECT "https://hp.adult-fanfiction.org/story.php?no=600096710", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "A Lesson in Propriety" AND a.name = "Dime"
UNION
SELECT "https://hp.adult-fanfiction.org/story.php?no=600099504&chapter=1", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Confessions Under A Night Sky" AND a.name = "Snowblind12"
UNION
SELECT "https://hp.adult-fanfiction.org/story.php?no=600099542", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Weasley Wives' Club" AND a.name = "RubySaintClaire"
UNION
SELECT "https://archiveofourown.org/works/1043616/chapters/2088880", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver"
UNION
SELECT "https://archiveofourown.org/works/1115373", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Unsealed" AND a.name = "Esama"
UNION
SELECT "https://archiveofourown.org/works/14603001", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Slumber Party" AND a.name = "Femmeslyth"
UNION
SELECT "https://archiveofourown.org/works/4371344", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "A Memorable Farewell" AND a.name = "Pommedeplume"
UNION
SELECT "https://archiveofourown.org/works/5250560", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Yearning Hearts" AND a.name = "Pommedeplume"
UNION
SELECT "https://archiveofourown.org/works/12070980", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Open to Love" AND a.name = "Pommedeplume"
UNION
SELECT "https://archiveofourown.org/works/12085344", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Things to Do in Berlin (When You're Bored)" AND a.name = "Pommedeplume"
UNION
SELECT "https://archiveofourown.org/works/12092892", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Normal Things" AND a.name = "Pommedeplume"
UNION
SELECT "https://archiveofourown.org/works/1553366", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "The Girl Who Topped" AND a.name = "Pommedeplume"
UNION
SELECT "https://archiveofourown.org/works/1663355", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume"
UNION
SELECT "https://archiveofourown.org/works/3131528", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Various Climaxes" AND a.name = "Pommedeplume"
UNION
SELECT "https://archiveofourown.org/works/23175244", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Luna's Desires" AND a.name = "Pommedeplume"
UNION
SELECT "https://archiveofourown.org/works/2220033", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume"
UNION
SELECT "https://archiveofourown.org/works/1804540", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Welcome to the Family" AND a.name = "Pommedeplume"
UNION
SELECT "https://archiveofourown.org/works/24112141", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Open Doors" AND a.name = "Pommedeplume"
UNION
SELECT "https://archiveofourown.org/works/15649683", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "One in a Million" AND a.name = "Maraudersaffair"
UNION
SELECT "https://archiveofourown.org/works/17623451", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "You've Got Me Pegged" AND a.name = "Gracerene"
UNION
SELECT "https://archiveofourown.org/works/17806607", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Let go" AND a.name = "Lostonplatform934"
UNION
SELECT "https://archiveofourown.org/works/17927729", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Best Behaviour" AND a.name = "Idleside"
UNION
SELECT "https://archiveofourown.org/works/20380228", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "The World's a Stage" AND a.name = "Idleside"
UNION
SELECT "https://archiveofourown.org/works/24903724", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "(Revel)ations" AND a.name = "Idleside"
UNION
SELECT "https://archiveofourown.org/works/28646670", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Blood and Bones" AND a.name = "Idleside"
UNION
SELECT "https://archiveofourown.org/works/26853997", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Helping Hands" AND a.name = "Idleside"
UNION
SELECT "https://archiveofourown.org/works/27041242", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Cosmopolitan" AND a.name = "Idleside"
UNION
SELECT "https://archiveofourown.org/works/18034958/chapters/42616511", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "My Mind Is Screaming (But Your Touch Brings Me Silence)" AND a.name = ""
UNION
SELECT "https://archiveofourown.org/works/18374099", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Paramount ~ Extension" AND a.name = "Ronslady23"
UNION
SELECT "https://archiveofourown.org/works/20009062", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "We Three Seekers" AND a.name = "Farbautidottir"
UNION
SELECT "https://archiveofourown.org/works/19663699", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Best Friends, Always" AND a.name = "Farbautidottir"
UNION
SELECT "https://archiveofourown.org/works/23148583/chapters/55400383", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Harry Potter and The Heir of House Greengrass" AND a.name = "SazzyLJ"
UNION
SELECT "https://archiveofourown.org/works/23195689/chapters/55526803", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "From Southampton to New York and Beyond" AND a.name = "Dorothea_Greengrass"
UNION
SELECT "https://archiveofourown.org/works/23339284", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass"
UNION
SELECT "https://archiveofourown.org/works/23371396", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Rose's Birthday Present" AND a.name = "Red_jacobson"
UNION
SELECT "https://archiveofourown.org/works/23986264/chapters/57697015", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Daphne Greengrass and the Importance Of Intent" AND a.name = "PetrificusSomewhatus"
UNION
SELECT "https://archiveofourown.org/works/23986966", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "The Importance Of Intent: After The Credits" AND a.name = "PetrificusSomewhatus"
UNION
SELECT "https://archiveofourown.org/works/24295078", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "On A Night Like This - Potter Chronicle's" AND a.name = "Oakel"
UNION
SELECT "https://archiveofourown.org/works/24492715", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "May It Be – Potter Chronicles" AND a.name = "Oakel"
UNION
SELECT "https://archiveofourown.org/works/24557404", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Hounds & Hippogriffs - The Potter Chronicles" AND a.name = "Oakel"
UNION
SELECT "https://archiveofourown.org/works/33389587", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Embers of Ruin - The Potter Chronicles" AND a.name = "Oakel"
UNION
SELECT "https://archiveofourown.org/works/24523261/chapters/59207056", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "The Role Reversal" AND a.name = "QuarantineClean"
UNION
SELECT "https://archiveofourown.org/works/24588091/chapters/59388049", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Sensations Of Shemales: Items Of Aphrodomina" AND a.name = "FanfictionWriter101"
UNION
SELECT "https://archiveofourown.org/works/24683548/chapters/59650378", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Becoming Lord Black" AND a.name = "MayorHaggar"
UNION
SELECT "https://archiveofourown.org/works/25232911/chapters/61164553", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue"
UNION
SELECT "https://archiveofourown.org/works/26093692/chapters/63470257", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Flower Power" AND a.name = "Browser13"
UNION
SELECT "https://archiveofourown.org/works/27225694/chapters/66506383", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "The Life and Times of Edward Lupin (permanently discontinued)" AND a.name = "Luna_Weasley03"
UNION
SELECT "https://archiveofourown.org/works/27400327/chapters/66967450", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac"
UNION
SELECT "https://archiveofourown.org/works/27889183/chapters/68290969", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Homunculus to the Life" AND a.name = "Lomonaaeren"
UNION
SELECT "https://archiveofourown.org/works/28347624/chapters/69453531", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12"
UNION
SELECT "https://archiveofourown.org/works/28433856", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Always Read the Instructions" AND a.name = "MayorHaggar"
UNION
SELECT "https://archiveofourown.org/works/29219277/chapters/71743737", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Harry Potter: After the Battle" AND a.name = "Daeneryske"
UNION
SELECT "https://archiveofourown.org/works/293941", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Substitute My Coke for Gin" AND a.name = "Lightofdaye"
UNION
SELECT "https://archiveofourown.org/works/32094475/chapters/79509322", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Red Right Hand" AND a.name = "Fightfortherightsofhouseelves"
UNION
SELECT "https://archiveofourown.org/works/32219680", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Negotiate" AND a.name = "Divagonzo"
UNION
SELECT "https://archiveofourown.org/works/32366140/chapters/80240368", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Where The Grass Is Greener" AND a.name = "SeaFeudJagger"
UNION
SELECT "https://archiveofourown.org/works/33823474/chapters/84087325", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno"
UNION
SELECT "https://archiveofourown.org/works/35148202/chapters/87567922", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Society Fair" AND a.name = "MimiAliceYorke"
UNION
SELECT "https://archiveofourown.org/works/35531416", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Harry Potter and The Truth or Dare?" AND a.name = "SuperMegaAwesomeNinja"
UNION
SELECT "https://archiveofourown.org/works/35567194/chapters/88667866", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior"
UNION
SELECT "https://archiveofourown.org/works/15537897", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior"
UNION
SELECT "https://archiveofourown.org/works/36254587", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "A Long-Awaited Letter" AND a.name = "Wyrdeen"
UNION
SELECT "https://archiveofourown.org/works/36571042/chapters/91210051", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Born As The Seventh Month Dies" AND a.name = "Aspionage"
UNION
SELECT "https://archiveofourown.org/works/38149387", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Neither Can Live While The Other Survives" AND a.name = "Aspionage"
UNION
SELECT "https://archiveofourown.org/works/40916982", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Those Who Have Thrice Defied Him" AND a.name = "Aspionage"
UNION
SELECT "https://archiveofourown.org/works/43264206", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Power The Dark Lord Knows Not" AND a.name = "Aspionage"
UNION
SELECT "https://archiveofourown.org/works/39769491", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "The Two Brothers" AND a.name = "Aspionage"
UNION
SELECT "https://archiveofourown.org/works/36587794/chapters/91254943", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Daphne Greengrass and the Preemptive Adulterer" AND a.name = "ScribblingSteve"
UNION
SELECT "https://archiveofourown.org/works/37036489/chapters/92409343", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Harry Potter: Life With A Single Futa Mother" AND a.name = "Prime_Blue"
UNION
SELECT "https://archiveofourown.org/works/38022460/chapters/94968517", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Firewhiskeys & Happy Endings" AND a.name = "Ghostoflinny"
UNION
SELECT "https://archiveofourown.org/works/38803248/chapters/97027542", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue"
UNION
SELECT "https://archiveofourown.org/works/39495468/chapters/98852874", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Fleur Delacour and the Secret of the Teardrop" AND a.name = "Triage"
UNION
SELECT "https://archiveofourown.org/works/39693507/chapters/99371931", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "His Last Curse" AND a.name = "WokFriedIce"
UNION
SELECT "https://archiveofourown.org/works/40329090", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Enough of Both" AND a.name = "Takearisk"
UNION
SELECT "https://archiveofourown.org/works/40723836/chapters/102040119", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Old Love" AND a.name = "TheHallowsInMe31"
UNION
SELECT "https://archiveofourown.org/works/40929258", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Awakening" AND a.name = "Atrxx93"
UNION
SELECT "https://archiveofourown.org/works/41827137/chapters/104946732", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Harry Potter and The Revival of The Phoenix" AND a.name = "Prince_Asmo"
UNION
SELECT "https://archiveofourown.org/works/42487938", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Snakes, Cats, and Ladders" AND a.name = "Ch4"
UNION
SELECT "https://archiveofourown.org/works/42667758/chapters/107181732", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "The Veela's Captive" AND a.name = "Karmealion"
UNION
SELECT "https://archiveofourown.org/works/42948024", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "A Soft Place to Land" AND a.name = "GreenhouseThree"
UNION
SELECT "https://archiveofourown.org/works/43083525", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Nineteen Years Later..." AND a.name = "Littlepuff04"
UNION
SELECT "https://archiveofourown.org/works/43275775/chapters/108775819", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins"
UNION
SELECT "https://archiveofourown.org/works/43431711", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "You Will Never Put Me Through That Again" AND a.name = "Hollidayparty"
UNION
SELECT "https://archiveofourown.org/works/45276571/chapters/113907244", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Fleur De Lis" AND a.name = "Magical_Worlds"
UNION
SELECT "https://archiveofourown.org/works/46058155", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Desperate Times" AND a.name = "ProfessorQuill"
UNION
SELECT "https://archiveofourown.org/works/46420015", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Under the Starry Skies, the Greengrass Lies" AND a.name = "Magical_Worlds"
UNION
SELECT "https://archiveofourown.org/works/46648492/chapters/117480559", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Who Wouldn't Want You" AND a.name = "Nixrocket"
UNION
SELECT "https://archiveofourown.org/works/5043994/chapters/11597080", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "It's Complicated" AND a.name = "Pottermum"
UNION
SELECT "https://archiveofourown.org/works/700722", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Pretty Please with a Ginny on Top" AND a.name = "Rickey"
UNION
SELECT "https://archiveofourown.org/works/37666063", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Four Times Harry Walked in on Ron and Hermione and One Time He Didn’t" AND a.name = "Liiilyevans"
UNION
SELECT "https://archiveofourown.org/works/41199063/chapters/103281897", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)"
UNION
SELECT "https://archiveofourown.org/works/42882966/chapters/107733519", ff.id FROM `fanfictions` ff INNER JOIN `authors` a ON a.id=ff.author_id WHERE ff.name = "Brumous" AND a.name = "SeriouslySam"
UNION
SELECT "https://www.fanfiction.net/s/10000862/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Needs" AND a.name = "Litfreak89"
UNION
SELECT "https://www.fanfiction.net/s/10017016/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Her Goodbye" AND a.name = "Disappearing Boy"
UNION
SELECT "https://www.fanfiction.net/s/10055357/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Bath and Bed" AND a.name = "Tommigoesfroging"
UNION
SELECT "https://www.fanfiction.net/s/10068858/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Homework with Hermione" AND a.name = "Airam06"
UNION
SELECT "https://www.fanfiction.net/s/10078222/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Harry Potter and the Prefects Bath" AND a.name = "123irish"
UNION
SELECT "https://www.fanfiction.net/s/10080569/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Library Princess" AND a.name = "Frenchhornbook"
UNION
SELECT "https://www.fanfiction.net/s/10127417/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Emerald Coven" AND a.name = "Hallows Seeker"
UNION
SELECT "https://www.fanfiction.net/s/10137129/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Dirty games" AND a.name = "Noctus Noxia"
UNION
SELECT "https://www.fanfiction.net/s/10162319/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Courtesan" AND a.name = "HeartsIgnite"
UNION
SELECT "https://www.fanfiction.net/s/10223224/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Enjoy the Fireworks" AND a.name = "ChampionOfKratos"
UNION
SELECT "https://www.fanfiction.net/s/10239105/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Feral" AND a.name = "TsyberRhaegal"
UNION
SELECT "https://www.fanfiction.net/s/10399804/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Domesticated" AND a.name = "TsyberRhaegal"
UNION
SELECT "https://www.fanfiction.net/s/10563852/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Godfather Neville" AND a.name = "TsyberRhaegal"
UNION
SELECT "https://www.fanfiction.net/s/10506443/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Voyeurism is such a strong word" AND a.name = "TsyberRhaegal"
UNION
SELECT "https://www.fanfiction.net/s/10583027/1/", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "Reciprocation is key" AND a.name = "TsyberRhaegal";