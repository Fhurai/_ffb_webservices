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
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Trouble, with a Capital T" AND a.name = "Pottermum" AND f.name = "Harry Potter - Wizarding World";

/*
 * Fanfictions relations
 * NOTE Relationships in fanfictions
 */
DELETE FROM `fanfictions_relations`; 
INSERT INTO `fanfictions_relations`
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Necessary" AND a.name = "Ariaojou" AND r.name = "Angelise Ikaruga Misurugi / Tusk"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Life in the New World" AND a.name = "Jm1681" AND r.name = "Angelise Ikaruga Misurugi / Hilda Schlievogt / Tusk"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Waiting" AND a.name = "Me413" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Lost Love Letters of Cloud Strife" AND a.name = "Somebody's Nightmare" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Comeback Kid" AND a.name = "Somebody's Nightmare" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Innocent Feelings" AND a.name = "Senigata" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Emerald Dream" AND a.name = "Senigata" AND r.name = "Cloud Strife / Jessie / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Golden Respite" AND a.name = "Senigata" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Lost Heart" AND a.name = "Senigata" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Fractured Mind" AND a.name = "Senigata" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Starlight" AND a.name = "Senigata" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Post Crisis" AND a.name = "Senigata" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Final Fantasy: Guardians" AND a.name = "VeryBerry96" AND r.name = "Tidus / Yuna"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Twist in Fate" AND a.name = "IAltoSax" AND r.name = "Auron / OC"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND r.name = "Hermione Granger / Luna Lovegood"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND r.name = "Ginevra 'Ginny' Weasley / Luna Lovegood"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND r.name = "Harry Potter / Luna Lovegood"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND r.name = "Ginevra 'Ginny' Weasley / Hermione Granger"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND r.name = "Harry Potter / Hermione Granger"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Lost in Muggle London" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Perils of Too Much Calming Potion" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Perils of Too Much Calming Potion" AND a.name = "Phoenixgal" AND r.name = "Harry Potter / OMC"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND r.name = "Alicia Spinnet / Ginevra 'Ginny' Weasley"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Family" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "No Rules" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "No Rules" AND a.name = "Phoenixgal" AND r.name = "Dean Thomas / Ginevra 'Ginny' Weasley"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Muggle Relations" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Muggle Relations" AND a.name = "Phoenixgal" AND r.name = "Harry Potter / OMC"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Family Time" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Lucky Kids" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Expanding Bed Charms" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Expanding Bed Charms" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / OFC"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Not a Phase" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Not a Phase" AND a.name = "Phoenixgal" AND r.name = "Albus Severus Potter / Scorpius Malfoy"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Awkward Lunch" AND a.name = "Phoenixgal" AND r.name = "Albus Severus Potter / Scorpius Malfoy"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Awkward Lunch" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Awkward Lunch" AND a.name = "Phoenixgal" AND r.name = "Harry Potter / Neville Longbottom"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "At the Hogsnock Baths" AND a.name = "Phoenixgal" AND r.name = "Harry Potter / Neville Longbottom"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / OFC"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND r.name = "Albus Severus Potter / Scorpius Malfoy"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND r.name = "Harry Potter / Neville Longbottom"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Greek Holiday" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Greek Holiday" AND a.name = "Phoenixgal" AND r.name = "Harry Potter / OFC"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Greek Holiday" AND a.name = "Phoenixgal" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Best and the Brightest" AND a.name = "Tjs_whatnot" AND r.name = "Harry Potter / Nymphadora Tonks"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND r.name = "Harry Potter / Pansy Parkinson"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "From One Good Time To Another" AND a.name = "Scarletladyy" AND r.name = "Harry Potter / Pansy Parkinson"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "From One Good Time To Another" AND a.name = "Scarletladyy" AND r.name = "Draco Malfoy / Pansy Parkinson"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Grey Haven" AND a.name = "QuidditchMom (eibbil_one)" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Red Dress" AND a.name = "QuidditchMom (eibbil_one)" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Up Against the Wall" AND a.name = "QuidditchMom (eibbil_one)" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Harry Potter/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Caught" AND a.name = "QuidditchMom (eibbil_one)" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Pansy Parkinson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Parkinson's Knickers (Or Lack Thereof)" AND a.name = "" AND r.name = "Harry Potter / Pansy Parkinson"
UNION -- Pansy Parkinson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Quid Pro Quo" AND a.name = "" AND r.name = "Harry Potter / Pansy Parkinson"
UNION -- Harry Potter/Nymphadora Tonks
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Games Without Frontiers" AND a.name = "Kabal42" AND r.name = "Harry Potter/Nymphadora Tonks"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "All's Fair" AND a.name = "Sarcastrow" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Katie Bell/Seamus Finnigan
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "All's Fair" AND a.name = "Sarcastrow" AND r.name = "Katie Bell / Seamus Finnigan"
UNION -- Seamus Finnigan/Pansy Parkinson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "All's Fair" AND a.name = "Sarcastrow" AND r.name = "Pansy Parkinson / Seamus Finnigan"
UNION -- Lavender Brown/Seamus Finnigan
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "All's Fair" AND a.name = "Sarcastrow" AND r.name = "Lavender Brown / Seamus Finnigan"
UNION -- Hermione Granger/Pansy Parkinson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Another Kind of Lesson" AND a.name = "Twisted_Mind" AND r.name = "Hermione Granger / Pansy Parkinson"
UNION -- Cho Chang/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Another Kind of Teacher" AND a.name = "Twisted_Mind" AND r.name = "Cho Chang / Hermione Granger"
UNION -- Hermione Granger/Pansy Parkinson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Another Kind of Punishment" AND a.name = "Twisted_Mind" AND r.name = "Hermione Granger / Pansy Parkinson"
UNION -- Daphne Greengrass/Pansy Parkinson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Walkies" AND a.name = "Lokifan" AND r.name = "Daphne Greengrass / Pansy Parkinson"
UNION -- Daphne Greengrass/Pansy Parkinson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "You Did Say ""Anything""" AND a.name = "Lokifan" AND r.name = "Daphne Greengrass / Pansy Parkinson"
UNION -- Fleur Delacour/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Playing Games" AND a.name = "Inell" AND r.name = "Fleur Delacour / Hermione Granger"
UNION -- Fleur Delacour/Hermione Granger/Bill Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Playing Games" AND a.name = "Inell" AND r.name = "Fleur Delacour / Hermione Granger / William 'Bill' Weasley"
UNION -- Luna Lovegood/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Just Ask" AND a.name = "Previouslysane (altar_boy)" AND r.name = "Harry Potter / Luna Lovegood"
UNION -- Luna Lovegood/Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Just Ask" AND a.name = "Previouslysane (altar_boy)" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Luna Lovegood"
UNION -- Harry Potter/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Challenges of Remote Subbing" AND a.name = "AuntieL" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Pretty From Behind" AND a.name = "Clio_jlh" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Charlie Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Bliss" AND a.name = "Inell" AND r.name = "Charles 'Charlie' Weasley / Hermione Granger"
UNION -- Hermione Granger/Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Bliss" AND a.name = "Inell" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Draco Malfoy/Blaise Zabini
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Bliss" AND a.name = "Inell" AND r.name = "Blaise Zabini / Draco Malfoy / Hermione Granger"
UNION -- Pansy Parkinson/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "That'll Show Them" AND a.name = "Woldy" AND r.name = "Ginevra 'Ginny' Weasley / Pansy Parkinson"
UNION -- Harry Potter/Lily Evans Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Normal" AND a.name = "RosaCalavera" AND r.name = "Harry Potter / Lily Evans Potter"
UNION -- Angelina Johnson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Horny at Hogwarts" AND a.name = "Jumper712" AND r.name = "Angelina Johnson / Harry Potter"
UNION -- Cho Chang/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Horny at Hogwarts" AND a.name = "Jumper712" AND r.name = "Cho Chang / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Clueless" AND a.name = "Pottermum" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Harry Potter/Nymphadora Tonks
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Metamorph Bet" AND a.name = "MayorHaggar" AND r.name = "Harry Potter / Nymphadora Tonks"
UNION -- Angelina Johnson/Fred Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Shagging Spot" AND a.name = "Hollywoodland" AND r.name = "Angelina Johnson / Frederick 'Fred' Weasley"
UNION -- Lavender Brown/Parvati Patil
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Shagging Spot" AND a.name = "Hollywoodland" AND r.name = "Lavender Brown / Parvati Patil"
UNION -- Lavender Brown/Parvati Patil/Cormac McLaggen
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Shagging Spot" AND a.name = "Hollywoodland" AND r.name = "Cormac McLaggen / Lavender Brown / Parvati Patil"
UNION -- Angelina Johnson/Fred Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Encore" AND a.name = "Hollywoodland" AND r.name = "Angelina Johnson / Frederick 'Fred' Weasley"
UNION -- Alicia Spinnet/George Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Encore" AND a.name = "Hollywoodland" AND r.name = "Alicia Spinnet / George Weasley"
UNION -- Angelina Johnson/Alicia Spinnet
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Encore" AND a.name = "Hollywoodland" AND r.name = "Alicia Spinnet / Angelina Johnson"
UNION -- Lavender Brown/Parvati Patil
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Encore" AND a.name = "Hollywoodland" AND r.name = "Lavender Brown / Parvati Patil"
UNION -- Lavender Brown/Parvati Patil/Cormac McLaggen
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Encore" AND a.name = "Hollywoodland" AND r.name = "Cormac McLaggen / Lavender Brown / Parvati Patil"
UNION -- Astoria Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Minister's Affair" AND a.name = "Romaine" AND r.name = "Astoria Greengrass / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Minister's Affair" AND a.name = "Romaine" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Astoria Greengrass/Draco Malfoy
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Minister's Affair" AND a.name = "Romaine" AND r.name = "Astoria Greengrass / Draco Malfoy"
UNION -- Parvati Patil/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Favours & Benefits" AND a.name = "Lightofdaye" AND r.name = "Harry Potter / Parvati Patil"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "This Christmas" AND a.name = "Tryslora" AND r.name = "Lavender Brown/Neville Longbottom"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Stockings Were Hung by the Chimney With Care" AND a.name = "Star54kar" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Stress Relief" AND a.name = "Megamatt09" AND r.name = "Harry Potter / Nymphadora Tonks"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "A Very Happy Mother's Day" AND a.name = "Megamatt09" AND r.name = "Harry Potter / Lily Evans Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Property of Potter" AND a.name = "Megamatt09" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Property of Potter" AND a.name = "Megamatt09" AND r.name = "Fleur Delacour / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Stress Relief" AND a.name = "Inell" AND r.name = "Fleur Delacour / Hermione Granger / William 'Bill' Weasley"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Bad Day (Or How to Get Hermione to Stop Worrying And Enjoy Sex While On The Clock)" AND a.name = "" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "First Times" AND a.name = "Pottermum" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Hermione Granger/Draco Malfoy
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND r.name = "Draco Malfoy / Hermione Granger"
UNION -- Ginny Weasley/Blaise Zabini
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND r.name = "Blaise Zabini / Ginevra 'Ginny' Weasley"
UNION -- Pansy Parkinson/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND r.name = "Pansy Parkinson / Ronald 'Ron' Weasley"
UNION -- Tracey Davis/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND r.name = "Harry Potter / Tracey Davis"
UNION -- Daphne Greengrass/Theodore Nott
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND r.name = "Daphne Greengrass / Theodore Nott"
UNION -- Lavender Brown/Seamus Finnigan
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND r.name = "Lavender Brown / Seamus Finnigan"
UNION -- Neville Longbottom/Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Birthday Wishes" AND a.name = "Pottermum" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Neville Longbottom"
UNION -- 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Eros & Psyche" AND a.name = "Argenterie" AND r.name = "Harry Potter / Hermione Granger"
UNION -- 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Eros & Psyche" AND a.name = "Argenterie" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION -- 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Eros & Psyche" AND a.name = "Argenterie" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Eros & Psyche" AND a.name = "Argenterie" AND r.name = "Harry Potter / Ronald 'Ron' Weasley"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Euphemism is a perfectly good word" AND a.name = "Pottermum" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "That Need" AND a.name = "HPTrio" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "That Need" AND a.name = "HPTrio" AND r.name = "Harry Potter / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "That Need" AND a.name = "HPTrio" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "That Need" AND a.name = "HPTrio" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "That Need" AND a.name = "HPTrio" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "That Need" AND a.name = "HPTrio" AND r.name = "Ginevra 'Ginny' Weasley / Hermione Granger"
UNION -- Harry Potter/Ginny Weasley/Ron Weasley/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "That Need" AND a.name = "HPTrio" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Ginny Weasley/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "That Need" AND a.name = "HPTrio" AND r.name = "Ginevra 'Ginny' Weasley / Ronald 'Ron' Weasley"
UNION -- Cho Chang/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Seekers of Love" AND a.name = "Thatsarockfact55" AND r.name = "Cho Chang / Harry Potter"
UNION -- Cedric Diggory/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Seekers of Love" AND a.name = "Thatsarockfact55" AND r.name = "Cedric Diggory / Harry Potter"
UNION -- Cho Chang/Cedric Diggory/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Seekers of Love" AND a.name = "Thatsarockfact55" AND r.name = "Cedric Diggory / Cho Chang / Harry Potter"
UNION -- Dean Thomas/Seamus Finnegan if you squint
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Seekers of Love" AND a.name = "Thatsarockfact55" AND r.name = "Dean Thomas / Seamus Finnegan"
UNION -- eventual Ron/Hermione
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Seekers of Love" AND a.name = "Thatsarockfact55" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- background Ginny/Luna
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Seekers of Love" AND a.name = "Thatsarockfact55" AND r.name = "Ginevra 'Ginny' Weasley / Luna Lovegood"
UNION -- Padma Patil/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "I'm Sure!" AND a.name = "Lightofdaye" AND r.name = "Harry Potter / Padma Patil"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Fly Away" AND a.name = "Likebunnies" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Harry Potter/Nymphadora Tonks
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Uninhibited: Nymphadora" AND a.name = "DepravedDevil" AND r.name = "Harry Potter / Nymphadora Tonks"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Dominating Daphne" AND a.name = "ThatsRealMagic" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Daphne Dominates" AND a.name = "ThatsRealMagic" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Daytime Domination" AND a.name = "ThatsRealMagic" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Harry's Need" AND a.name = "Pottermum" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Ginny's Need" AND a.name = "Pottermum" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Fleur Delacour/Harry Potter/Bill Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Bet" AND a.name = "Emmagrant01" AND r.name = "Fleur Delacour / Harry Potter / William 'Bill' Weasley"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Sustenance." AND a.name = "Pottermum" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Ginny's Appetite" AND a.name = "Pottermum" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Narcissa Black Malfoy/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Dinner, Date...Draco?" AND a.name = "MayorHaggar" AND r.name = "Harry Potter / Narcissa Black Malfoy"
UNION -- Narcissa Black Malfoy/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "When the Magic Stops Working" AND a.name = "Tryslora" AND r.name = "Harry Potter / Ronald 'Ron' Weasley"
UNION -- Narcissa Black Malfoy/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "When the Magic Stops Working" AND a.name = "Tryslora" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Narcissa Black Malfoy/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "When the Magic Stops Working" AND a.name = "Tryslora" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Narcissa Black Malfoy/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "When the Magic Stops Working" AND a.name = "Tryslora" AND r.name = "Luna Lovegood / Neville Longbottom"
UNION -- Narcissa Black Malfoy/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "When the Magic Stops Working" AND a.name = "Tryslora" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Luna Lovegood/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Broom Cupboard Encounters" AND a.name = "" AND r.name = "Harry Potter / Luna Lovegood"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Broom Cupboard Encounters" AND a.name = "" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Harry Potter/Nymphadora Tonks
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Broom Cupboard Encounters" AND a.name = "" AND r.name = "Harry Potter / Nymphadora Tonks"
UNION -- Fleur Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Broom Cupboard Encounters" AND a.name = "" AND r.name = "Fleur Delacour / Harry Potter"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Broom Cupboard Encounters" AND a.name = "" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Broom Cupboard Encounters" AND a.name = "" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Luna Lovegood/Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Broom Cupboard Encounters" AND a.name = "" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Luna Lovegood"
UNION -- Ginny Weasley/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Broom Cupboard Encounters" AND a.name = "" AND r.name = "Ginevra 'Ginny' Weasley / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and his luscious Butt" AND a.name = "WerewolfWarriro" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and his luscious Butt" AND a.name = "WerewolfWarriro" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Pansy Parkinson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and his luscious Butt" AND a.name = "WerewolfWarriro" AND r.name = "Harry Potter / Pansy Parkinson"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Ginny Weasley/Blaise Zabini
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND r.name = "Blaise Zabini / Ginevra 'Ginny' Weasley"
UNION -- Tracy Davis/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND r.name = "Tracy Davis / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Viktor Krum
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND r.name = "Hermione Granger / Viktor Krum"
UNION -- Hermione Granger/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Tit for Tat" AND a.name = "Inell" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Pansy Parkinson/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Tit for Tat" AND a.name = "Inell" AND r.name = "Hermione Granger / Pansy Parkinson / Ronald 'Ron' Weasley"
UNION -- Alucard/Seras Victoria
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND r.name = "Alucard / Seras Victoria"
UNION -- Integra Hellsing/Sirius Black/Lily Evans Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND r.name = "Integra Hellsing / Lily Evans Potter / Sirius Black"
UNION -- Susan Bones/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND r.name = "Harry Potter / Susan Bones"
UNION -- Sirius Black/Amelia Bones
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND r.name = "Amelia Bones / Sirius Black"
UNION -- Hermione Granger/Neville Longbottom
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND r.name = "Hermione Granger / Neville Longbottom"
UNION -- Hermione Granger/Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Last Time" AND a.name = "TableForThree_Archivist" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "No Thank You" AND a.name = "Sarah1281" AND r.name = "Harry Potter / Hermione Granger"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Rouse the Dead" AND a.name = "Torino10154" AND r.name = "Pansy Parkinson / Ronald 'Ron' Weasley"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Rouse the Dead" AND a.name = "Torino10154" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Office Fun" AND a.name = "Ronslady23" AND r.name = "Harry Potter / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Office Fun" AND a.name = "Ronslady23" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Office Fun" AND a.name = "Ronslady23" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Arthur Weasley/Molly Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND r.name = "Arthur Weasley / Molly Weasley"
UNION -- Sirius Black/Remus Lupin/Nymphadora Tonks
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND r.name = "Nymphadora Tonks / Remus Lupin / Sirius Black"
UNION -- Hermione Granger/Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "I'm Worried About Harry" AND a.name = "Heyitsamorette (AmoretteHD)" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "I'm Worried About Harry" AND a.name = "Heyitsamorette (AmoretteHD)" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "I'm Worried About Harry" AND a.name = "Heyitsamorette (AmoretteHD)" AND r.name = "Harry Potter / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "I'm Worried About Harry" AND a.name = "Heyitsamorette (AmoretteHD)" AND r.name = "Harry Potter / Hermione Granger"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "I'm Worried About Harry" AND a.name = "Heyitsamorette (AmoretteHD)" AND r.name = "Fleur Delacour / Harry Potter / William 'Bill' Weasley"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Roman Holiday" AND a.name = "Charleybradburies" AND r.name = "Ginevra 'Ginny' Weasley / Pansy Parkinson"
UNION -- Luna Lovegood/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND r.name = "Harry Potter / Luna Lovegood"
UNION -- Hermione Granger/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Viktor Krum
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND r.name = "Hermione Granger / Viktor Krum"
UNION -- Lavender Brown/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND r.name = "Lavender Brown / Ronald 'Ron' Weasley"
UNION -- Fleur Delacour/Bill Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND r.name = "Fleur Delacour / William 'Bill' Weasley"
UNION -- Fleur Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Veela Sisters" AND a.name = "Dirtyuncle" AND r.name = "Fleur Delacour / Harry Potter"
UNION -- Gabrielle Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Veela Sisters" AND a.name = "Dirtyuncle" AND r.name = "Gabrielle Delacour / Harry Potter"
UNION -- Fleur Delacour/Gabrielle Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Veela Sisters" AND a.name = "Dirtyuncle" AND r.name = "Fleur Delacour / Gabrielle Delacour / Harry Potter"
UNION -- Fleur Delacour/Gabrielle Delacour
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Veela Sisters" AND a.name = "Dirtyuncle" AND r.name = "Fleur Delacour / Gabrielle Delacour"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Christmas Holiday" AND a.name = "" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Quiet" AND a.name = "Lightofdaye" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Falling Through Clouds" AND a.name = "Holyfant" AND r.name = "Harry Potter / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Falling Through Clouds" AND a.name = "Holyfant" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Falling Through Clouds" AND a.name = "Holyfant" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Falling Through Clouds" AND a.name = "Holyfant" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Iwant2baweasley (becboobear)" AND a.name = "Private Party in the Conservatory" AND r.name = "Daphne Greengrass / Neville Longbottom"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Iwant2baweasley (becboobear)" AND a.name = "Private Party in the Conservatory" AND r.name = "Neville Longbottom / Pansy Parkinson"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Iwant2baweasley (becboobear)" AND a.name = "Private Party in the Conservatory" AND r.name = "Neville Longbottom / Tracey Davis"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Iwant2baweasley (becboobear)" AND a.name = "Private Party in the Conservatory" AND r.name = "Daphne Greengrass / Pansy Parkinson / Tracey Davis"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Iwant2baweasley (becboobear)" AND a.name = "Private Party in the Conservatory" AND r.name = "Daphne Greengrass / Pansy Parkinson"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Christmas Cheer" AND a.name = "Smutty_claus" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Luna Lovegood/Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Christmas Cheer" AND a.name = "Smutty_claus" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Luna Lovegood"
UNION -- Daphne Greengrass/Pansy Parkinson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Slytherin Games (Remix of Snakes)" AND a.name = "Icicle" AND r.name = "Daphne Greengrass / Pansy Parkinson"
UNION -- Hermione Granger/Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Anonymous Signs" AND a.name = "Abigail89" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Katie Bell/Cho Chang
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "my heart is holding on to you" AND a.name = "Aceofdiamonds" AND r.name = "Cho Chang / Katie Bell"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Candy Cane Obsessed Freak" AND a.name = "Luvscharlie" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Female Transfiguration 101" AND a.name = "Lamp23" AND r.name = "Ginevra 'Ginny' Weasley / Hermione Granger"
UNION -- Hermione Granger/Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Bedtime" AND a.name = "Holyfant" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Bedtime" AND a.name = "Holyfant" AND r.name = "Harry Potter / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Bedtime" AND a.name = "Holyfant" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Bedtime" AND a.name = "Holyfant" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- James Potter/Lily Evans Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Tea with the Headmistress" AND a.name = "Fluffybookfaerie" AND r.name = "James Potter / Lily Evans Potter"
UNION -- Lavender Brown/Parvati Patil
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Fire" AND a.name = "Zoelily" AND r.name = "Lavender Brown / Parvati Patil"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Accio Ballgag!" AND a.name = "Harby" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Fleur Delacour/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Accio Ballgag!" AND a.name = "Harby" AND r.name = "Fleur Delacour / Hermione Granger"
UNION -- Fleur Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Accio Ballgag!" AND a.name = "Harby" AND r.name = "Fleur Delacour / Harry Potter"
UNION -- Katie Bell/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Christmas Bells are Ringing" AND a.name = "MayorHaggar" AND r.name = "Harry Potter / Katie Bell"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "For This One Day" AND a.name = "Flipflop_diva" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Parvati Patil
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Night in the Lioness' Den" AND a.name = "Sheltie1987" AND r.name = "Hermione Granger / Parvati Patil"
UNION -- Hermione Granger/Lavender Brown
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Night in the Lioness' Den" AND a.name = "Sheltie1987" AND r.name = "Hermione Granger / Lavender Brown"
UNION -- Hermione Granger/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Night in the Lioness' Den" AND a.name = "Sheltie1987" AND r.name = "Ginevra 'Ginny' Weasley / Hermione Granger"
UNION -- Lavender Brown/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Night in the Lioness' Den" AND a.name = "Sheltie1987" AND r.name = "Ginevra 'Ginny' Weasley / Lavender Brown"
UNION -- Lavender Brown/Parvati Patil
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Night in the Lioness' Den" AND a.name = "Sheltie1987" AND r.name = "Lavender Brown / Parvati Patil"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Trouble, with a Capital T" AND a.name = "Pottermum" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter";

