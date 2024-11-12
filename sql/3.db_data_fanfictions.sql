-- USE ffb_main;

/*
 * Authors
 */
DELETE FROM `authors`;
INSERT INTO `authors` (`name`) 
VALUES ("Jayf"),
("Ariaojou"),
("Jm1681"),
("Cj Spencer"),
("Eric Michael Kline"),
("Me413"),
("Somebody's Nightmare"),
("Senigata"),
("Nataku's Wrath"),
("VeryBerry96"),
("IAltoSax"),
("Selphie800"),
("M'jai"),
("Allyrion"),
("Phoenixgal");


/*
 * Fanfictions
 * 0 -> 'K / 3', 1 -> 'K+ / 7', 2 -> 'T / 12', 3 -> 'M / 16', 4 -> 'MA / 18'
 */
DELETE FROM `fanfictions`;
INSERT INTO `fanfictions` (`name`, `author_id`, `rating`, `description`, `language_id`)
SELECT "Dancing Dragonflies" as name, a.id as author_id, 2 as rating, "Most people have dysfunctional parents. Mine's a blonde psycho giant robot pilot. I am Taylor Hebert, and my mom Ange is a horrible mother." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Jayf" AND l.name="English"
UNION
SELECT "Necessary" as name, a.id as author_id, 2 as rating, "Ange's birthday is coming! But why is Tusk nowhere to be seen?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Ariaojou" AND l.name="English"
UNION
SELECT "Life in the New World" as name, a.id as author_id, 2 as rating, "The battle with Embryo concluded, Ange and her friends have settled into a peaceful life among the Dragons, in the Real Earth. Love is in the air, and more importantly so is competition (And Curry!) as Ange and Salamandinay finally finish their battle, with a little help from their friends." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Jm1681" AND l.name="English"
UNION
SELECT "We'll not die!" as name, a.id as author_id, 1 as rating, "We cannot die here. We must go back. To the refuge. Where our light… no, my light, is waiting for me." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Cj Spencer" AND l.name="English"
UNION
SELECT "Cross Ange: The Knight of Hilda" as name, a.id as author_id, 2 as rating, "What if there was an underground pro-Norma sympathist movement in the world of Cross Ange? And what if one of them encountered Hilda at the lowest point in her life and his destiny became tied up with hers?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Eric Michael Kline" AND l.name="English"
UNION
SELECT "Waiting" as name, a.id as author_id, 1 as rating, "It's Tifa's birthday and the rest of AVALANCHE is on their way to Seventh Heaven to celebrate. Before they arrive, all she has to do is clear out a monster nest all by her lonesome. After all, Cloud hasn't come back from his deliveries yet. Right?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Me413" AND l.name="English"
UNION
SELECT "The Lost Love Letters of Cloud Strife" as name, a.id as author_id, 2 as rating, "A series of unsent letters written from Cloud to Tifa, since the beginning." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Somebody's Nightmare" AND l.name="English"
UNION
SELECT "The Comeback Kid" as name, a.id as author_id, 3 as rating, "Fifteen years ago, the rush of battle and combat were an everyday part of Tifa's life. With the world calm, marriage and family life have made her complacent, and Tifa feels like she has lost her edge. With a little help from Cloud, she reawakens the passion for combat she once had, unaware that ghosts from her past are ready to remerge, sending her on a mission of self-discovery." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Somebody's Nightmare" AND l.name="English"
UNION
SELECT "Innocent Feelings" as name, a.id as author_id, 1 as rating, "It was just a kind gesture between neighbors, but it was also the spark of something very special." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Senigata" AND l.name="English"
UNION
SELECT "Journey of a Barmaid" as name, a.id as author_id, 3 as rating, "As Cloud and Zack were taken to the Shinra Mansion Tifa had the good fortune to be rescued by Zangan. But what actually happened after arriving in Midgar. Where did our favorite Barmaid start her path that would lead her to fight against Shinra, reunite with an old friend and, eventually, save the planet from destruction?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Senigata" AND l.name="English"
UNION
SELECT "Emerald Dream" as name, a.id as author_id, 3 as rating, "Being part of Avalanche had always been one of the greatest things in Jessie's life, something that made her able to fight the injustice of Shinra, but it had also given her the chance to meet the person that she would eventually come to call her best friend. One day, Tifa arrived with a stranger called Cloud Strife." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Senigata" AND l.name="English"
UNION
SELECT "Golden Respite" as name, a.id as author_id, 2 as rating, "After their little adventure in the Gold Saucer, the group decided to take a well deserved break before continuing on their journey to stop Sephiroth. As Tifa was contemplating what she should do with her free time, she was approached by none other than Aerith, asking for her help." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Senigata" AND l.name="English"
UNION
SELECT "Lost Heart" as name, a.id as author_id, 2 as rating, "Reeling from the loss of Aerith, the party decides to spend the night at Icicle Inn. With nothing much to do, Tifa is left dealing with her own doubts and anxieties in regards to Cloud. Amids the conflict inside herself, she makes a discovery about her departed friend." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Senigata" AND l.name="English"
UNION
SELECT "Fractured Mind" as name, a.id as author_id, 2 as rating, "Cloud was gone, Meteor has been summoned and the Weapons were running rampant. To Tifa, it felt like everything was lost, and she had no idea what she should do now. If only Cloud was with them..." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Senigata" AND l.name="English"
UNION
SELECT "Starlight" as name, a.id as author_id, 3 as rating, "Shinra was finished. Imploded on itself as soon as Rufus had been taken out, leaving Midgar in total chaos. As Avalanche was helping the civilians of Midgar, Tifa find herself seeking the one person she had left behind and, eventually, confronts her feelings for the boy that had once promised to be her hero under a starlit sky." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Senigata" AND l.name="English"
UNION
SELECT "Post Crisis" as name, a.id as author_id, 3 as rating, "Loss and tragedy had always been part of their life. The pain of loss and the guilt of being the ones to survive had nearly torn them apart. But with Geostigma gone, and the burden of Cloud's guilt being lifted from his shoulders, it was time for them move forward. To leave their past regrets behind and finally let themselves experience true happiness." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Senigata" AND l.name="English"
UNION
SELECT "The Gunslinger" as name, a.id as author_id, 2 as rating, "Vincent Valentine: A hero of legend, sleeping through time. What happens when he wakes up in Spira to find a new terror destroying the land and a new group of heroes asking for his help?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Nataku's Wrath" AND l.name="English"
UNION
SELECT "Final Fantasy: Guardians" as name, a.id as author_id, 2 as rating, "Sakura is a young Al Bhed girl full of life and spirit. She has a fairly normal life with her Uncle Cid and cousin Rikku. But when Rikku finds a strange boy washed up in a cave who claims he's from Zanarkand, a city destroyed for 1000 years, her life will change forever." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="VeryBerry96" AND l.name="English"
UNION
SELECT "Twist in Fate" as name, a.id as author_id, 2 as rating, "After escorting 3 summoners in a row, Lady Yue had enough. Until she meets up with Lady Yuna and her guardians that changed her world upside down. Follow Lady Yue as she gains new friends, new family and falls for a certain legendary guardian in red. But what awaits them all in Zanarkand?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="IAltoSax" AND l.name="English"
UNION
SELECT "Final Fantasy X: All Bets Are Off" as name, a.id as author_id, 3 as rating, "The Zanarkand Abes are a betting bunch, but what happens when they place their bets on the most precious prize of all: the virginity of the most popular girl at school. It's not as easy as it seems, and they find all sorts of trouble along the way." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Selphie800" AND l.name="English"
UNION
SELECT "All Bets Are Off: The Sequel" as name, a.id as author_id, 3 as rating, "This story continues to follow the Zanarkand gang through their summer, and their first year of college." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Selphie800" AND l.name="English"
UNION
SELECT "FFX: All Bets Are Off 3: Tidus & Yuna Forever" as name, a.id as author_id, 3 as rating, "The story picks up six months later, and the gang are preparing for their sophomore year of college." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Selphie800" AND l.name="English"
UNION
SELECT "FFX: All Bets Are Off 4: For the Love of Tidus" as name, a.id as author_id, 3 as rating, "It continues to chronicle the lives of the 8 main characters as they prepare for their junior year at Zanarkand University. However, this summer an unforeseen event occurs that changes their lives." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Selphie800" AND l.name="English"
UNION
SELECT "All Bets Are Off V: The Conclusion" as name, a.id as author_id, 3 as rating, "The conclusion of my All Bets Are Off series." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="Selphie800" AND l.name="English"
UNION
SELECT "Neo-Genesis" as name, a.id as author_id, 2 as rating, "Yuna mistook Shuyin for Tidus after finding a sphere that inspired her to hunt for clues about what happened to Tidus after he faded. It's no coincidence that Shuyin and Tidus look and sound alike, but what exactly is the mysterious connection between them and how did it happen?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="M'jai" AND l.name="English"
UNION
SELECT "Spira's Dream" as name, a.id as author_id, 2 as rating, "Tidus returns to Yuna and the gang, but how? Why? Is he real this time? Or is he still a dream? Does his return foreshadow something else? To find answers, they must return to the Farplane. But the answers they seek are more complicated than they seem." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="M'jai" AND l.name="English"
UNION
SELECT "Spira's Sphere" as name, a.id as author_id, 2 as rating, "Now that Tidus is back, the Gullwings have big plans for building a memorial in Zanarkand to honor the fayth and that city's unfortunate history. Spheres that tell Zanarkand's stories will play a major role in the construction, but the Gullwings' allies are skeptical of Tidus's likeness and connections to Shuyin. Tidus's sphere, however, may be the most critical to their hunt." as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="M'jai" AND l.name="English"
UNION
SELECT "Spira's Revenge" as name, a.id as author_id, 2 as rating, "Someone is seeking Yu Yevon's secrets about aeon creation to bring the dead back to life. And a mysterious stranger from Zanarkand has washed ashore on Besaid Beach again. Yuna and Tidus worry that history might be trying to repeat some dangerous past mistakes. This time, can they save Spira from herself before time runs out?" as description, l.id as language_id
FROM `authors` a, `languages` l WHERE a.name="M'jai" AND l.name="English"
UNION
SELECT "The More the Merrier" as name, a.id as author_id, 4 as rating, "Harry's fantasies are fulfilled in the Room of Requirement thanks to three of Hogwarts' most beautiful" as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Allyrion" AND l.name="English"
UNION
SELECT "Mixed Up Dreams" as name, a.id as author_id, 2 as rating, "Harry has a disturbing dream while on the run looking for horcruxes. Hermione gives comfort." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Lost in Muggle London" as name, a.id as author_id, 3 as rating, "Ginny needs to get out of the house after the war is over, but in doing so she realizes things are complicated between her and Harry." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "The Perils of Too Much Calming Potion" as name, a.id as author_id, 4 as rating, "Harry is anxious after the war is over. In an effort to get over it, he overdoses on a potion and a night of lowered inhibitions ensues." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Second String" as name, a.id as author_id, 4 as rating, "Ginny tries to balance the relationships in her life and the expectations of her family and the world around her with what she actually wants." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Family" as name, a.id as author_id, 2 as rating, "Harry realizes he really has a family that he belongs to." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "No Rules" as name, a.id as author_id, 3 as rating, "Ginny realized she had cheated. But how did you know if you cheated if there weren't rules to follow?" as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Muggle Relations" as name, a.id as author_id, 4 as rating, "Harry and Ron search for a mysterious criminal whose magic seems to be out of control. Harry meets a muggle detective. Ron is uncomfortable with muggles, and, more to the point, Harry's poly marriage and sexuality." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Family Time" as name, a.id as author_id, 3 as rating, "Harry wants some time away from family, but when he goes out looking for a one night stand, he accidentally ends up spending the evening with Charlie instead." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Lucky Kids" as name, a.id as author_id, 2 as rating, "Harry really isn't looking forward to seeing the Dursleys, even if they apparently need him. Luckily, Ginny has his back." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Expanding Bed Charms" as name, a.id as author_id, 4 as rating, "Ginny brings her girlfriend home. The sex starts out good, but ends up bad. Still, Harry and Julianna begin a friendship of their own." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Not a Phase" as name, a.id as author_id, 4 as rating, "When Harry hears a rumor about his son, he realizes he probably should have been more honest with him earlier" as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Awkward Lunch" as name, a.id as author_id, 2 as rating, "Harry visits Albus at Hogwarts after hearing that he and Scorpius are dating." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "At the Hogsnock Baths" as name, a.id as author_id, 3 as rating, "Harry invites Ron to the opening of Parvati's new spa retreat for a chance to get back to their friendship, but running into Neville and experiencing the inhibition lowering waters may have ruined their chance." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Perfect Gingerbread Men" as name, a.id as author_id, 2 as rating, "Harry is vague. James is confused. Jules is injured and she moves in just in time for Christmas. The parents from James's perspective." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Outsider" as name, a.id as author_id, 4 as rating, "Five moments of friendship, sex, and comfort between Harry and Neville over the decades." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "Greek Holiday" as name, a.id as author_id, 4 as rating, "Harry ends up taking Julianna on holiday with Ron and Hermione instead of Ginny. Hijinks ensue, then feelings" as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English"
UNION
SELECT "The Daily Prophet Is Still a Gossip Rag" as name, a.id as author_id, 2 as rating, "It's been years since The Daily Prophet published anything insidious about Harry, but when a journalist with an agenda gets hold of a rumor about Harry's life, he ends up outed to the wizarding world and has to come up with a response." as description, l.id as language_id 
FROM `authors` a, `languages` l WHERE a.name="Phoenixgal" AND l.name="English";