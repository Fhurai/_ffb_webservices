-- USE ffb_main;

/*
 * Authors
 * NOTE - INSERT empty author for abandoned accounts 
 */
DELETE FROM `authors`;
INSERT INTO `authors`(`id`, `name`, `creation_date`, `update_date`, `delete_date`) VALUES (1,'','1970-01-01','1970-01-01', NULL);

INSERT INTO `authors` (`name`) 
VALUES ("Abigail89"),
("Aceofdiamonds"),
("Allyrion"),
("Ap_aelfwine"),
("Argenterie"),
("Ariaojou"),
("AuntieL"),
("BananasPyjamas"),
("Charleybradburies"),
("Chazpure"),
("Cj Spencer"),
("Clell65619"),
("Clio_jlh"),
("DepravedDevil"),
("Dirtyuncle"),
("Eric Michael Kline"),
("Emmagrant01"),
("Flipflop_diva"),
("Fluffybookfaerie"),
("Harby"),
("Heyitsamorette (AmoretteHD)"),
("Hollywoodland"),
("Holyfant"),
("HPTrio"),
("IAltoSax"),
("Icicle"),
("Inell"),
("IridescentLugia"),
("Iwant2baweasley (becboobear)"),
("Jayf"),
("Jm1681"),
("Jumper712"),
("Kabal42"),
("Lamp23"),
("Leggo My Lego Harry Potter (Runic_Purple_Panda)"),
("Leviathan0999"),
("Lightofdaye"),
("Likebunnies"),
("Lokifan"),
("LRThunder"),
("Luvsanime02"),
("Luvscharlie"),
("MargaretSexyMum"),
("MayorHaggar"),
("Me413"),
("Megamatt09"),
("M'jai"),
("Nataku's Wrath"),
("NidoranDuran"),
("Olivieblake"),
("Pelespen"),
("Phoenixgal"),
("Pottermum"),
("Previouslysane (altar_boy)"),
("QuidditchMom (eibbil_one)"),
("Ragdoll"),
("Romaine"),
("Ronslady23"),
("RosaCalavera"),
("RZZMG"),
("Sarah1281"),
("Sarcastrow"),
("Scarletladyy"),
("Scruffy1"),
("Selphie800"),
("Senigata"),
("Sheltie1987"),
("Smutty_claus"),
("Somebody's Nightmare"),
("Songquake"),
("Star54kar"),
("Starstruck1986"),
("TableForThree_Archivist"),
("TarnishedArmour"),
("Thatsarockfact55"),
("ThatsRealMagic"),
("Thewaywedo33"),
("Tjs_whatnot"),
("Torino10154"),
("Tryslora"),
("Twisted_Mind"),
("Ufohnoparty (why_didnt_i_get_any_soup)"),
("VanessaWolfie"),
("VeryBerry96"),
("Walgesang"),
("Wendings"),
("WerewolfWarriro"),
("Woldy"),
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
FROM `authors` a, `languages` l WHERE a.name="Starstruck1986" AND l.name="English";

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
SELECT "https://ficwad.com/story/121391", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "You're my what?" AND a.name = "Scruffy1";