/*
 * Fanfictions characters
 * NOTE Characters in fanfictions
 */
DELETE FROM `fanfictions_characters`; 
INSERT INTO `fanfictions_characters`(`fanfiction_id`, `character_id`) 
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dancing Dragonflies" AND c.name = "Angelise Ikaruga Misurugi" AND a.name = "Jayf" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dancing Dragonflies" AND c.name = "Taylor Hebert" AND a.name = "Jayf" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "Parahumans Series - Wildbow"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Necessary" AND c.name = "Angelise Ikaruga Misurugi"  AND a.name = "Ariaojou" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Necessary" AND c.name = "Hilda Schlievogt"  AND a.name = "Ariaojou" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Necessary" AND c.name = "Tusk"  AND a.name = "Ariaojou" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Life in the New World" AND c.name = "Angelise Ikaruga Misurugi"  AND a.name = "Jm1681" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Life in the New World" AND c.name = "Hilda Schlievogt"  AND a.name = "Jm1681" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Life in the New World" AND c.name = "Tusk"  AND a.name = "Jm1681" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Life in the New World" AND c.name = "Salamandinay"  AND a.name = "Jm1681" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "We'll not die!" AND c.name = "Angelise Ikaruga Misurugi"  AND a.name = "Cj Spencer" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "We'll not die!" AND c.name = "Tusk"  AND a.name = "Cj Spencer" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "We'll not die!" AND c.name = "Momoka Oginome"  AND a.name = "Cj Spencer" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Cross Ange: The Knight of Hilda" AND c.name = "Angelise Ikaruga Misurugi"  AND a.name = "Eric Michael Kline" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Cross Ange: The Knight of Hilda" AND c.name = "Hilda Schlievogt"  AND a.name = "Eric Michael Kline" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Cross Ange: The Knight of Hilda" AND c.name = "Tusk"  AND a.name = "Eric Michael Kline" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Cross Ange: The Knight of Hilda" AND c.name = "OC"  AND a.name = "Eric Michael Kline" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Comeback Kid" AND c.name = "Cloud Strife"  AND a.name = "Somebody's Nightmare" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Comeback Kid" AND c.name = "Tifa Lockheart"  AND a.name = "Somebody's Nightmare" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Comeback Kid" AND c.name = "Zangan"  AND a.name = "Somebody's Nightmare" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Lost Love Letters of Cloud Strife" AND a.name = "Somebody's Nightmare" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Lost Love Letters of Cloud Strife" AND a.name = "Somebody's Nightmare" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id  FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Waiting" AND a.name = "Me413" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart" AND f.name = "Final Fantasy VII" 
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Waiting" AND a.name = "Me413" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Waiting" AND a.name = "Me413" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Marlene Wallace"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Waiting" AND a.name = "Me413" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Denzel"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Innocent Feelings" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Innocent Feelings" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Journey of a Barmaid" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Journey of a Barmaid" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Barret Wallace"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Journey of a Barmaid" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Biggs"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Journey of a Barmaid" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Jessie"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Emerald Dream" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Jessie"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Emerald Dream" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Emerald Dream" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Golden Respite" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Golden Respite" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Golden Respite" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Barret Wallace"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Golden Respite" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Aerith Gainsborough"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lost Heart" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lost Heart" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lost Heart" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Vincent Valentine"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fractured Mind" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fractured Mind" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fractured Mind" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cid Highwind"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fractured Mind" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Barret Wallace"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Starlight" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Starlight" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Post Crisis" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Post Crisis" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Post Crisis" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Marlene Wallace"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Post Crisis" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Denzel"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Gunslinger" AND a.name = "Nataku's Wrath" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Vincent Valentine"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Final Fantasy: Guardians" AND a.name = "VeryBerry96" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Final Fantasy: Guardians" AND a.name = "VeryBerry96" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Final Fantasy: Guardians" AND a.name = "VeryBerry96" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Rikku"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Final Fantasy: Guardians" AND a.name = "VeryBerry96" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OC"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Twist in Fate" AND a.name = "IAltoSax" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Auron"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Twist in Fate" AND a.name = "IAltoSax" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OC"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Final Fantasy X: All Bets Are Off" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Final Fantasy X: All Bets Are Off" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "All Bets Are Off: The Sequel" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "All Bets Are Off: The Sequel" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "FFX: All Bets Are Off 3: Tidus & Yuna Forever" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "FFX: All Bets Are Off 3: Tidus & Yuna Forever" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "FFX: All Bets Are Off 4: For the Love of Tidus" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "FFX: All Bets Are Off 4: For the Love of Tidus" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "All Bets Are Off V: The Conclusion" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "All Bets Are Off V: The Conclusion" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Spira's Dream" AND a.name = "M'jai" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Spira's Dream" AND a.name = "M'jai" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Spira's Sphere" AND a.name = "M'jai" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Spira's Sphere" AND a.name = "M'jai" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Spira's Revenge" AND a.name = "M'jai" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Spira's Revenge" AND a.name = "M'jai" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Mixed Up Dreams" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Mixed Up Dreams" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Mixed Up Dreams" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lost in Muggle London" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lost in Muggle London" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lost in Muggle London" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Perils of Too Much Calming Potion" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Perils of Too Much Calming Potion" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Perils of Too Much Calming Potion" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Perils of Too Much Calming Potion" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Perils of Too Much Calming Potion" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Arthur Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Alicia Spinnet"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "William 'Bill' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Edward 'Teddy' Lupin"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Perceval 'Percy' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Family" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Family" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Family" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Family" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Family" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Molly Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Family" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Family" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Sirius Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "No Rules" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "No Rules" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Muggle Relations" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Muggle Relations" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Muggle Relations" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Muggle Relations" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Family Time" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Family Time" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Family Time" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Charles 'Charlie' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lucky Kids" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lucky Kids" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lucky Kids" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Sirius Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lucky Kids" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Severus Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lucky Kids" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Luna Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lucky Kids" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dudley Dursley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Expanding Bed Charms" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Expanding Bed Charms" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Not a Phase" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Not a Phase" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Not a Phase" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Not a Phase" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OFC"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Awkward Lunch" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Awkward Lunch" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Scorpius Malfoy"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Awkward Lunch" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Severus Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Awkward Lunch" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "At the Hogsnock Baths" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "At the Hogsnock Baths" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "At the Hogsnock Baths" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "At the Hogsnock Baths" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Scorpius Malfoy"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Severus Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Sirius Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Luna Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Kreacher"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Sirius Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Severus Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Greek Holiday" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Greek Holiday" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Greek Holiday" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Greek Holiday" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OFC"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Severus Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Sirius Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Luna Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Roxanne Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Scorpius Malfoy"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Arthur Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best and the Brightest" AND a.name = "Tjs_whatnot" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best and the Brightest" AND a.name = "Tjs_whatnot" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dean Thomas"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Seamus Finnigan"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "From One Good Time To Another" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "From One Good Time To Another" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff,  `characters` c, `authors` a, `fandoms` f WHERE ff.name = "From One Good Time To Another" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Grey Haven" AND a.name = "QuidditchMom (eibbil_one)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Grey Haven" AND a.name = "QuidditchMom (eibbil_one)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Red Dress" AND a.name = "QuidditchMom (eibbil_one)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Red Dress" AND a.name = "QuidditchMom (eibbil_one)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Up Against the Wall" AND a.name = "QuidditchMom (eibbil_one)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Up Against the Wall" AND a.name = "QuidditchMom (eibbil_one)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Caught" AND a.name = "QuidditchMom (eibbil_one)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Caught" AND a.name = "QuidditchMom (eibbil_one)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION  /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Parkinson's Knickers (Or Lack Thereof)" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Parkinson's Knickers (Or Lack Thereof)" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION  /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Quid Pro Quo" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Quid Pro Quo" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION  /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Games Without Frontiers" AND a.name = "Kabal42" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Games Without Frontiers" AND a.name = "Kabal42" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "All's Fair" AND a.name = "Sarcastrow" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Viktor Krum" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "All's Fair" AND a.name = "Sarcastrow" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Seamus Finnigan" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "All's Fair" AND a.name = "Sarcastrow" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Katie Bell" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "All's Fair" AND a.name = "Sarcastrow" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "All's Fair" AND a.name = "Sarcastrow" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Brown" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Another Kind of Lesson" AND a.name = "Twisted_Mind" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Another Kind of Lesson" AND a.name = "Twisted_Mind" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Another Kind of Teacher" AND a.name = "Twisted_Mind" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cho Chang
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Another Kind of Teacher" AND a.name = "Twisted_Mind" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cho Chang" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy Parkinson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Another Kind of Teacher" AND a.name = "Twisted_Mind" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Another Kind of Punishment" AND a.name = "Twisted_Mind" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy Parkinson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Another Kind of Punishment" AND a.name = "Twisted_Mind" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Original Male Character(s)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Another Kind of Punishment" AND a.name = "Twisted_Mind" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OMC" AND f.name = "Harry Potter - Wizarding World"
UNION -- Terry Boot
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Another Kind of Punishment" AND a.name = "Twisted_Mind" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Terry Boot" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Walkies" AND a.name = "Lokifan" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Walkies" AND a.name = "Lokifan" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "You Did Say ""Anything""" AND a.name = "Lokifan" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "You Did Say ""Anything""" AND a.name = "Lokifan" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Millicent Bulstrode
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "You Did Say ""Anything""" AND a.name = "Lokifan" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Millicent Bulstrode" AND f.name = "Harry Potter - Wizarding World"
UNION -- Original Female Character(s)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "You Did Say ""Anything""" AND a.name = "Lokifan" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OFC" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Playing Games" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Playing Games" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Just Ask" AND a.name = "Previouslysane (altar_boy)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Just Ask" AND a.name = "Previouslysane (altar_boy)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Challenges of Remote Subbing" AND a.name = "AuntieL" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Challenges of Remote Subbing" AND a.name = "AuntieL" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Kingsley Shacklebolt
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Challenges of Remote Subbing" AND a.name = "AuntieL" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Kingsley Shacklebolt" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Pretty From Behind" AND a.name = "Clio_jlh" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Pretty From Behind" AND a.name = "Clio_jlh" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Rita Skeeter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gawain Robards
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gawain Robards" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Charlie Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Charlie Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Blaise Zabini
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Blaise Zabini" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy Parkinson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Millicent Bulstrode
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Millicent Bulstrode" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hannah Abbott
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hannah Abbott" AND f.name = "Harry Potter - Wizarding World"
UNION -- Romilda Vane
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Romilda Vane" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- George Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lee Jordan
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lee Jordan" AND f.name = "Harry Potter - Wizarding World"
UNION -- Oliver Wood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Oliver Wood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "That'll Show Them" AND a.name = "Woldy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginny Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy Parkinson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "That'll Show Them" AND a.name = "Woldy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "That'll Show Them" AND a.name = "Woldy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ron Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "That'll Show Them" AND a.name = "Woldy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "That'll Show Them" AND a.name = "Woldy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Normal" AND a.name = "RosaCalavera" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Normal" AND a.name = "RosaCalavera" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Metamorph Bet" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Nymphadora Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Metamorph Bet" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Shagging Spot" AND a.name = "Hollywoodland" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Frederick 'Fred' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- George Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Shagging Spot" AND a.name = "Hollywoodland" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lavender Brown
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Shagging Spot" AND a.name = "Hollywoodland" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Brown" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Shagging Spot" AND a.name = "Hollywoodland" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cormac McLaggen
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Shagging Spot" AND a.name = "Hollywoodland" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cormac McLaggen" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Encore" AND a.name = "Hollywoodland" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Angelina Johnson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Alicia Spinnet
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Encore" AND a.name = "Hollywoodland" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Alicia Spinnet" AND f.name = "Harry Potter - Wizarding World"
UNION -- George Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Encore" AND a.name = "Hollywoodland" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fred Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Encore" AND a.name = "Hollywoodland" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Frederick 'Fred' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lavender Brown
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Encore" AND a.name = "Hollywoodland" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Brown" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Encore" AND a.name = "Hollywoodland" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cormac McLaggen
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Encore" AND a.name = "Hollywoodland" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cormac McLaggen" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Minister's Affair" AND a.name = "Romaine" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Minister's Affair" AND a.name = "Romaine" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Favours & Benefits" AND a.name = "Lightofdaye" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Favours & Benefits" AND a.name = "Lightofdaye" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lavender Brown
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Favours & Benefits" AND a.name = "Lightofdaye" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Brown" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Favours & Benefits" AND a.name = "Lightofdaye" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "This Christmas" AND a.name = "Tryslora" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Brown" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "This Christmas" AND a.name = "Tryslora" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Stockings Were Hung by the Chimney With Care" AND a.name = "Star54kar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Stockings Were Hung by the Chimney With Care" AND a.name = "Star54kar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Stress Relief" AND a.name = "Megamatt09" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Stress Relief" AND a.name = "Megamatt09" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Very Happy Mother's Day" AND a.name = "Megamatt09" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Very Happy Mother's Day" AND a.name = "Megamatt09" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Property of Potter" AND a.name = "Megamatt09" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Property of Potter" AND a.name = "Megamatt09" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Property of Potter" AND a.name = "Megamatt09" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The One Blessing of a Curse" AND a.name = "Tryslora" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Brown" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "William 'Bill' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "MargaretSexyMum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "
Molly Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "MargaretSexyMum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "MargaretSexyMum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Apolline Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "MargaretSexyMum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "MargaretSexyMum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gabrielle Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "MargaretSexyMum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Rita Skeeter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "MargaretSexyMum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bliss" AND a.name = "MargaretSexyMum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Severus Snape" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bad Day (Or How to Get Hermione to Stop Worrying And Enjoy Sex While On The Clock)" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bad Day (Or How to Get Hermione to Stop Worrying And Enjoy Sex While On The Clock)" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "First Times" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Luna Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "First Times" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Luna Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "First Times" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Blaise Zabini
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Blaise Zabini" AND f.name = "Harry Potter - Wizarding World"
UNION -- Theodore Nott
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Theodore Nott" AND f.name = "Harry Potter - Wizarding World"
UNION -- Seamus Finnigan
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Seamus Finnigan" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy Parkinson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey Davis
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lavender Brown
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Eros & Psyche" AND a.name = "RZZMG" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Brown" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Birthday Wishes" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Birthday Wishes" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Birthday Wishes" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "I wasn't thinking about you, again." AND a.name = "Argenterie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "I wasn't thinking about you, again." AND a.name = "Argenterie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "I wasn't thinking about you, again." AND a.name = "Argenterie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Euphemism is a perfectly good word" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Euphemism is a perfectly good word" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Euphemism is a perfectly good word" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Seekers of Love" AND a.name = "Thatsarockfact55" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cho Chang
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Seekers of Love" AND a.name = "Thatsarockfact55" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cho Chang" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cedric Diggory
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Seekers of Love" AND a.name = "Thatsarockfact55" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cedric Diggory" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Seekers of Love" AND a.name = "Thatsarockfact55" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Seekers of Love" AND a.name = "Thatsarockfact55" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "I'm Sure!" AND a.name = "Lightofdaye" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Padma Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "I'm Sure!" AND a.name = "Lightofdaye" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Padma Patil" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fly Away" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fly Away" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Uninhibited: Nymphadora" AND a.name = "DepravedDevil" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Nymphadora Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Uninhibited: Nymphadora" AND a.name = "DepravedDevil" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dominating Daphne" AND a.name = "ThatsRealMagic" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dominating Daphne" AND a.name = "ThatsRealMagic" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Daphne Dominates" AND a.name = "ThatsRealMagic" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Daphne Dominates" AND a.name = "ThatsRealMagic" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Daytime Domination" AND a.name = "ThatsRealMagic" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Daytime Domination" AND a.name = "ThatsRealMagic" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry's Need" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry's Need" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry's Need" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Ginny's Need" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Ginny's Need" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bet" AND a.name = "Emmagrant01" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bet" AND a.name = "Emmagrant01" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bet" AND a.name = "Emmagrant01" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "William 'Bill' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sustenance." AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sustenance." AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Ginny's Appetite" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Ginny's Appetite" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Ginny's Appetite" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Ginny's Appetite" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dinner, Date...Draco?" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa Black Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dinner, Date...Draco?" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dinner, Date...Draco?" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "When the Magic Stops Working" AND a.name = "Tryslora" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "When the Magic Stops Working" AND a.name = "Tryslora" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "When the Magic Stops Working" AND a.name = "Tryslora" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "When the Magic Stops Working" AND a.name = "Tryslora" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "When the Magic Stops Working" AND a.name = "Tryslora" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Broom Cupboard Encounters" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Broom Cupboard Encounters" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Broom Cupboard Encounters" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Broom Cupboard Encounters" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Broom Cupboard Encounters" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Nymphadora Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Broom Cupboard Encounters" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Broom Cupboard Encounters" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and his luscious Butt" AND a.name = "WerewolfWarriro" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and his luscious Butt" AND a.name = "WerewolfWarriro" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy Parkinson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and his luscious Butt" AND a.name = "WerewolfWarriro" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and his luscious Butt" AND a.name = "WerewolfWarriro" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- James Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Minerva McGonagall
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Minerva McGonagall" AND f.name = "Harry Potter - Wizarding World"
UNION -- Filius Flitwick
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Filius Flitwick" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Severus Snape
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Severus Snape" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa Black Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lucius Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lucius Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ernie Macmillan
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ernie McMillan" AND f.name = "Harry Potter - Wizarding World"
UNION -- Augusta Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Augusta Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Madam Hooch
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Madam Hooch" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Percy Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Perceval 'Percy' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Poppy Pomfrey
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Poppy Pomfrey" AND f.name = "Harry Potter - Wizarding World"
UNION -- Molly Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Molly Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Arthur Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Arthur Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Remus Lupin
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Remus Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION -- Peter Pettigrew
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Peter Pettigrew" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lavender Brown
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Brown" AND f.name = "Harry Potter - Wizarding World"
UNION -- Madam Rosmerta
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Madam Rosmerta" AND f.name = "Harry Potter - Wizarding World"
UNION -- Moaning Myrtle
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Moaning Myrtle" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius Black
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Amelia Bones
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Renewal Program" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Amelia Bones" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Tit for Tat" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Tit for Tat" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Tit for Tat" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Integra Hellsing" AND f.name = "Hellsing"
UNION -- Alucard (Hellsing)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Alucard" AND f.name = "Hellsing"
UNION -- Walter C. Dornez
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Walter C. Dornez" AND f.name = "Hellsing"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Seras Victoria
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Seras Victoria" AND f.name = "Hellsing"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus Dumbledore
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Padma Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Padma Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Minerva McGonagall
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Minerva McGonagall" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey Davis
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION -- Blaise Zabini
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Blaise Zabini" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Vampire Legacy; the story" AND a.name = "Zephyr_Fauchelevent" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lucius Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lucius Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Rubeus Hagrid
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Rubeus Hagrid" AND f.name = "Harry Potter - Wizarding World"
UNION -- Griphook
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Griphook" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus Dumbledore
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Amelia Bones
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Amelia Bones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dobby
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dobby" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius Black
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Delores Umbridge
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Delores Umbridge" AND f.name = "Harry Potter - Wizarding World"
UNION -- Kingsley Shacklebolt
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Kingsley Shacklebolt" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hestia Jones
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hestia Jones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Andromeda Black Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Andromeda Black Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Minerva McGonagall
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Minerva McGonagall" AND f.name = "Harry Potter - Wizarding World"
UNION -- Severus Snape
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Severus Snape" AND f.name = "Harry Potter - Wizarding World"
UNION -- John Dawlish
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "John Dawlish" AND f.name = "Harry Potter - Wizarding World"
UNION -- Augusta Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Augusta Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cornelius Fudge
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cornelius Fudge" AND f.name = "Harry Potter - Wizarding World"
UNION -- Vernon Dursley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Vernon Dursley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Petunia Evans Dursley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Petunia Evans Dursley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dudley Dursley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Saving the Savior" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dudley Dursley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "No Thank You" AND a.name = "Sarah1281" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus Dumbledore
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "No Thank You" AND a.name = "Sarah1281" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "No Thank You" AND a.name = "Sarah1281" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Severus Snape
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "No Thank You" AND a.name = "Sarah1281" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Severus Snape" AND f.name = "Harry Potter - Wizarding World"
UNION -- Minerva McGonagall
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "No Thank You" AND a.name = "Sarah1281" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Minerva McGonagall" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "No Thank You" AND a.name = "Sarah1281" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lavender Brown
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "No Thank You" AND a.name = "Sarah1281" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Brown" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dudley Dursley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "No Thank You" AND a.name = "Sarah1281" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dudley Dursley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Petunia Evans Dursley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "No Thank You" AND a.name = "Sarah1281" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Petunia Evans Dursley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Vernon Dursley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "No Thank You" AND a.name = "Sarah1281" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Vernon Dursley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Rouse the Dead" AND a.name = "Torino10154" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Rouse the Dead" AND a.name = "Torino10154" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Poppy Pomfrey
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Poppy Pomfrey" AND f.name = "Harry Potter - Wizarding World"
UNION -- Molly Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Molly Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Rita Skeeter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Rita Skeeter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Andromeda Black Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Andromeda Black Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Kingsley Shacklebolt
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Kingsley Shacklebolt" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hestia Jones
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hestia Jones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Amelia Bones
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Amelia Bones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus Dumbledore
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Rubeus Hagrid
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Rubeus Hagrid" AND f.name = "Harry Potter - Wizarding World"
UNION -- Barnabus Cuffe
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Barnabus Cuffe" AND f.name = "Harry Potter - Wizarding World"
UNION -- Minerva McGonagall
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Minerva McGonagall" AND f.name = "Harry Potter - Wizarding World"
UNION -- Filius Flitwick
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Filius Flitwick" AND f.name = "Harry Potter - Wizarding World"
UNION -- Augusta Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Augusta Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius Black
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gawain Robards
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gawain Robards" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fred Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Frederick 'Fred' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Percy Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Perceval 'Percy' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pomona Sprout
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pomona Sprout" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sybill Trelawney
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sybill Trelawney" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cornelius Fudge
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cornelius Fudge" AND f.name = "Harry Potter - Wizarding World"
UNION -- George Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Oliver Wood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Oliver Wood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Marcus Flint
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Marcus Flint" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lee Jordan
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Healing" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lee Jordan" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Office Fun" AND a.name = "Ronslady23" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Office Fun" AND a.name = "Ronslady23" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Office Fun" AND a.name = "Ronslady23" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reward" AND a.name = "Zakhro" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reward" AND a.name = "Zakhro" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reward" AND a.name = "Zakhro" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Rose Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus Dumbledore
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Arthur Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Arthur Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Molly Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Molly Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cornelius Fudge
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cornelius Fudge" AND f.name = "Harry Potter - Wizarding World"
UNION -- Rufus Scrimgeour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Rufus Scrimgeour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius Black
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Remus Lupin
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Remus Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION -- Nymphadora Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Alastor “Mad-Eye” Moody
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Alastor 'Mad-Eye' Moody" AND f.name = "Harry Potter - Wizarding World"
UNION -- Kingsley Shacklebolt
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Kingsley Shacklebolt" AND f.name = "Harry Potter - Wizarding World"
UNION -- Minerva McGonagall
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Minerva McGonagall" AND f.name = "Harry Potter - Wizarding World"
UNION -- Poppy Pomfrey
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Poppy Pomfrey" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dobby
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dobby" AND f.name = "Harry Potter - Wizarding World"
UNION -- Kreacher (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Kreacher" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fred Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Frederick 'Fred' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- George Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginevra Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Angelina Johnson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Angelina Johnson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Padma Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Padma Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Seamus Finnigan
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Seamus Finnigan" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dean Thomas
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dean Thomas" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Vernon Dursley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Vernon Dursley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Petunia Evans Dursley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Petunia Evans Dursley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dudley Dursley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dudley Dursley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Arabella Figg
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Arabella Figg" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Before the Wedding" AND a.name = "Ufohnoparty (why_didnt_i_get_any_soup)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Before the Wedding" AND a.name = "Ufohnoparty (why_didnt_i_get_any_soup)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Before the Wedding" AND a.name = "Ufohnoparty (why_didnt_i_get_any_soup)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Before the Wedding" AND a.name = "Ufohnoparty (why_didnt_i_get_any_soup)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Before the Wedding" AND a.name = "Ufohnoparty (why_didnt_i_get_any_soup)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Molly Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Before the Wedding" AND a.name = "Ufohnoparty (why_didnt_i_get_any_soup)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Frederick 'Fred' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Before the Wedding" AND a.name = "Ufohnoparty (why_didnt_i_get_any_soup)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Before the Wedding" AND a.name = "Ufohnoparty (why_didnt_i_get_any_soup)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "William 'Bill' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Before the Wedding" AND a.name = "Ufohnoparty (why_didnt_i_get_any_soup)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Roman Holiday" AND a.name = "Charleybradburies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Roman Holiday" AND a.name = "Charleybradburies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Filius Flitwick" AND f.name = "Harry Potter - Wizarding World"
UNION -- 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Minerva McGonagall" AND f.name = "Harry Potter - Wizarding World"
UNION -- 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dobby (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dobby" AND f.name = "Harry Potter - Wizarding World"
UNION -- Winky (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Winky" AND f.name = "Harry Potter - Wizarding World"
UNION -- Severus Snape
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Severus Snape" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cedric Diggory
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cedric Diggory" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cho Chang
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cho Chang" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fred Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Frederick 'Fred' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- George Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Rita Skeeter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Rita Skeeter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ludo Bagman
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ludo Bagman" AND f.name = "Harry Potter - Wizarding World"
UNION -- Garrick Ollivander
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Garrick Ollivander" AND f.name = "Harry Potter - Wizarding World"
UNION -- Viktor Krum
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Viktor Krum" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius Black
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Poppy Pomfrey
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Poppy Pomfrey" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus Dumbledore
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Percy Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Perceval 'Percy' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Bartemius Crouch Sr.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Bartemius Crouch Sr" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lee Jordan
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lee Jordan" AND f.name = "Harry Potter - Wizarding World"
UNION -- Barnabus Cuffe
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Barnabus Cuffe" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cornelius Fudge
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Goblin Warfare" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cornelius Fudge" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Veela Sisters" AND a.name = "Dirtyuncle" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Veela Sisters" AND a.name = "Dirtyuncle" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gabrielle Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Veela Sisters" AND a.name = "Dirtyuncle" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gabrielle Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Christmas Holiday" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Christmas Holiday" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Quiet" AND a.name = "Lightofdaye" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Quiet" AND a.name = "Lightofdaye" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Falling Through Clouds" AND a.name = "Holyfant" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Falling Through Clouds" AND a.name = "Holyfant" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Falling Through Clouds" AND a.name = "Holyfant" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Private Party in the Conservatory" AND a.name = "Iwant2baweasley (becboobear)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Private Party in the Conservatory" AND a.name = "Iwant2baweasley (becboobear)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Private Party in the Conservatory" AND a.name = "Iwant2baweasley (becboobear)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Private Party in the Conservatory" AND a.name = "Iwant2baweasley (becboobear)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Christmas Cheer" AND a.name = "Smutty_claus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Christmas Cheer" AND a.name = "Smutty_claus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Christmas Cheer" AND a.name = "Smutty_claus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Slytherin Games (Remix of Snakes)" AND a.name = "Icicle" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Slytherin Games (Remix of Snakes)" AND a.name = "Icicle" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Anonymous Signs" AND a.name = "Abigail89" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "my heart is holding on to you" AND a.name = "Aceofdiamonds" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Katie Bell" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cho Chang
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "my heart is holding on to you" AND a.name = "Aceofdiamonds" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cho Chang" AND f.name = "Harry Potter - Wizarding World"
UNION -- Original Female Character(s)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "my heart is holding on to you" AND a.name = "Aceofdiamonds" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OFC" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Candy Cane Obsessed Freak" AND a.name = "Luvscharlie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Candy Cane Obsessed Freak" AND a.name = "Luvscharlie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Female Transfiguration 101" AND a.name = "Lamp23" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Female Transfiguration 101" AND a.name = "Lamp23" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Female Transfiguration 101" AND a.name = "Lamp23" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Female Transfiguration 101" AND a.name = "Lamp23" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Female Transfiguration 101" AND a.name = "Lamp23" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bedtime" AND a.name = "Holyfant" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bedtime" AND a.name = "Holyfant" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bedtime" AND a.name = "Holyfant" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Tea with the Headmistress" AND a.name = "Fluffybookfaerie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Tea with the Headmistress" AND a.name = "Fluffybookfaerie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Tea with the Headmistress" AND a.name = "Fluffybookfaerie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Minerva McGonagall
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Tea with the Headmistress" AND a.name = "Fluffybookfaerie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Minerva McGonagall" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fire" AND a.name = "Zoelily" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Brown" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fire" AND a.name = "Zoelily" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Accio Ballgag!" AND a.name = "Harby" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Accio Ballgag!" AND a.name = "Harby" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Accio Ballgag!" AND a.name = "Harby" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Original Female Character(s)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Accio Ballgag!" AND a.name = "Harby" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OFC" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Christmas Bells are Ringing" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Katie Bell" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Christmas Bells are Ringing" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "For This One Day" AND a.name = "Flipflop_diva" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "For This One Day" AND a.name = "Flipflop_diva" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff, characters c, authors a, fandoms f WHERE ff.name = "A Birthday Gift" AND a.name = "Zakhro" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM fanfictions ff, characters c, authors a, fandoms f WHERE ff.name = "A Birthday Gift" AND a.name = "Zakhro" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM fanfictions ff, characters c, authors a, fandoms f WHERE ff.name = "A Birthday Gift" AND a.name = "Zakhro" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Victoire Weasley
SELECT ff.id, c.id FROM fanfictions ff, characters c, authors a, fandoms f WHERE ff.name = "A Birthday Gift" AND a.name = "Zakhro" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Victoire Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Night in the Lioness' Den" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lavender Brown
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Night in the Lioness' Den" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Brown" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Night in the Lioness' Den" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Night in the Lioness' Den" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Trouble, with a Capital T" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Trouble, with a Capital T" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius Black
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Trouble, with a Capital T" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Teddy Lupin
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Trouble, with a Capital T" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Edward 'Teddy' Lupin" AND f.name = "Harry Potter - Wizarding World";

/*
 * Fanfictions tags
 * NOTE Tags in fanfictions
 */
DELETE FROM `fanfictions_tags`;
INSERT INTO `fanfictions_tags`(`fanfiction_id`, `tag_id`) 
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dancing Dragonflies" AND t.name = "Mecha" AND a.name = "Jayf"
UNION 
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dancing Dragonflies" AND t.name = "Dragons" AND a.name = "Jayf"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Necessary" AND t.name = "Mecha" AND a.name = "Ariaojou"
UNION 
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Necessary" AND t.name = "Dragons" AND a.name = "Ariaojou"
UNION 
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Necessary" AND t.name = "Romance" AND a.name = "Ariaojou"
UNION 
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Necessary" AND t.name = "Friendship" AND a.name = "Ariaojou"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Life in the New World" AND t.name = "Mecha" AND a.name = "Jm1681"
UNION 
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Life in the New World" AND t.name = "Dragons" AND a.name = "Jm1681"
UNION 
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Life in the New World" AND t.name = "Post-canon" AND a.name = "Jm1681"
UNION 
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Life in the New World" AND t.name = "Friendship" AND a.name = "Jm1681"
UNION 
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Life in the New World" AND t.name = "Family" AND a.name = "Jm1681"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "We'll not die!" AND t.name = "Mecha" AND a.name = "Cj Spencer"
UNION 
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "We'll not die!" AND t.name = "Dragons" AND a.name = "Cj Spencer"
UNION 
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "We'll not die!" AND t.name = "Romance" AND a.name = "Cj Spencer"
UNION 
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "We'll not die!" AND t.name = "Hurt | Comfort" AND a.name = "Cj Spencer"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "We'll not die!" AND t.name = "One-shot" AND a.name = "Cj Spencer"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cross Ange: The Knight of Hilda" AND t.name = "Mecha" AND a.name = "Eric Michael Kline"
UNION 
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cross Ange: The Knight of Hilda" AND t.name = "Dragons" AND a.name = "Eric Michael Kline"
UNION 
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cross Ange: The Knight of Hilda" AND t.name = "Sexual content" AND a.name = "Eric Michael Kline"
UNION 
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cross Ange: The Knight of Hilda" AND t.name = "AU" AND a.name = "Eric Michael Kline"
UNION 
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cross Ange: The Knight of Hilda" AND t.name = "Adventure" AND a.name = "Eric Michael Kline"
UNION 
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cross Ange: The Knight of Hilda" AND t.name = "Drama" AND a.name = "Eric Michael Kline"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Comeback Kid" AND t.name = "Post-canon" AND a.name = "Somebody's Nightmare"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Comeback Kid" AND t.name = "Hurt | Comfort" AND a.name = "Somebody's Nightmare"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Comeback Kid" AND t.name = "Romance" AND a.name = "Somebody's Nightmare"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Lost Love Letters of Cloud Strife" AND t.name = "Romance" AND a.name = "Somebody's Nightmare"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Lost Love Letters of Cloud Strife" AND t.name = "Hurt | Comfort" AND a.name = "Somebody's Nightmare"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Lost Love Letters of Cloud Strife" AND t.name = "One-shot" AND a.name = "Somebody's Nightmare"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Waiting" AND t.name = "Friendship" AND a.name = "Me413"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Waiting" AND t.name = "Humor" AND a.name = "Me413"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Waiting" AND t.name = "Post-canon" AND a.name = "Me413"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Waiting" AND t.name = "One-shot" AND a.name = "Me413"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Innocent Feelings" AND t.name = "Romance" AND a.name = "Senigata"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Innocent Feelings" AND t.name = "Friendship" AND a.name = "Senigata"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Innocent Feelings" AND t.name = "Pre-canon" AND a.name = "Senigata"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Innocent Feelings" AND t.name = "One-shot" AND a.name = "Senigata"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Journey of a Barmaid" AND t.name = "Angst" AND a.name = "Senigata"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Emerald Dream" AND t.name = "Angst" AND a.name = "Senigata"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Emerald Dream" AND t.name = "Friendship" AND a.name = "Senigata"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Golden Respite" AND t.name = "Friendship" AND a.name = "Senigata"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lost Heart" AND t.name = "Drama" AND a.name = "Senigata"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lost Heart" AND t.name = "Angst" AND a.name = "Senigata"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fractured Mind" AND t.name = "Drama" AND a.name = "Senigata"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fractured Mind" AND t.name = "Angst" AND a.name = "Senigata"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Starlight" AND t.name = "Romance" AND a.name = "Senigata"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Post Crisis" AND t.name = "Romance" AND a.name = "Senigata"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Post Crisis" AND t.name = "Family" AND a.name = "Senigata"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Post Crisis" AND t.name = "Post-canon" AND a.name = "Senigata"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Gunslinger" AND t.name = "Adventure" AND a.name = "Nataku's Wrath"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Final Fantasy: Guardians" AND t.name = "Friendship" AND a.name = "VeryBerry96"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Final Fantasy: Guardians" AND t.name = "Adventure" AND a.name = "VeryBerry96"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Twist in Fate" AND t.name = "Romance" AND a.name = "IAltoSax"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Twist in Fate" AND t.name = "Hurt | Comfort" AND a.name = "IAltoSax"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Final Fantasy X: All Bets Are Off" AND t.name = "Romance" AND a.name = "Selphie800"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Final Fantasy X: All Bets Are Off" AND t.name = "Humor" AND a.name = "Selphie800"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Final Fantasy X: All Bets Are Off" AND t.name = "AU" AND a.name = "Selphie800"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "All Bets Are Off: The Sequel" AND t.name = "Romance" AND a.name = "Selphie800"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "All Bets Are Off: The Sequel" AND t.name = "Drama" AND a.name = "Selphie800"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "All Bets Are Off: The Sequel" AND t.name = "AU" AND a.name = "Selphie800"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "FFX: All Bets Are Off 3: Tidus & Yuna Forever" AND t.name = "Romance" AND a.name = "Selphie800"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "FFX: All Bets Are Off 3: Tidus & Yuna Forever" AND t.name = "Drama" AND a.name = "Selphie800"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "FFX: All Bets Are Off 3: Tidus & Yuna Forever" AND t.name = "AU" AND a.name = "Selphie800"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "FFX: All Bets Are Off 4: For the Love of Tidus" AND t.name = "Romance" AND a.name = "Selphie800"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "FFX: All Bets Are Off 4: For the Love of Tidus" AND t.name = "AU" AND a.name = "Selphie800"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "All Bets Are Off V: The Conclusion" AND t.name = "Romance" AND a.name = "Selphie800"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "All Bets Are Off V: The Conclusion" AND t.name = "AU" AND a.name = "Selphie800"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Neo-Genesis" AND t.name = "Adventure" AND a.name = "M'jai"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Spira's Dream" AND t.name = "Adventure" AND a.name = "M'jai"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Spira's Dream" AND t.name = "Post-canon" AND a.name = "M'jai"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Spira's Sphere" AND t.name = "Adventure" AND a.name = "M'jai"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Spira's Sphere" AND t.name = "Post-canon" AND a.name = "M'jai"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Spira's Revenge" AND t.name = "Adventure" AND a.name = "M'jai"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Spira's Revenge" AND t.name = "Post-canon" AND a.name = "M'jai"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The More the Merrier" AND t.name = "Sexual content" AND a.name = "Allyrion"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The More the Merrier" AND t.name = "Multi" AND a.name = "Allyrion"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The More the Merrier" AND t.name = "Lesbian | Yuri" AND a.name = "Allyrion"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mixed Up Dreams" AND t.name = "Family" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mixed Up Dreams" AND t.name = "One-shot" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lost in Muggle London" AND t.name = "Angst" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lost in Muggle London" AND t.name = "Hurt | Comfort" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lost in Muggle London" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lost in Muggle London" AND t.name = "One-shot" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Perils of Too Much Calming Potion" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Perils of Too Much Calming Potion" AND t.name = "One-shot" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Second String" AND t.name = "Family" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Second String" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Second String" AND t.name = "One-shot" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Family" AND t.name = "Family" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Family" AND t.name = "One-shot" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "No Rules" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "No Rules" AND t.name = "Angst" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "No Rules" AND t.name = "One-shot" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Muggle Relations" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Muggle Relations" AND t.name = "One-shot" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Family Time" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Family Time" AND t.name = "Family" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Family Time" AND t.name = "One-shot" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lucky Kids" AND t.name = "Family" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lucky Kids" AND t.name = "One-shot" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Expanding Bed Charms" AND t.name = "Hurt | Comfort" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Expanding Bed Charms" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Expanding Bed Charms" AND t.name = "One-shot" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Not a Phase" AND t.name = "Friendship" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Not a Phase" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Not a Phase" AND t.name = "One-shot" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Awkward Lunch" AND t.name = "Family" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Awkward Lunch" AND t.name = "One-shot" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "At the Hogsnock Baths" AND t.name = "Friendship" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "At the Hogsnock Baths" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "At the Hogsnock Baths" AND t.name = "One-shot" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Perfect Gingerbread Men" AND t.name = "Family" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Perfect Gingerbread Men" AND t.name = "One-shot" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Outsider" AND t.name = "Angst" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Outsider" AND t.name = "Hurt | Comfort" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Outsider" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Greek Holiday" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Greek Holiday" AND t.name = "One-shot" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND t.name = "Family" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND t.name = "One-shot" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Best and the Brightest" AND t.name = "Sexual content" AND a.name = "Tjs_whatnot"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Best and the Brightest" AND t.name = "One-shot" AND a.name = "Tjs_whatnot"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fancy That" AND t.name = "Sexual content" AND a.name = "Scarletladyy"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fancy That" AND t.name = "Post-canon" AND a.name = "Scarletladyy"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fancy That" AND t.name = "One-shot" AND a.name = "Scarletladyy"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "From One Good Time To Another" AND t.name = "Sexual content" AND a.name = "Scarletladyy"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "From One Good Time To Another" AND t.name = "One-shot" AND a.name = "Scarletladyy"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Grey Haven" AND t.name = "AU" AND a.name = "QuidditchMom (eibbil_one)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Grey Haven" AND t.name = "Sexual content" AND a.name = "QuidditchMom (eibbil_one)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Grey Haven" AND t.name = "One-shot" AND a.name = "QuidditchMom (eibbil_one)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Red Dress" AND t.name = "AU" AND a.name = "QuidditchMom (eibbil_one)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Red Dress" AND t.name = "Sexual content" AND a.name = "QuidditchMom (eibbil_one)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Red Dress" AND t.name = "One-shot" AND a.name = "QuidditchMom (eibbil_one)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Up Against the Wall" AND t.name = "AU" AND a.name = "QuidditchMom (eibbil_one)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Up Against the Wall" AND t.name = "Sexual content" AND a.name = "QuidditchMom (eibbil_one)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Up Against the Wall" AND t.name = "One-shot" AND a.name = ""
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Caught" AND t.name = "AU" AND a.name = "QuidditchMom (eibbil_one)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Caught" AND t.name = "Sexual content" AND a.name = "QuidditchMom (eibbil_one)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter - Wizarding World" AND t.name = "One-shot" AND a.name = "QuidditchMom (eibbil_one)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Parkinson's Knickers (Or Lack Thereof)" AND t.name = "AU" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Parkinson's Knickers (Or Lack Thereof)" AND t.name = "Sexual content" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Parkinson's Knickers (Or Lack Thereof)" AND t.name = "One-shot" AND a.name = ""
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Quid Pro Quo" AND t.name = "Sexual content" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Quid Pro Quo" AND t.name = "One-shot" AND a.name = ""
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Games Without Frontiers" AND t.name = "Sexual content" AND a.name = "Kabal42"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Games Without Frontiers" AND t.name = "One-shot" AND a.name = "Kabal42"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "All's Fair" AND t.name = "Sexual content" AND a.name = "Sarcastrow"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "All's Fair" AND t.name = "Post-canon" AND a.name = "Sarcastrow"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Another Kind of Lesson" AND t.name = "Sexual content" AND a.name = "Twisted_Mind"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Another Kind of Lesson" AND t.name = "Lesbian | Yuri" AND a.name = "Twisted_Mind"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Another Kind of Lesson" AND t.name = "One-shot" AND a.name = "Twisted_Mind"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Another Kind of Teacher" AND t.name = "Angst" AND a.name = "Twisted_Mind"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Another Kind of Teacher" AND t.name = "Drama" AND a.name = "Twisted_Mind"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Another Kind of Teacher" AND t.name = "Sexual content" AND a.name = "Twisted_Mind"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Another Kind of Teacher" AND t.name = "Lesbian | Yuri" AND a.name = "Twisted_Mind"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Another Kind of Teacher" AND t.name = "One-shot" AND a.name = "Twisted_Mind"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Another Kind of Punishment" AND t.name = "Angst" AND a.name = "Twisted_Mind"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Another Kind of Punishment" AND t.name = "Drama" AND a.name = "Twisted_Mind"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Another Kind of Punishment" AND t.name = "Sexual content" AND a.name = "Twisted_Mind"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Another Kind of Punishment" AND t.name = "Lesbian | Yuri" AND a.name = "Twisted_Mind"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Another Kind of Punishment" AND t.name = "One-shot" AND a.name = "Twisted_Mind"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Walkies" AND t.name = "Sexual content" AND a.name = "Lokifan"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Walkies" AND t.name = "Lesbian | Yuri" AND a.name = "Lokifan"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Walkies" AND t.name = "One-shot" AND a.name = "Lokifan"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "You Did Say ""Anything""" AND t.name = "Sexual content" AND a.name = "Lokifan"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "You Did Say ""Anything""" AND t.name = "Lesbian | Yuri" AND a.name = "Lokifan"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "You Did Say ""Anything" AND t.name = "One-shot" AND a.name = "Lokifan"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Playing Games" AND t.name = "Sexual content" AND a.name = "Inell"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Playing Games" AND t.name = "Lesbian | Yuri" AND a.name = "Inell"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Playing Games" AND t.name = "One-shot" AND a.name = "Inell"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Ask" AND t.name = "Pwp" AND a.name = "Previouslysane (altar_boy)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Ask" AND t.name = "Multi" AND a.name = "Previouslysane (altar_boy)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Ask" AND t.name = "One-shot" AND a.name = "Previouslysane (altar_boy)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Challenges of Remote Subbing" AND t.name = "AU" AND a.name = "AuntieL"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Challenges of Remote Subbing" AND t.name = "Sexual content" AND a.name = "AuntieL"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Challenges of Remote Subbing" AND t.name = "One-shot" AND a.name = "AuntieL"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Pretty From Behind" AND t.name = "AU" AND a.name = "Clio_jlh"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Pretty From Behind" AND t.name = "Romance" AND a.name = "Clio_jlh"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Pretty From Behind" AND t.name = "Post-canon" AND a.name = "Clio_jlh"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Pretty From Behind" AND t.name = "Humor" AND a.name = "Clio_jlh"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Pretty From Behind" AND t.name = "Pwp" AND a.name = "Clio_jlh"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Pretty From Behind" AND t.name = "One-shot" AND a.name = "Clio_jlh"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Bliss" AND t.name = "Sexual content" AND a.name = "Inell"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Bliss" AND t.name = "One-shot" AND a.name = "Inell"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "That'll Show Them" AND t.name = "Sexual content" AND a.name = "Woldy"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "That'll Show Them" AND t.name = "Lesbian | Yuri" AND a.name = "Woldy"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "That'll Show Them" AND t.name = "One-shot" AND a.name = "Woldy"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Normal" AND t.name = "AU" AND a.name = "RosaCalavera"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Normal" AND t.name = "Sexual content" AND a.name = "RosaCalavera"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Normal" AND t.name = "One-shot" AND a.name = "RosaCalavera"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Horny at Hogwarts" AND t.name = "Sexual content" AND a.name = "Jumper712"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Clueless" AND t.name = "Romance" AND a.name = "Pottermum"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Metamorph Bet" AND t.name = "Sexual content" AND a.name = "MayorHaggar"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Metamorph Bet" AND t.name = "One-shot" AND a.name = "MayorHaggar"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Shagging Spot" AND t.name = "Pwp" AND a.name = "Hollywoodland"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Shagging Spot" AND t.name = "Sexual content" AND a.name = "Hollywoodland"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Shagging Spot" AND t.name = "Lesbian | Yuri" AND a.name = "Hollywoodland"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Shagging Spot" AND t.name = "Multi" AND a.name = "Hollywoodland"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Shagging Spot" AND t.name = "One-shot" AND a.name = "Hollywoodland"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Encore" AND t.name = "Pwp" AND a.name = "Hollywoodland"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Encore" AND t.name = "Sexual content" AND a.name = "Hollywoodland"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Encore" AND t.name = "Lesbian | Yuri" AND a.name = "Hollywoodland"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Encore" AND t.name = "Multi" AND a.name = "Hollywoodland"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Encore" AND t.name = "One-shot" AND a.name = "Hollywoodland"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Minister's Affair" AND t.name = "Sexual content" AND a.name = "Romaine"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Minister's Affair" AND t.name = "Romance" AND a.name = "Romaine"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Minister's Affair" AND t.name = "One-shot" AND a.name = "Romaine"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Favours & Benefits" AND t.name = "Sexual content" AND a.name = "Lightofdaye"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Favours & Benefits" AND t.name = "Romance" AND a.name = "Lightofdaye"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Favours & Benefits" AND t.name = "One-shot" AND a.name = "Lightofdaye"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "This Christmas" AND t.name = "Sexual content" AND a.name = "Tryslora"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "This Christmas" AND t.name = "Romance" AND a.name = "Tryslora"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "This Christmas" AND t.name = "One-shot" AND a.name = "Tryslora"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Stockings Were Hung by the Chimney With Care" AND t.name = "Sexual content" AND a.name = "Star54kar"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Stockings Were Hung by the Chimney With Care" AND t.name = "Romance" AND a.name = "Star54kar"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Stockings Were Hung by the Chimney With Care" AND t.name = "One-shot" AND a.name = "Star54kar"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Stockings Were Hung by the Chimney With Care" AND t.name = "Pwp" AND a.name = "Star54kar"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Stress Relief" AND t.name = "One-shot" AND a.name = "Megamatt09"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Stress Relief" AND t.name = "Sexual content" AND a.name = "Megamatt09"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Very Happy Mother's Day" AND t.name = "Sexual content" AND a.name = "Megamatt09"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Very Happy Mother's Day" AND t.name = "One-shot" AND a.name = "Megamatt09"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Very Happy Mother's Day" AND t.name = "AU" AND a.name = "Megamatt09"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Property of Potter" AND t.name = "Sexual content" AND a.name = "Megamatt09"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Property of Potter" AND t.name = "Harem" AND a.name = "Megamatt09"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The One Blessing of a Curse" AND t.name = "Sexual content" AND a.name = "Tryslora"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The One Blessing of a Curse" AND t.name = "One-shot" AND a.name = "Tryslora"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Stress Relief" AND t.name = "Sexual content" AND a.name = "Inell"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Stress Relief" AND t.name = "One-shot" AND a.name = "Inell"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Stress Relief" AND t.name = "Multi" AND a.name = "Inell"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Weasley Witches Collective" AND t.name = "Sexual content" AND a.name = "MargaretSexyMum"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Weasley Witches Collective" AND t.name = "One-shot" AND a.name = "MargaretSexyMum"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Weasley Witches Collective" AND t.name = "Lesbian | Yuri" AND a.name = "MargaretSexyMum"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Bad Day (Or How to Get Hermione to Stop Worrying And Enjoy Sex While On The Clock)" AND t.name = "Sexual content" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Bad Day (Or How to Get Hermione to Stop Worrying And Enjoy Sex While On The Clock)" AND t.name = "One-shot" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Bad Day (Or How to Get Hermione to Stop Worrying And Enjoy Sex While On The Clock)" AND t.name = "AU" AND a.name = ""
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "First Times" AND t.name = "One-shot" AND a.name = "Pottermum"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Eros & Psyche" AND t.name = "AU" AND a.name = "RZZMG"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Eros & Psyche" AND t.name = "Sexual content" AND a.name = "RZZMG"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Eros & Psyche" AND t.name = "Angst" AND a.name = "RZZMG"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Eros & Psyche" AND t.name = "Drama" AND a.name = "RZZMG"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Eros & Psyche" AND t.name = "Romance" AND a.name = "RZZMG"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Birthday Wishes" AND t.name = "One-shot" AND a.name = "Pottermum"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Birthday Wishes" AND t.name = "Sexual content" AND a.name = "Pottermum"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Birthday Wishes" AND t.name = "Multi" AND a.name = "Pottermum"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I wasn't thinking about you, again." AND t.name = "Angst" AND a.name = "Argenterie"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I wasn't thinking about you, again." AND t.name = "Sexual content" AND a.name = "Argenterie"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I wasn't thinking about you, again." AND t.name = "Multi" AND a.name = "Argenterie"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Euphemism is a perfectly good word" AND t.name = "One-shot" AND a.name = "Pottermum"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "That Need" AND t.name = "Sexual content" AND a.name = "HPTrio"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "That Need" AND t.name = "Multi" AND a.name = "HPTrio"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Seekers of Love" AND t.name = "AU" AND a.name = "Thatsarockfact55"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Seekers of Love" AND t.name = "Multi" AND a.name = "Thatsarockfact55"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Seekers of Love" AND t.name = "Angst" AND a.name = "Thatsarockfact55"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Seekers of Love" AND t.name = "Fluff" AND a.name = "Thatsarockfact55"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I'm Sure!" AND t.name = "Sexual conten0t" AND a.name = "Lightofdaye"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I'm Sure!" AND t.name = "Pwp" AND a.name = "Lightofdaye"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I'm Sure!" AND t.name = "One-shot" AND a.name = "Lightofdaye"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fly Away" AND t.name = "AU" AND a.name = "Likebunnies"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fly Away" AND t.name = "Romance" AND a.name = "Likebunnies"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fly Away" AND t.name = "Sexual content" AND a.name = "Likebunnies"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fly Away" AND t.name = "One-shot" AND a.name = "Likebunnies"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Uninhibited: Nymphadora" AND t.name = "Sexual content" AND a.name = "DepravedDevil"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Uninhibited: Nymphadora" AND t.name = "Pwp" AND a.name = "DepravedDevil"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Uninhibited: Nymphadora" AND t.name = "One-shot" AND a.name = "DepravedDevil"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dominating Daphne" AND t.name = "Sexual content" AND a.name = "ThatsRealMagic"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dominating Daphne" AND t.name = "One-shot" AND a.name = "ThatsRealMagic"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Daphne Dominates" AND t.name = "Sexual content" AND a.name = "ThatsRealMagic"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Daphne Dominates" AND t.name = "One-shot" AND a.name = "ThatsRealMagic"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Daytime Domination" AND t.name = "Sexual content" AND a.name = "ThatsRealMagic"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Daytime Domination" AND t.name = "One-shot" AND a.name = "ThatsRealMagic"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry's Need" AND t.name = "Sexual content" AND a.name = "Pottermum"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry's Need" AND t.name = "One-shot" AND a.name = "Pottermum"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ginny's Need" AND t.name = "Sexual content" AND a.name = "Pottermum"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ginny's Need" AND t.name = "One-shot" AND a.name = "Pottermum"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Bet" AND t.name = "Sexual content" AND a.name = "Emmagrant01"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Bet" AND t.name = "One-shot" AND a.name = "Emmagrant01"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Bet" AND t.name = "Multi" AND a.name = "Emmagrant01"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sustenance." AND t.name = "Romance" AND a.name = "Pottermum"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sustenance." AND t.name = "Sexual content" AND a.name = "Pottermum"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ginny's Appetite" AND t.name = "One-shot" AND a.name = "Pottermum"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dinner, Date...Draco?" AND t.name = "Sexual content" AND a.name = "MayorHaggar"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dinner, Date...Draco?" AND t.name = "One-shot" AND a.name = "MayorHaggar"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "When the Magic Stops Working" AND t.name = "Sexual content" AND a.name = "Tryslora"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "When the Magic Stops Working" AND t.name = "Multi" AND a.name = "Tryslora"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "When the Magic Stops Working" AND t.name = "Friendship" AND a.name = "Tryslora"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Broom Cupboard Encounters" AND t.name = "Sexual content" AND a.name = ""
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and his luscious Butt" AND t.name = "Sexual content" AND a.name = "WerewolfWarriro"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and his luscious Butt" AND t.name = "Femdom" AND a.name = "WerewolfWarriro"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Tit for Tat" AND t.name = "Sexual content" AND a.name = "Inell"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Tit for Tat" AND t.name = "One-shot" AND a.name = "Inell"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Tit for Tat" AND t.name = "Romance" AND a.name = "Inell"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Tit for Tat" AND t.name = "Multi" AND a.name = "Inell"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Vampire Legacy; the story" AND t.name = "Vampires" AND a.name = "Zephyr_Fauchelevent"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Saving the Savior" AND t.name = "Dark" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Last Time" AND t.name = "Sexual content" AND a.name = "TableForThree_Archivist"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Last Time" AND t.name = "Multi" AND a.name = "TableForThree_Archivist"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Last Time" AND t.name = "One-shot" AND a.name = "TableForThree_Archivist"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "No Thank You" AND t.name = "AU" AND a.name = "Sarah1281"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Rouse the Dead" AND t.name = "One-shot" AND a.name = "Torino10154"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Rouse the Dead" AND t.name = "Sexual content" AND a.name = "Torino10154"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Rouse the Dead" AND t.name = "Femdom" AND a.name = "Torino10154"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Healing" AND t.name = "Evil" AND a.name = "Leggo My Lego Harry Potter (Runic_Purple_Panda)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Office Fun" AND t.name = "Sexual content" AND a.name = "Ronslady23"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Office Fun" AND t.name = "Multi" AND a.name = "Ronslady23"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Reward" AND t.name = "Sexual content" AND a.name = "Zakhro"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Reward" AND t.name = "Lesbian | Yuri" AND a.name = "Zakhro"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Reward" AND t.name = "One-shot" AND a.name = "Zakhro"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = """Harry Potter and the Unbreakable Bond""" AND t.name = "AU" AND a.name = "Leviathan0999"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I'm Worried About Harry" AND t.name = "Sexual content" AND a.name = "Heyitsamorette (AmoretteHD)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I'm Worried About Harry" AND t.name = "Multi" AND a.name = "Heyitsamorette (AmoretteHD)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I'm Worried About Harry" AND t.name = "One-shot" AND a.name = "Heyitsamorette (AmoretteHD)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Before the Wedding" AND t.name = "Sexual content" AND a.name = "Ufohnoparty (why_didnt_i_get_any_soup)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Before the Wedding" AND t.name = "Multi" AND a.name = "Ufohnoparty (why_didnt_i_get_any_soup)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Before the Wedding" AND t.name = "One-shot" AND a.name = "Ufohnoparty (why_didnt_i_get_any_soup)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Roman Holiday" AND t.name = "Sexual content" AND a.name = "Charleybradburies"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Roman Holiday" AND t.name = "Lesbian | Yuri" AND a.name = "Charleybradburies"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Roman Holiday" AND t.name = "AU" AND a.name = "Charleybradburies"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Roman Holiday" AND t.name = "One-shot" AND a.name = "Charleybradburies"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Veela Sisters" AND t.name = "Multi" AND a.name = "Dirtyuncle"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Veela Sisters" AND t.name = "Lesbian | Yuri" AND a.name = "Dirtyuncle"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Veela Sisters" AND t.name = "Pwp" AND a.name = "Dirtyuncle"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Veela Sisters" AND t.name = "Sexual content" AND a.name = "Dirtyuncle"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Christmas Holiday" AND t.name = "Sexual content" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Christmas Holiday" AND t.name = "Post-canon" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Christmas Holiday" AND t.name = "Fluff" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Christmas Holiday" AND t.name = "One-shot" AND a.name = ""
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Quiet" AND t.name = "Sexual content" AND a.name = "Lightofdaye"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Quiet" AND t.name = "Pwp" AND a.name = "Lightofdaye"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Quiet" AND t.name = "One-shot" AND a.name = "Lightofdaye"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Falling Through Clouds" AND t.name = "Sexual content" AND a.name = "Holyfant"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Falling Through Clouds" AND t.name = "Multi" AND a.name = "Holyfant"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Falling Through Clouds" AND t.name = "One-shot" AND a.name = "Holyfant"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Private Party in the Conservatory" AND t.name = "Sexual content" AND a.name = "Iwant2baweasley (becboobear)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Private Party in the Conservatory" AND t.name = "Multi" AND a.name = "Iwant2baweasley (becboobear)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Private Party in the Conservatory" AND t.name = "One-shot" AND a.name = "Iwant2baweasley (becboobear)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Christmas Cheer" AND t.name = "Sexual content" AND a.name = "Smutty_claus"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Christmas Cheer" AND t.name = "Multi" AND a.name = "Smutty_claus"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Christmas Cheer" AND t.name = "One-shot" AND a.name = "Smutty_claus"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Slytherin Games (Remix of Snakes)" AND t.name = "Sexual content" AND a.name = "Icicle"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Slytherin Games (Remix of Snakes)" AND t.name = "Lesbian | Yuri" AND a.name = "Icicle"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Slytherin Games (Remix of Snakes)" AND t.name = "One-shot" AND a.name = "Icicle"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Anonymous Signs" AND t.name = "Sexual content" AND a.name = "Abigail89"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Anonymous Signs" AND t.name = "Multi" AND a.name = "Abigail89"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Anonymous Signs" AND t.name = "One-shot" AND a.name = "Abigail89"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "my heart is holding on to you" AND t.name = "Sexual content" AND a.name = "Aceofdiamonds"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "my heart is holding on to you" AND t.name = "Lesbian | Yuri" AND a.name = "Aceofdiamonds"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "my heart is holding on to you" AND t.name = "One-shot" AND a.name = "Aceofdiamonds"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Candy Cane Obsessed Freak" AND t.name = "Sexual content" AND a.name = "Luvscharlie"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Candy Cane Obsessed Freak" AND t.name = "One-shot" AND a.name = "Luvscharlie"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Female Transfiguration 101" AND t.name = "Sexual content" AND a.name = "Lamp23"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Female Transfiguration 101" AND t.name = "Lesbian | Yuri" AND a.name = "Lamp23"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Female Transfiguration 101" AND t.name = "Fluff" AND a.name = "Lamp23"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Female Transfiguration 101" AND t.name = "Romance" AND a.name = "Lamp23"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Bedtime" AND t.name = "Sexual content" AND a.name = "Holyfant"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Bedtime" AND t.name = "Multi" AND a.name = "Holyfant"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Bedtime" AND t.name = "Post-canon" AND a.name = "Holyfant"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Bedtime" AND t.name = "One-shot" AND a.name = "Holyfant"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Tea with the Headmistress" AND t.name = "AU" AND a.name = "Fluffybookfaerie"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Tea with the Headmistress" AND t.name = "One-shot" AND a.name = "Fluffybookfaerie"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fire" AND t.name = "Sexual content" AND a.name = "Zoelily"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fire" AND t.name = "Lesbian | Yuri" AND a.name = "Zoelily"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fire" AND t.name = "One-shot" AND a.name = "Zoelily"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Accio Ballgag!" AND t.name = "Sexual content" AND a.name = "Harby"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Accio Ballgag!" AND t.name = "Multi" AND a.name = "Harby"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Accio Ballgag!" AND t.name = "Femdom" AND a.name = "Harby"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Christmas Bells are Ringing" AND t.name = "Sexual content" AND a.name = "MayorHaggar"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Christmas Bells are Ringing" AND t.name = "One-shot" AND a.name = "MayorHaggar"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "For This One Day" AND t.name = "Sexual content" AND a.name = "Flipflop_diva"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "For This One Day" AND t.name = "Pwp" AND a.name = "Flipflop_diva"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "For This One Day" AND t.name = "Post-canon" AND a.name = "Flipflop_diva"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "For This One Day" AND t.name = "One-shot" AND a.name = "Flipflop_diva"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Birthday Gift" AND t.name = "Sexual content" AND a.name = "Zakhro"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Birthday Gift" AND t.name = "Multi" AND a.name = "Zakhro"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Birthday Gift" AND t.name = "One-shot" AND a.name = "Zakhro"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Night in the Lioness' Den" AND t.name = "Sexual content" AND a.name = "Sheltie1987"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Night in the Lioness' Den" AND t.name = "Multi" AND a.name = "Sheltie1987"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Night in the Lioness' Den" AND t.name = "Lesbian | Yuri" AND a.name = "Sheltie1987"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Night in the Lioness' Den" AND t.name = "One-shot" AND a.name = "Sheltie1987"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Trouble, with a Capital T" AND t.name = "Romance" AND a.name = "Pottermum"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Trouble, with a Capital T" AND t.name = "Fluff" AND a.name = "Pottermum"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Trouble, with a Capital T" AND t.name = "Humor" AND a.name = "Pottermum";