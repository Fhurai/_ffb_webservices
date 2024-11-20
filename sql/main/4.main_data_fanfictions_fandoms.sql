-- USE ffb_main;

/*
 * Fanfictions fandoms
 * NOTE Fanfictions fandoms
 */
DELETE FROM `fanfictions_fandoms`; 
INSERT INTO `fanfictions_fandoms`(`fanfiction_id`, `fandom_id`) 
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dancing Dragonflies" AND a.name = "Jayf" AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dancing Dragonflies" AND a.name = "Jayf" AND f.name = "Parahumans Series - Wildbow"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Necessary" AND a.name = "Ariaojou" AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Life in the New World" AND a.name = "Jm1681" AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "We'll not die!" AND a.name = "Cj Spencer" AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Cross Ange: The Knight of Hilda" AND a.name = "Eric Michael Kline" AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Waiting" AND a.name = "Me413" AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Lost Love Letters of Cloud Strife" AND a.name = "Somebody's Nightmare" AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Comeback Kid" AND a.name = "Somebody's Nightmare" AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Innocent Feelings" AND a.name = "Senigata" AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Journey of a Barmaid" AND a.name = "Senigata" AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Emerald Dream" AND a.name = "Senigata" AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Golden Respite" AND a.name = "Senigata" AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Lost Heart" AND a.name = "Senigata" AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fractured Mind" AND a.name = "Senigata" AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Starlight" AND a.name = "Senigata" AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Post Crisis" AND a.name = "Senigata" AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Gunslinger" AND a.name = "Nataku's Wrath" AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Gunslinger" AND a.name = "Nataku's Wrath" AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Final Fantasy: Guardians" AND a.name = "VeryBerry96" AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Twist in Fate" AND a.name = "IAltoSax" AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Final Fantasy X: All Bets Are Off" AND a.name = "Selphie800" AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "All Bets Are Off: The Sequel" AND a.name = "Selphie800" AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "FFX: All Bets Are Off 3: Tidus & Yuna Forever" AND a.name = "Selphie800" AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "FFX: All Bets Are Off 4: For the Love of Tidus" AND a.name = "Selphie800" AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "All Bets Are Off V: The Conclusion" AND a.name = "Selphie800" AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Neo-Genesis" AND a.name = "M'jai" AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Spira's Dream" AND a.name = "M'jai" AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Spira's Sphere" AND a.name = "M'jai" AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Spira's Revenge" AND a.name = "M'jai" AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mixed Up Dreams" AND a.name = "Phoenixgal" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Lost in Muggle London" AND a.name = "Phoenixgal" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Perils of Too Much Calming Potion" AND a.name = "Phoenixgal" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Family" AND a.name = "Phoenixgal" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "No Rules" AND a.name = "Phoenixgal" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Muggle Relations" AND a.name = "Phoenixgal" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Family Time" AND a.name = "Phoenixgal" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Lucky Kids" AND a.name = "Phoenixgal" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Expanding Bed Charms" AND a.name = "Phoenixgal" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Not a Phase" AND a.name = "Phoenixgal" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Awkward Lunch" AND a.name = "Phoenixgal" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "At the Hogsnock Baths" AND a.name = "Phoenixgal" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Greek Holiday" AND a.name = "Phoenixgal" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Best and the Brightest" AND a.name = "Tjs_whatnot" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "From One Good Time To Another" AND a.name = "Scarletladyy" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Grey Haven" AND a.name = "QuidditchMom (eibbil_one)" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Red Dress" AND a.name = "QuidditchMom (eibbil_one)" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Up Against the Wall" AND a.name = "QuidditchMom (eibbil_one)" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Caught" AND a.name = "QuidditchMom (eibbil_one)" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Parkinson's Knickers (Or Lack Thereof)" AND a.name = "" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Quid Pro Quo" AND a.name = "" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Games Without Frontiers" AND a.name = "Kabal42" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "All's Fair" AND a.name = "Sarcastrow" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Another Kind of Lesson" AND a.name = "Twisted_Mind" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Another Kind of Teacher" AND a.name = "Twisted_Mind" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Another Kind of Punishment" AND a.name = "Twisted_Mind" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Walkies" AND a.name = "Lokifan" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "You Did Say ""Anything""" AND a.name = "Lokifan" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Playing Games" AND a.name = "Inell" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Ask" AND a.name = "Previouslysane (altar_boy)" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Challenges of Remote Subbing" AND a.name = "AuntieL" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Pretty From Behind" AND a.name = "Clio_jlh" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Bliss" AND a.name = "Inell" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "That'll Show Them" AND a.name = "Woldy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Normal" AND a.name = "RosaCalavera" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Horny at Hogwarts" AND a.name = "Jumper712" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Clueless" AND a.name = "Pottermum" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Metamorph Bet" AND a.name = "MayorHaggar" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Shagging Spot" AND a.name = "Hollywoodland" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Encore" AND a.name = "Hollywoodland" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Minister's Affair" AND a.name = "Romaine" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Favours & Benefits" AND a.name = "Lightofdaye" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "This Christmas" AND a.name = "Tryslora" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Stockings Were Hung by the Chimney With Care" AND a.name = "Star54kar" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Stress Relief" AND a.name = "Megamatt09" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Very Happy Mother's Day" AND a.name = "Megamatt09" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Property of Potter" AND a.name = "Megamatt09" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The One Blessing of a Curse" AND a.name = "Tryslora" AND f.name = "Harry Potter - Wizarding World"
UNION 
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Stress Relief" AND a.name = "Inell" AND f.name = "Harry Potter - Wizarding World"
UNION 
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Weasley Witches Collective" AND a.name = "MargaretSexyMum" AND f.name = "Harry Potter - Wizarding World"
UNION 
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Bad Day (Or How to Get Hermione to Stop Worrying And Enjoy Sex While On The Clock)" AND a.name = "" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "First Times" AND a.name = "Pottermum" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Birthday Wishes" AND a.name = "Pottermum" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "I wasn't thinking about you, again." AND a.name = "Argenterie" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Euphemism is a perfectly good word" AND a.name = "Pottermum" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "That Need" AND a.name = "HPTrio" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Seekers of Love" AND a.name = "Thatsarockfact55" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "I'm Sure!" AND a.name = "Lightofdaye" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fly Away" AND a.name = "Likebunnies" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Uninhibited: Nymphadora" AND a.name = "DepravedDevil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dominating Daphne" AND a.name = "ThatsRealMagic" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Daphne Dominates" AND a.name = "ThatsRealMagic" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Daytime Domination" AND a.name = "ThatsRealMagic" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry's Need" AND a.name = "Pottermum" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ginny's Need" AND a.name = "Pottermum" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Bet" AND a.name = "Emmagrant01" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sustenance." AND a.name = "Pottermum" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ginny's Appetite" AND a.name = "Pottermum" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dinner, Date...Draco?" AND a.name = "MayorHaggar" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "When the Magic Stops Working" AND a.name = "Tryslora" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Broom Cupboard Encounters" AND a.name = "" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and his luscious Butt" AND a.name = "WerewolfWarriro" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND f.name = "Harry Potter - Wizarding World"
UNION -- LEGO Harry Potter (Video Games)
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND f.name = "LEGO Harry Potter"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Tit for Tat" AND a.name = "Inell" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hellsing
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND f.name = "Hellsing"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND f.name = "Harry Potter - Wizarding World"
UNION -- LEGO Harry Potter (Video Games)
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND f.name = "LEGO Harry Potter"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Last Time" AND a.name = "TableForThree_Archivist" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "No Thank You" AND a.name = "Sarah1281" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Rouse the Dead" AND a.name = "Torino10154" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND f.name = "Harry Potter - Wizarding World"
UNION -- LEGO Harry Potter (Video Games)
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND f.name = "LEGO Harry Potter"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Office Fun" AND a.name = "Ronslady23" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Reward" AND a.name = "Zakhro" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "I'm Worried About Harry" AND a.name = "Heyitsamorette (AmoretteHD)" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Before the Wedding" AND a.name = "Ufohnoparty (why_didnt_i_get_any_soup)" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Roman Holiday" AND a.name = "Charleybradburies" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND f.name = "Harry Potter - Wizarding World"
UNION -- LEGO Harry Potter (Video Games)
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND f.name = "LEGO Harry Potter"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Veela Sisters" AND a.name = "Dirtyuncle" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Christmas Holiday" AND a.name = "" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Quiet" AND a.name = "Lightofdaye" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Falling Through Clouds" AND a.name = "Holyfant" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Private Party in the Conservatory" AND a.name = "Iwant2baweasley (becboobear)" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Christmas Cheer" AND a.name = "Smutty_claus" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Slytherin Games (Remix of Snakes)" AND a.name = "Icicle" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Anonymous Signs" AND a.name = "Abigail89" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "my heart is holding on to you" AND a.name = "Aceofdiamonds" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Candy Cane Obsessed Freak" AND a.name = "Luvscharlie" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Female Transfiguration 101" AND a.name = "Lamp23" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Bedtime" AND a.name = "Holyfant" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Tea with the Headmistress" AND a.name = "Fluffybookfaerie" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fire" AND a.name = "Zoelily" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Accio Ballgag!" AND a.name = "Harby" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Christmas Bells are Ringing" AND a.name = "MayorHaggar" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "For This One Day" AND a.name = "Flipflop_diva" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Birthday Gift" AND a.name = "Zakhro" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Night in the Lioness' Den" AND a.name = "Sheltie1987" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Trouble, with a Capital T" AND a.name = "Pottermum" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "They spurn the holiday spirit in their usual way" AND a.name = "Luvsanime02" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Birthday Surprise" AND a.name = "LRThunder" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Walking the Walk" AND a.name = "Chazpure" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Your secret fantasy" AND a.name = "VanessaWolfie" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Change of Heart" AND a.name = "Ragdoll" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Addictive" AND a.name = "" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Restorative" AND a.name = "" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Who Seems a Beast (but secretly dreams of beauty)" AND a.name = "Songquake" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Flood" AND a.name = "Holyfant" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "All My Wildest Dreams" AND a.name = "Walgesang" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dorm Mates" AND a.name = "BananasPyjamas" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The 69" AND a.name = "LRThunder" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Falling Towards Something (It Might Just Be You)" AND a.name = "Thewaywedo33" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Love Story in Four Acts" AND a.name = "Inell" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Intricacies of Magical Etiquette" AND a.name = "MayorHaggar" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "HBG Mini-series: Lily" AND a.name = "Sheltie1987" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "HBG Mini-series: Pureblood Wives" AND a.name = "Sheltie1987" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Prewett Cup" AND a.name = "Ap_aelfwine" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "An Odd Turn of Events" AND a.name = "IridescentLugia" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Night Moves" AND a.name = "NidoranDuran" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Guest Bedroom" AND a.name = "Holyfant" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mirrors And Opposites" AND a.name = "Lightofdaye" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The List" AND a.name = "Olivieblake" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Friends & Lovers" AND a.name = "TarnishedArmour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Boy Who Wanted Her" AND a.name = "Likebunnies" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Boy Who Was Hers" AND a.name = "Likebunnies" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How We Live" AND a.name = "Wendings" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Infernal Plan" AND a.name = "Likebunnies" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Center of Attention" AND a.name = "" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Vein of Gold" AND a.name = "Pelespen" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Encounters After the Yule Ball" AND a.name = "Sheltie1987" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Love You Completely" AND a.name = "Starstruck1986" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Chance Meeting" AND a.name = "Clell65619" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "You're my what?" AND a.name = "Scruffy1" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Not On His List" AND a.name = "Musyc" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "An Unexpected Source of Wisdom" AND a.name = "Alyndra" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Troika" AND a.name = "Lily_pearl (lilyandjoey)" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Subservient Housewives and other Mythical Creatures" AND a.name = "Voxangelus" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ice Princess" AND a.name = "LuanMao" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry in a new world" AND a.name = "Clell65619" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Marriage Contracts" AND a.name = "Clell65619" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Live! For God's Sake, Live!" AND a.name = "HarryGinnyTonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Lesson in Propriety" AND a.name = "Dime" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Confessions Under A Night Sky" AND a.name = "Snowblind12" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Weasley Wives' Club" AND a.name = "RubySaintClaire" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Unsealed" AND a.name = "Esama" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Slumber Party" AND a.name = "Femmeslyth" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Memorable Farewell" AND a.name = "Pommedeplume" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Yearning Hearts" AND a.name = "Pommedeplume" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Open to Love" AND a.name = "Pommedeplume" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Things to Do in Berlin (When You're Bored)" AND a.name = "Pommedeplume" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Normal Things" AND a.name = "Pommedeplume" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Girl Who Topped" AND a.name = "Pommedeplume" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Various Climaxes" AND a.name = "Pommedeplume" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Luna's Desires" AND a.name = "Pommedeplume" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Welcome to the Family" AND a.name = "Pommedeplume" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Open Doors" AND a.name = "Pommedeplume" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "One in a Million" AND a.name = "Maraudersaffair" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "You've Got Me Pegged" AND a.name = "Gracerene" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Let go" AND a.name = "Lostonplatform934" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Best Behaviour" AND a.name = "Idleside" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Helping Hands" AND a.name = "Idleside" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Cosmopolitan" AND a.name = "Idleside" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "My Mind Is Screaming (But Your Touch Brings Me Silence)" AND a.name = "" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Paramount ~ Extension" AND a.name = "Ronslady23" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "We Three Seekers" AND a.name = "Farbautidottir" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Best Friends, Always" AND a.name = "Farbautidottir" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and The Heir of House Greengrass" AND a.name = "SazzyLJ" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "From Southampton to New York and Beyond" AND a.name = "Dorothea_Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Rose's Birthday Present" AND a.name = "Red_jacobson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Daphne Greengrass and the Importance Of Intent" AND a.name = "PetrificusSomewhatus" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Importance Of Intent: After The Credits" AND a.name = "PetrificusSomewhatus" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "On A Night Like This - Potter Chronicle's" AND a.name = "Oakel" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "May It Be – Potter Chronicles" AND a.name = "Oakel" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hounds & Hippogriffs - The Potter Chronicles" AND a.name = "Oakel" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Embers of Ruin - The Potter Chronicles" AND a.name = "Oakel" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Role Reversal" AND a.name = "QuarantineClean" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sensations Of Shemales: Items Of Aphrodomina" AND a.name = "FanfictionWriter101" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Becoming Lord Black" AND a.name = "MayorHaggar" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Flower Power" AND a.name = "Browser13" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Life and Times of Edward Lupin (permanently discontinued)" AND a.name = "Luna_Weasley03" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Homunculus to the Life" AND a.name = "Lomonaaeren" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Always Read the Instructions" AND a.name = "MayorHaggar" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: After the Battle" AND a.name = "Daeneryske" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Substitute My Coke for Gin" AND a.name = "Lightofdaye" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Red Right Hand" AND a.name = "Fightfortherightsofhouseelves" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Negotiate" AND a.name = "Divagonzo" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Where The Grass Is Greener" AND a.name = "SeaFeudJagger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Society Fair" AND a.name = "MimiAliceYorke" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and The Truth or Dare?" AND a.name = "SuperMegaAwesomeNinja" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Long-Awaited Letter" AND a.name = "Wyrdeen" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Born As The Seventh Month Dies" AND a.name = "Aspionage" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Neither Can Live While The Other Survives" AND a.name = "Aspionage" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Those Who Have Thrice Defied Him" AND a.name = "Aspionage" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Power The Dark Lord Knows Not" AND a.name = "Aspionage" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Two Brothers" AND a.name = "Aspionage" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Daphne Greengrass and the Preemptive Adulterer" AND a.name = "ScribblingSteve" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: Life With A Single Futa Mother" AND a.name = "Prime_Blue" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Firewhiskeys & Happy Endings" AND a.name = "Ghostoflinny" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fleur Delacour and the Secret of the Teardrop" AND a.name = "Triage" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "His Last Curse" AND a.name = "WokFriedIce" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Enough of Both" AND a.name = "Takearisk" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Old Love" AND a.name = "TheHallowsInMe31" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Awakening" AND a.name = "Atrxx93" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and The Revival of The Phoenix" AND a.name = "Prince_Asmo" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Snakes, Cats, and Ladders" AND a.name = "Ch4" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Veela's Captive" AND a.name = "Karmealion" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Soft Place to Land" AND a.name = "GreenhouseThree" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Nineteen Years Later..." AND a.name = "Littlepuff04" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "You Will Never Put Me Through That Again" AND a.name = "Hollidayparty" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fleur De Lis" AND a.name = "Magical_Worlds" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Desperate Times" AND a.name = "ProfessorQuill" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Under the Starry Skies, the Greengrass Lies" AND a.name = "Magical_Worlds" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Who Wouldn't Want You" AND a.name = "Nixrocket" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "It's Complicated" AND a.name = "Pottermum" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter - J. K. Rowling
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Pretty Please with a Ginny on Top" AND a.name = "Rickey" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Four Times Harry Walked in on Ron and Hermione and One Time He Didn’t" AND a.name = "Liiilyevans" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Brumous" AND a.name = "SeriouslySam" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Needs" AND a.name = "Litfreak89" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Her Goodbye" AND a.name = "Disappearing Boy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Bath and Bed" AND a.name = "Tommigoesfroging" AND f.name = "Harry Potter - Wizarding World";