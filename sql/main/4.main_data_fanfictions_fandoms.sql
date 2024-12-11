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
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND f.name = "Harry Potter - Wizarding World"
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
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Bath and Bed" AND a.name = "Tommigoesfroging" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Homework with Hermione" AND a.name = "Airam06" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Prefects Bath" AND a.name = "123irish" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Library Princess" AND a.name = "Frenchhornbook" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Emerald Coven" AND a.name = "Hallows Seeker" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dirty games" AND a.name = "Noctus Noxia" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Courtesan" AND a.name = "HeartsIgnite" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Enjoy the Fireworks" AND a.name = "ChampionOfKratos" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Feral" AND a.name = "TsyberRhaegal" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Domesticated" AND a.name = "TsyberRhaegal" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Godfather Neville" AND a.name = "TsyberRhaegal" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Voyeurism is such a strong word" AND a.name = "TsyberRhaegal" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Reciprocation is key" AND a.name = "TsyberRhaegal" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Tell Me Your Secrets" AND a.name = "Ladyfun" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Black Ivy" AND a.name = "DragonKingDragneel25" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Bolts from the Blue!" AND a.name = "Sprinter1988" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Something New" AND a.name = "NutPea16" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hot Massage" AND a.name = "Johnprewett" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "What are we celebrating?" AND a.name = "Slytherinenigma" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Lines of Life" AND a.name = "Relena Mishima" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Stockings Required" AND a.name = "LadiePhoenix007" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "For The First Time" AND a.name = "Ladyfun" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Susan Potter nee Bones" AND a.name = "Potterfamilysecret1" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chivalry" AND a.name = "PotterSexStories" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Anniversary" AND a.name = "HersByHisByHers" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Very Potter Christmas" AND a.name = "Insynchlikeharmony" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Thrall or not Thrall, that Is the Question" AND a.name = "Listen-to" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Royal Ward" AND a.name = "Catstaff" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Dream to Remember" AND a.name = "Red_jacobson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Desires and Delusions" AND a.name = "RAfan2421" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just One Night" AND a.name = "Messr. Wolfethorn" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Negligentia" AND a.name = "Murkatroyd" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sleepless Nights" AND a.name = "Nynayve" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Shifting towards Eachother" AND a.name = "Listen-to" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Returning to the Start" AND a.name = "Timunderwood9" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "After the Chamber - Lords and Ladies" AND a.name = "SeerKing" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Days to Come" AND a.name = "Chris400ad" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Secret Truth" AND a.name = "Articcat621" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Simplicity" AND a.name = "Medotcomslashme" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Everything will be ok in the end" AND a.name = "SkyHigh17" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Interludes and Vignettes" AND a.name = "Cloud Zen" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Trials of The Stone" AND a.name = "RagingCassowary" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Spring Equinox" AND a.name = "Harry50" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sympathetic Properties" AND a.name = "Mr Norrell" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Give Me Love" AND a.name = "IWillGoWithYouHarry" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Bad Timing" AND a.name = "PassnPlay" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hermione's Little Whore" AND a.name = "Writerfreakssss" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Remember My Name" AND a.name = "Writerfreakssss" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "La maladie du baiser" AND a.name = "Lana.HP" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Luna Joins the Fun" AND a.name = "Writerfreakssss" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "That Certain Something" AND a.name = "Crimson Darkness8" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Microclimat sentimental" AND a.name = "Math'L" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Very Fast Learner" AND a.name = "BHErotica" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Herbal Tea" AND a.name = "NidoranDuran" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry the Playboy" AND a.name = "Elven Sorcerer" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hollow" AND a.name = "Dante 2K-25" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Best Man's Job" AND a.name = "Scott the Wanderer" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Always" AND a.name = "Caydus" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dessert" AND a.name = "Smilelaughread" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Cheat on me" AND a.name = "UpTheHill" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Le Coup de Foudre est de couleur Rouge Carmin" AND a.name = "Gouline971" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Cadmean Victory" AND a.name = "DarknessEnthroned" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Reunion" AND a.name = "Emp. Elesar II" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Family Relationship" AND a.name = "Zakhro" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Bonding" AND a.name = "Flowerchild33" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "46 Hours" AND a.name = "Flowerchild33" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Creating a Balance" AND a.name = "Flowerchild33" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Long Live The Queen" AND a.name = "Offsides" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Breath of the Inferno" AND a.name = "Primordial Vortex" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sirius Black and the Raising of Children" AND a.name = "AlexMurray11235" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Amicus Protectio Fortis" AND a.name = "Barelyeverthere" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Forgotten Affairs" AND a.name = "Midnight17516" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dodging Prison and Stealing Witches - Revenge is Best Served Raw" AND a.name = "LeadVonE" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Lily Potter and the Witches of Salem" AND a.name = "XDreamlessx" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Christmas Holiday" AND a.name = "Dizzy - in - the - izzy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fur and Feathers" AND a.name = "Shdwqueen" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Deck the Halls" AND a.name = "Sheltie1987" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Contractual Invalidation" AND a.name = "R-dude" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sweet seduction" AND a.name = "Antjex3" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "More Than Equal" AND a.name = "Ordinarily Prudent" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Tuesday Night" AND a.name = "JLvE" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Purebloods and Their Tedious Traditions" AND a.name = "Argo0" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Twisting Time" AND a.name = "The-writer1988" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Love Multiplied" AND a.name = "Flowerchild33" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Gods Amongst Men" AND a.name = "Slimah" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Changing Fate's Plans" AND a.name = "Golasgil Sindar" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Stay" AND a.name = "HannahFranziska" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Termination Without" AND a.name = "Alex Moss" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "To Reach Without" AND a.name = "Inwardtransience" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Rune Stone Path" AND a.name = "Temporal Knight" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Playdate" AND a.name = "ThatsRealMagic" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Amalgum – Lockhart's Folly" AND a.name = "Tkepner" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Gothic" AND a.name = "Brennus" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Last Chance" AND a.name = "LeQuin" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "When Fate Intervened" AND a.name = "LordVishnu" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "An Invisible Mishap" AND a.name = "Elven Sorcerer" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: Air Elemental" AND a.name = "Kb0" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Prefect's Bathroom" AND a.name = "MobBob" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Love Under the Invisibility Cloak" AND a.name = "MobBob" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Feral Snake" AND a.name = "LarkGarbedInPurpose" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Witch 3" AND a.name = "Argo0" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Ilvermorny Champion" AND a.name = "VMFanfiction" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Power of the Potters" AND a.name = "RockIll" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Happy Birthday Harry" AND a.name = "Epeefencer" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Magical Puberty" AND a.name = "Fantasy1290" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Spellwork" AND a.name = "LarkGarbedInPurpose" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Honour Thy Blood" AND a.name = "TheBlack'sResurgence" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Celebration" AND a.name = "ThatsRealMagic" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Closer You Look" AND a.name = "Tony Samuels" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Law" AND a.name = "Harry50" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Heroes Assemble!" AND a.name = "Stargon1" AND f.name = "Harry Potter - Wizarding World"
UNION -- Avengers Crossover
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Heroes Assemble!" AND a.name = "Stargon1" AND f.name = "Avengers"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "As Ron Likes It" AND a.name = "NickieButterfly" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Late Night Revelations" AND a.name = "Epeefencer" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Soul Scars" AND a.name = "Rtnwriter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "One lucky Wife" AND a.name = "Rivia" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Courage with Fear" AND a.name = "ShadowsEmbrace13" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Cure for Nightmares" AND a.name = "Avain1991" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Beautiful Lie" AND a.name = "MaybeMayba" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and The Old Friend" AND a.name = "Sinyk" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Godfather's Promise" AND a.name = "The Metal Sage" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Lonely Letters" AND a.name = "JusticeRings" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sling Shots" AND a.name = "Illjwamh" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Unexpected Happiness" AND a.name = "SehunsBae37" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Guardian" AND a.name = "Swat303810" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "From Ruin" AND a.name = "GraeFoxx" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Watching and Waiting Reloaded" AND a.name = "LilyevansJan30" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Only You" AND a.name = "Averlovi" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Save Me" AND a.name = "Dorothea_Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Three little words" AND a.name = "Rouven Singer" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Black Lord" AND a.name = "Irislafey" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dragon Chronicles 1: Muggle-Raised Champion" AND a.name = "Stargon1" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dragon Chronicles 2: Harry Potter, Dragon Whisperer" AND a.name = "Stargon1" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dying Light" AND a.name = "Darkw01fie" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Insurance Policy" AND a.name = "Meyers1020" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Albus and Harry's World Trip" AND a.name = "ZebJeb" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Beat Your Heart Out" AND a.name = "GleeGeneration23" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Crow From Afar" AND a.name = "WhitherWinds" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Head Start" AND a.name = "Kratos1989" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Green Light in the Dark" AND a.name = "AStrangeHopefulDreamer" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Cheating Death" AND a.name = "SeriouslySam" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "If not for Umbridge" AND a.name = "Chris400ad" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Treasure Hunter" AND a.name = "TimeTraveller-1900" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Weasley Perspective" AND a.name = "CharmHazel" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Power He Knows Not" AND a.name = "Shivam Jha" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Boy Who Lived, The Brightest Witch and The Boy Who Wasn't" AND a.name = "Dragonfly117" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "River Deep, Mountain High" AND a.name = "Dorothea_Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Brontide" AND a.name = "SeriouslySam" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Need Protection?" AND a.name = "Enchantra35" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Quidditch Tales" AND a.name = "Potterlad81" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Lust of Gryffindors" AND a.name = "Fearful Porpentine" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "By the Moon Light" AND a.name = "WolfgangNH" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Better Than Cake" AND a.name = "Madrosewriting" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Shagging Psychology" AND a.name = "Tweety-src-clt9" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Brothers" AND a.name = "Writing Sins Not Tragedies" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Castles" AND a.name = "Pebblysand" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Purpose of Wings" AND a.name = "Charlennette" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Through Shadows" AND a.name = "Hpfangal" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: Thinking like a Thief" AND a.name = "TimeTraveller-1900" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Gabrielle's Most Joyous Noël" AND a.name = "CesareBorgiaWrites" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Learning from Lily" AND a.name = "Cyan93" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Taken and Forgotten" AND a.name = "Tismy 101" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Lifetimes of July" AND a.name = "Vanderlustwords" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Entombed" AND a.name = "SeriouslySam" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Lost Year" AND a.name = "Kb0" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Different Type of Bond" AND a.name = "WolfgangNH" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A King's Path" AND a.name = "521-DREAM" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Brothers: The Second Chapter" AND a.name = "Writing Sins Not Tragedies" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Your Arse Is Mine!" AND a.name = "Thedirtymind" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Head Boy's Room" AND a.name = "Ducksonparade" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Reflection - Part of Averlovi's The Potter Chronicles" AND a.name = "Dorothea Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Survivors" AND a.name = "OrionB15" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "An Avenger's Anguish" AND a.name = "Saliient91" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Petrichor" AND a.name = "SometimeWriter1" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Melting the Ice" AND a.name = "Theoneandonly99" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Stars Glow, Shadows Fall" AND a.name = "Proton6" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Focus of a Healer" AND a.name = "OfficeSloth" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Moody's Blues" AND a.name = "Gryffinsdoor" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Hogwarts Lonely Hearts Club" AND a.name = "Th3Alchemist" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How Silently She Sings" AND a.name = "Charlennette" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Pray For The Wicked" AND a.name = "Kapiushon" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Organic" AND a.name = "Akamoroti" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "To Catch A Killer" AND a.name = "PringlesTheWriter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Strange Case of Love" AND a.name = "Thedirtymind" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fire and Ice" AND a.name = "ACI100" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Family that Chooses You" AND a.name = "WokFriedIce" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Family that Heals" AND a.name = "WokFriedIce" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Extended Family" AND a.name = "WokFriedIce" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fleur De Lis" AND a.name = "OrionB15" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Winding Road" AND a.name = "NotAWriter1981" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Lion and The Lioness" AND a.name = "TigerGirl14" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Thrown Back" AND a.name = "ProfessorQuill101" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Call Me Edward" AND a.name = "CelesteMagnolia" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Dark Year" AND a.name = "Alwaysendwithakiss" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Kiss of Life" AND a.name = "Birdwoman95" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "On The Hunt" AND a.name = "Vedros" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Reading HP - 1" AND a.name = "Lorixjake" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Agent Potter: The Wizard of WAND" AND a.name = "HPfanfictioner66" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Daphne Greengrass and the Boy Who Lived" AND a.name = "KatonRyu" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Delicate Art of Raising Thestrals" AND a.name = "AppoApples" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Ritual of Love's Memory" AND a.name = "CampDBow" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Written in the Stars" AND a.name = "TheBlack'sResurgence" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Contractual Obligation" AND a.name = "LegendDairy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Never Silence A Lion's Roar" AND a.name = "Aeyliana" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Lost Horcrux" AND a.name = "LilyevansJan30" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A short life full of long years" AND a.name = "RMWB" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Evans: Memoirs of a well-lived Death (SI)" AND a.name = "Bor902" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Taste of Magic" AND a.name = "WokFriedIce" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Side Dishes" AND a.name = "WokFriedIce" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Intrinsicality" AND a.name = "RileyOR" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "We're Home" AND a.name = "Hatebelow" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hatal Fart Attack" AND a.name = "Corwalch" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Beautiful" AND a.name = "Michelle Moonshine" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Parce que" AND a.name = "Feymist" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Back Again, Harry?" AND a.name = "Jedi Buttercup" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Harmony Bond" AND a.name = "Brigrove" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Obligatory Marriage Law Fic" AND a.name = "Bobmin356" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Knowing Where to Look" AND a.name = "La baguette" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Seduced by a Veela" AND a.name = "Hphglover" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ron's Howler" AND a.name = "Stick97" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Unmentionables?" AND a.name = "Stick97" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Delenda Est" AND a.name = "Lord Silvere" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Betrothal Contract" AND a.name = "James Spookie" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Accidental Bond" AND a.name = "Kb0" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Heart and Soul" AND a.name = "Sillimaure" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Cold blood" AND a.name = "DerLaCroix" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Return of the Marauders" AND a.name = "TheLastZion" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "To Become Whole Again" AND a.name = "Datbenik513" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fine Then!" AND a.name = "Alpha-The-Omega" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "It's My Life" AND a.name = "Fyreheart" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "BitterSweet Irony" AND a.name = "Sqwiz" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter After the War" AND a.name = "PotterFanSteve" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Different Halloween" AND a.name = "RobSt" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Lucky Harry" AND a.name = "Pyrgus" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How to Cage My Own Angel" AND a.name = "Jojor99" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "For the Best" AND a.name = "Deliver.me" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Death's Doorbell" AND a.name = "Paladeus" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Quoth the Raven, Nevermore" AND a.name = "GenkaiFan" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "From The Ashes Of Magic" AND a.name = "Dreetje" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Pureblood Princess" AND a.name = "TheEndless7" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter, Rise From Dust" AND a.name = "Bluezz-17" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "On Teenagers And Love" AND a.name = "Anamatics" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "For the Love of Ginny" AND a.name = "Jesrod82" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "She Who Holds the Strings" AND a.name = "Romantic Silence" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Harry Potter Writers Circle" AND a.name = "Pettybureaucrat" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "One Night" AND a.name = "Sugarbubbleslove" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Nanny Wanted" AND a.name = "Miscard" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Set Up Gone Wrong" AND a.name = "Jojor99" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "No Regrets" AND a.name = "WandaXmaximoff" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Autumn Swan" AND a.name = "Lord Akiyama" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Snake in the Chestnut" AND a.name = "Nauro" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Elusive Prince" AND a.name = "The Purple Critic" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Call to Arms" AND a.name = "My Dear Professor McGonagall" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Is this fate?" AND a.name = "Elvenkendra" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Past Always Catches Up" AND a.name = "Hopefulled" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Unatoned" AND a.name = "SeriousScribble" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Coach Granger" AND a.name = "LuanMao" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Never Let Me Go" AND a.name = "Orlandraopal29" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "No Thinking Thing" AND a.name = "Aya8" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Passionate Interlude" AND a.name = "Aya8" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dance Your Heart Out" AND a.name = "Butterfly Kisses 22" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Plus One" AND a.name = "Maia.maiestas" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Quidditch pitch and five Galleons" AND a.name = "Onecelestialbeing" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Roar and a Slither" AND a.name = "Lunalustgood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Stregati" AND a.name = "Ely-Baby" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Addiction" AND a.name = "BeaumontRulz" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Purple" AND a.name = "Unicornball" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Touch Me" AND a.name = "Alexandri" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The List" AND a.name = "9876grpc" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Potter's Angels" AND a.name = "Takao1160" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Power of the Press" AND a.name = "Bobmin356" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "One-Ness" AND a.name = "HermiHugs" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Wizards Fall" AND a.name = "Bobmin356" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "In the Library" AND a.name = "Vox ad umbram sum" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Box" AND a.name = "SkyHigh17" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Four Heirs" AND a.name = "Sinyk" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Intervention" AND a.name = "Simon Flower" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Temptation" AND a.name = "Simon Flower" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Working Late" AND a.name = "Simon Flower" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "For The First Time" AND a.name = "Anjie" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The ShampooDragon Seduction" AND a.name = "LJlashlarue" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Discretion" AND a.name = "LJlashlarue" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Forgotten But Not Gone" AND a.name = "Harmonyromionedramione" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Stress Relieving Breakfast" AND a.name = "The-void of Emotions" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Perils of Prospective Pregnancy" AND a.name = "StrongHermione" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Love of Your Life" AND a.name = "Fantasy1290" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Witchunters of London" AND a.name = "Rusty Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Insta-Family Effect" AND a.name = "Harmonyromionedramione" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Secret Desire" AND a.name = "DarkEagle69" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Come Back and Haunt Me" AND a.name = "Elliehigginbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Two Flowers" AND a.name = "Azaron" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Alternative Rebirth" AND a.name = "Nellark" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Nameless Man" AND a.name = "Brennus" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Success!" AND a.name = "FamousNoOne" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Happy Birthday, Harry!" AND a.name = "Onyx Obsidian" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Following Instinct" AND a.name = "GreenEvans" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the 11th Commandment" AND a.name = "Insert Valid Author Name" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Any Way You Want It" AND a.name = "KiyoFaye" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tales of Berseria Crossover
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Any Way You Want It" AND a.name = "KiyoFaye" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry's Veela" AND a.name = "Colormonk" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "What Are Friends For?" AND a.name = "Moonglow21" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Benefits" AND a.name = "Bl4ckC0bra" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mine" AND a.name = "LJlashlarue" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Four Champions" AND a.name = "RandReborn" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Burning Love" AND a.name = "Uniquely Named" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry, Hermione and Lily" AND a.name = "Broomstick flyer" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Unexpected" AND a.name = "Sharp Angles" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Heirs of the Founders" AND a.name = "Animekitty2" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Charlie's Child" AND a.name = "Harry50" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "What We're Fighting For" AND a.name = "James Spookie" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Pleasurable Jealousy" AND a.name = "A Love So Strong" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Legacy" AND a.name = "StorytellerSpW" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Welcome to Burlesque" AND a.name = "Abigail Belle" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Muggleborn Teacher" AND a.name = "White Angel of Auralon" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "I told him, Gaby I told him that I loved you" AND a.name = "Floaw" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Christmas FemSlash Special" AND a.name = "WhereTheBerriesBloom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How it all started" AND a.name = "Floaw" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Second Time Around" AND a.name = "ZilchNil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Baby, It's Cold Outside" AND a.name = "Itakethewords" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Seasons of Change" AND a.name = "MPRose" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "You and I Collide" AND a.name = "Scarlet-Angel-Blonde-Devil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Very Merry Christmas Indeed" AND a.name = "Grace Kay (Drummerchick7)" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Check... and Mate" AND a.name = "Grace Kay (Drummerchick7)" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "That Which Matters Most" AND a.name = "Grace Kay (Drummerchick7)" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Moving On" AND a.name = "Grace Kay (Drummerchick7)" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Innocence Asunder" AND a.name = "Grace Kay (Drummerchick7)" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sharing" AND a.name = "Grace Kay (Drummerchick7)" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Tomorrow" AND a.name = "Masserect" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "What Miranda Wants" AND a.name = "RaeDMagdon" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "I Hate It When She Does That" AND a.name = "Coolant" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Asari Nights" AND a.name = "Psychotic_cat17" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Doctor's Prescription" AND a.name = "Lyaksandra" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Life's a Catch" AND a.name = "Luthor" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Perfect Pet" AND a.name = "Raptor4d4" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Saving Nezzy" AND a.name = "BlueRaith" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Saving Sanity" AND a.name = "BlueRaith" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Samantha's New Game" AND a.name = "Raptor4d4" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Apology" AND a.name = "Raptor4d4" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Personal Growth" AND a.name = "RaeDMagdon" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "This Body Is Yours" AND a.name = "Fight-sister-fight" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Piano e Forte" AND a.name = "Wyles77" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mass Effect: End of Days" AND a.name = "Postmeat" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mass Effect: The Paths We Take (Discontinued)" AND a.name = "Nothinginreturn" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Breaking Point" AND a.name = "Revan's Mask" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Of Heartache and Second Chances" AND a.name = "Massfreak" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Justified Means" AND a.name = "Spectre-058" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Project Delta" AND a.name = "5th Legion" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Short Road Home" AND a.name = "Amber Penglass" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Anti-Agathics War" AND a.name = "AManAdrift" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Uncommon Bonds" AND a.name = "Tayg" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Seduction Theory" AND a.name = "ShadowBlazer" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "From Ashes" AND a.name = "Thessian Shadow" AND f.name = "Mass Effect"
UNION -- Mass Effect
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Better Angels: A Call to Arms" AND a.name = "Wyles77" AND f.name = "Mass Effect"
UNION -- Nana to Kaoru/ナナとカオル
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Catch" AND a.name = "A. LaRosa" AND f.name = "ナナとカオル | Nana to Kaoru"
UNION -- Nana to Kaoru/ナナとカオル
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Branded" AND a.name = "A. LaRosa" AND f.name = "ナナとカオル | Nana to Kaoru"
UNION -- Nana to Kaoru/ナナとカオル
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mistress Nana" AND a.name = "Draco38" AND f.name = "ナナとカオル | Nana to Kaoru"
UNION -- Nana to Kaoru/ナナとカオル
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Exhilaration" AND a.name = "A. LaRosa" AND f.name = "ナナとカオル | Nana to Kaoru"
UNION -- Naruto
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Eat You Up" AND a.name = "Thekatthatbarks" AND f.name = "Naruto"
UNION -- Naruto
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Wherein Ino Yamanaka Regales Sakura Haruno With Her Long List of Conquests" AND a.name = "Epsilonics" AND f.name = "Naruto"
UNION -- Naruto
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Honeymooners" AND a.name = "VampbaitInfinity" AND f.name = "Naruto"
UNION -- Naruto
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mother/Daughter Love: Sequel One" AND a.name = "McCrazy23" AND f.name = "Naruto"
UNION -- Naruto
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mother/Daughter Love" AND a.name = "McCrazy23" AND f.name = "Naruto"
UNION -- Naruto
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Friends with Benefits" AND a.name = "AnimeLover4Life" AND f.name = "Naruto"
UNION -- Naruto
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Birthday Surprise" AND a.name = "Rikuren" AND f.name = "Naruto"
UNION -- Naruto
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Waterfall of Love" AND a.name = "AnimeLover4Life" AND f.name = "Naruto"
UNION -- Naruto
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Warped" AND a.name = "BountifullyBeautifullyBlessed" AND f.name = "Naruto"
UNION -- Naruto
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Silver and Gold" AND a.name = "Hobgoblin" AND f.name = "Naruto"
UNION -- Naruto
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Moonlight Sonata Antarctica" AND a.name = "" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Follow The Leader" AND a.name = "AstroLatte" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "One Day in December" AND a.name = "Night_Being" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Accounts of Perversion and Obscenity" AND a.name = "EvilFuzzy9" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "I Am NOT Going Through Puberty Again!" AND a.name = "EvilFuzzy9" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naruto's Date" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Boys And Their Toys" AND a.name = "6th_Street" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Safe and sound" AND a.name = "Walkingonempty" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Few Extra Minutes" AND a.name = "Blossomdreams" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Pink Medical Kunoichi" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Violet Flower" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Red Flute Player" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Purple Snake" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Yellow Sand Sickle" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Maroon Vixen" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Golden Firefly" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Mint Beetle" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Russet Doctor" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Brown Hound" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Lavender Byakugan Hime" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Blue Origami Angel" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Auburn Mizukage" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Black Nadeshiko Warrior" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Crimson Healer" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Glacial Princess" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Carmine Queen" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Jasmine Legendary Sucker" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Chestnut Weapons Minx" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Chocolate Strawberry" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Seductress In Red" AND a.name = "Kyuubi16" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "New Rules" AND a.name = "Greentea815" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Kitsune's Seduction" AND a.name = "Erokage37" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A False Assumption" AND a.name = "Luvsanime02" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Unplanned" AND a.name = "KuriQuinn" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Counterpoise" AND a.name = "Boxparade" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Snake and Toad" AND a.name = "Tonlor" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Pervy Futa Party Games" AND a.name = "EvilFuzzy9" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Completely Ruined" AND a.name = "GalacticSaz" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Us Into Pieces." AND a.name = "CountlessUntruths (KaliCephirot)" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Us Into Pieces." AND a.name = "CountlessUntruths (KaliCephirot)" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Artwork" AND a.name = "Sakiku" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Demon's Dirty Dreams" AND a.name = "SleepyMatt" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Secret Technique" AND a.name = "SleepyMatt" AND f.name = "Naruto"
UNION -- 
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Saturday Night" AND a.name = "Punkguy82" AND f.name = "Naruto"
UNION -- 
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Family Secrets" AND a.name = "Crazelegs12" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "She Made Him Wait" AND a.name = "Tomcat171" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Cuckolding Konoha" AND a.name = "WhiteWhiskey" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Trouble In Paradise" AND a.name = "DevilHeart435" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sakura's Plan" AND a.name = "TheInspector" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Feeling Her" AND a.name = "Andromeda" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "I Kissed A Girl" AND a.name = "AshleyTrecartin" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hinata, It can't be helped!" AND a.name = "Nacholant" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hands Tied" AND a.name = "InTheMist032000" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dorks." AND a.name = "EroPrincess" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Kage Sexbomb" AND a.name = "SniperJoe" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naruto the Kunoichi Toy" AND a.name = "TheDogSage" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sarada's Suprise" AND a.name = "Stormwolf3710" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Conquering Hero" AND a.name = "CyberXIII" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hinata's Little Bitch Boy" AND a.name = "TheDogSage" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Shota CRA" AND a.name = "Mantis137" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Man's Responsibility" AND a.name = "CompassOpposites" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Woman's Touch" AND a.name = "HeavenHeaven" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Pathos of the Shinobi" AND a.name = "Naratu" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hidden From Sunlight" AND a.name = "BunnyHoodlum" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Last Prayer" AND a.name = "GraeFoxx" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fun With Clones" AND a.name = "Brujx (FallingForKonoha)" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Home is where my team is" AND a.name = "Tentendeservedbetter" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Salvage" AND a.name = "WaterRolls" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Life Without Kurama" AND a.name = "AxleBoost" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Misconceptions" AND a.name = "WaterRolls" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Unusual Lesson" AND a.name = "PhantomKeeperQazs" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chasing You" AND a.name = "Wonderfuloz" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blood does not make a Family" AND a.name = "KowaiCharacter" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hinata's Plan" AND a.name = "" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Post-War Passions" AND a.name = "RosyPalms" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND a.name = "VulgarAssassin" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Icha Icha Starlet" AND a.name = "" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Invisible Favors" AND a.name = "DimiComi" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Best for Us" AND a.name = "Asriah" AND f.name = "Boruto: Naruto Next Generations"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Best for Us" AND a.name = "Asriah" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Seasons of Life" AND a.name = "Bom_Bidi_Bom" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Seasons of Life" AND a.name = "Bom_Bidi_Bom" AND f.name = "Boruto: Naruto Next Generations"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Vacation" AND a.name = "KarlMower2003 (Entertainmensch)" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Cloud" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: The Yellow Flash and The Golden Goddess" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Firefly Heiress" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: Two Leaves" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Sand" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: The Fox and The Cat" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and Two Clouds" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: Two Leaves and The Sand" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf, The Cloud, and The Firefly" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Heavenly Harem" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Lunch Break" AND a.name = "Balddog4" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Window Shopping" AND a.name = "FieldDranzer" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hinata of the White Lotus" AND a.name = "Froznx" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Eternal Torment of Tayuya Uzumaki" AND a.name = "Ensou" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Uzumaki Family Values" AND a.name = "EvilFuzzy9" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naruto and Anko" AND a.name = "Steamy Naruto Writer" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Master of Jiongu" AND a.name = "The Dark Dragon Emperor" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Ninth Demon Lord: A Naruto Story" AND a.name = "RyoshiMorino" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naughty Naruto" AND a.name = "Atsuzi Tano" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Red" AND a.name = "DandelionDreaming" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Tone And Stroke" AND a.name = "Timberwolfe" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Uzumaki Naruko: To the Victor, the Spoils V2" AND a.name = "SeerKing" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Futanari action in the Woods" AND a.name = "FuFapper" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Futas' boy Naruto" AND a.name = "Skanmp" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Transcending" AND a.name = "Snapers" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Our Bond" AND a.name = "Spazzgirl" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Meet the Hyuga" AND a.name = "Solvdrage" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "More than enough (M-Rated version)" AND a.name = "Petran" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Life is Good" AND a.name = "Lancecomwar" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naruto & Hinata Harem Hunters" AND a.name = "MongolKahn" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Kinky Konoha" AND a.name = "Crimson Red Ghost" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Rub it Out" AND a.name = "MyUsedRomance" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naruto's Weakness" AND a.name = "Satoorihoya" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Love Me Right" AND a.name = "Tinyraver" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Treatments for Ecstasy" AND a.name = "Blackkitten23" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Diary of a White-Eyed Girl" AND a.name = "Zaphi Nashii" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Memories Of Others" AND a.name = "TheBeardedOne" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "In Charge" AND a.name = "LovelyLori" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fun at Resort" AND a.name = "Kairauchiha" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naruto's Birthday Treat" AND a.name = "Thesaiyanjedi" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Birthday" AND a.name = "Reading-Bennie" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Particles of Dust" AND a.name = "Team Dragon Star" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Hormone" AND a.name = "Opkisofg" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "By Your Side (One Shot)" AND a.name = "TMark260" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mom's Disappointment, Son's Enjoyment" AND a.name = "Opkisofg" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Seducing Naruto" AND a.name = "LolaTheSa" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Love In Bloom" AND a.name = "GirlsAndTwirls" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sister's Always Share REUPLOADED" AND a.name = "The Four Crosses" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Loving Massage" AND a.name = "Kanaelunmoon" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naruto: Re" AND a.name = "Lord Winterman" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ino's Revenge on Sakura" AND a.name = "1Sakura-Haruno1" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Tale of Gallant Naruto" AND a.name = "Super-Pervert Toad Sage" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Come In From The Rain" AND a.name = "MrFanFictionFreak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Shower Fun" AND a.name = "Lagseeing1123" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "If I Could Do It Over" AND a.name = "NarHina" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Family Time" AND a.name = "NHlemonfan" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "My Dear Weapons Mistress" AND a.name = "TsukikoUchu" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Yajuu Sannin" AND a.name = "Shredjeep777" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Friendly Advice" AND a.name = "Bucket of Holding" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Birthday Gift" AND a.name = "Blossom-M" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sister in law, to sister in love!" AND a.name = "Robin.exe" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sense of Duty" AND a.name = "MelodySincerelySong" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "New Things" AND a.name = "LemonJuicer" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Lemonade" AND a.name = "Cszimm" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Within Interest" AND a.name = "Silent Songbird" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "More Than One Life" AND a.name = "Its-Levioooosaa" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Thunder Clap" AND a.name = "Free Drinks" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Caged Bird" AND a.name = "Kagami1228" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Home with the Uzumakis" AND a.name = "TheKingofAnimeandManga" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "What happens in secret" AND a.name = "FanFictionBard2" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naruto Uzumaki Ero-Ninja" AND a.name = "Imperial-samaB" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Addict" AND a.name = "BigE2955" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Secrets of the Gentle Fist(ing)" AND a.name = "TotoroX92" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sensei-kun" AND a.name = "Wanker - King of Wank Peasants" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naruto Shippuden: Inner Hinata" AND a.name = "LiquidPhazon" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Ripe Habanero" AND a.name = "Raptorcloak" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Yesterday Morning" AND a.name = "Midnight Rain19" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ninth" AND a.name = "Sulphur99" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harmless Attraction" AND a.name = "DemonOfTheFridge" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Unusual Lessons" AND a.name = "The Phantom Keeper" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Journal of Hope" AND a.name = "Masseffect-TxS" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Always the quiet one" AND a.name = "DingyLilith" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Jinchuuriki's Brother" AND a.name = "Gogos14" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Single Effect" AND a.name = "Midnight Rain19" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Love Is Not A Cage" AND a.name = "NightOwl27" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Red Thread" AND a.name = "Midnight Rain19" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Better Beginning" AND a.name = "Thundos" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Of Scrolls and Chains" AND a.name = "EcoBlade" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Legion of Naruto" AND a.name = "DarkWolfy" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naruto Femdom Stories" AND a.name = "FetishFiend69" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Orange Spark" AND a.name = "LC Namikaze" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Secrets and smiles" AND a.name = "Sabersoul13" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Cycle of Hatred: A Naruto Insert" AND a.name = "Eternal Yujin" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Sage Who Leapt Through Time" AND a.name = "SarthakBikramPanta" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Demon Shinobi of Konoha" AND a.name = "Thelow" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "In Her Bed" AND a.name = "KeumbangGoela" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "SugarSugar" AND a.name = "KeumbangGoela" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Steam and Sweat" AND a.name = "AlphaDelta1001" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Memories" AND a.name = "TheGreatHibiki" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Instrumental" AND a.name = "Wandering Wonderer" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "In The Heat of The Moment" AND a.name = "River of the sand" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Forgotten Prisoner" AND a.name = "Robertz" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naruto's Valentine Day" AND a.name = "Bunji the wolf" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Lucky Night of Love" AND a.name = "Yoshi 2.1" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fatal Attraction" AND a.name = "Aisha12894" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Drifting" AND a.name = "AlphaDelta1001" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Opportunities" AND a.name = "Prefect Potter" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Impossible Car Dream" AND a.name = "Armageddon Angel" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "And Time Again" AND a.name = "716799" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "No Oath, No Spell" AND a.name = "Ricejames" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Orange Bedroom" AND a.name = "Kyuubi's Angel of Darkness" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Want Verus Need" AND a.name = "Armageddon Angel" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sexually Frustrated" AND a.name = "OldAsHeck" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Eternal Love" AND a.name = "OldAsHeck" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Anko's Roses" AND a.name = "TakumaAngel" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Ties that Bind Us: A Naruto and Kushina Love Story" AND a.name = "Tonlor" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Kings of Foreplay" AND a.name = "SaveTheHero" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naruto Orange Typhoon" AND a.name = "Nashtalon" AND f.name = "Naruto"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Willingly Snared in the Widow's Web" AND a.name = "Major Mike Powell III" AND f.name = "Overwatch"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "When One Domino Falls" AND a.name = "Warchief" AND f.name = "StarCraft"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Moving On" AND a.name = "Viralmysteries" AND f.name = "Wiedźmin | The Witcher"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "En'leass*" AND a.name = "Fen_Assan" AND f.name = "Wiedźmin | The Witcher"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Yours Truly" AND a.name = "Fen_Assan" AND f.name = "Wiedźmin | The Witcher"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Like a Damn Princess" AND a.name = "Luddleston" AND f.name = "Wiedźmin | The Witcher"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Like a Damn Princess" AND a.name = "Luddleston" AND f.name = "Wiedźmin | The Witcher"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Wager" AND a.name = "Eravalefantasy" AND f.name = "Wiedźmin | The Witcher"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Novigrad: An Interlude" AND a.name = "Crimson_Coin" AND f.name = "Wiedźmin | The Witcher"
UNION
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Too Good to Last" AND a.name = "The Assassin's Pen" AND f.name = "Witcher";