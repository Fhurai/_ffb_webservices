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
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Arthur Weasley/Molly Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND r.name = "Arthur Weasley / Molly Weasley"
UNION -- Sirius Black/Remus Lupin/Nymphadora Tonks
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND r.name = "Nymphadora Tonks / Remus Lupin / Sirius Black"
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
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Trouble, with a Capital T" AND a.name = "Pottermum" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Fleur Delacour/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "They spurn the holiday spirit in their usual way" AND a.name = "Luvsanime02" AND r.name = "Fleur Delacour / Hermione Granger"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Birthday Surprise" AND a.name = "LRThunder" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Harry Potter/Nymphadora Tonks
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Walking the Walk" AND a.name = "Chazpure" AND r.name = "Harry Potter / Nymphadora Tonks"
UNION -- Severus Snape/Luna Lovegood
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Walking the Walk" AND a.name = "Chazpure" AND r.name = "Luna Lovegood / Severus Snape"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Your secret fantasy" AND a.name = "VanessaWolfie" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Hermione Granger/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Your secret fantasy" AND a.name = "VanessaWolfie" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Your secret fantasy" AND a.name = "VanessaWolfie" AND r.name = "Ginevra 'Ginny' Weasley / Hermione Granger"
UNION -- Neville Longbottom/Pansy Parkinson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Change of Heart" AND a.name = "Ragdoll" AND r.name = "Neville Longbottom / Pansy Parkinson"
UNION -- Pansy Parkinson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Addictive" AND a.name = "" AND r.name = "Harry Potter / Pansy Parkinson"
UNION -- background Draco Malfoy/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Addictive" AND a.name = "" AND r.name = "Draco Malfoy / Hermione Granger"
UNION -- Hermione Granger/Draco Malfoy
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Restorative" AND a.name = "" AND r.name = "Draco Malfoy / Hermione Granger"
UNION -- Lavender Brown/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Who Seems a Beast (but secretly dreams of beauty)" AND a.name = "Songquake" AND r.name = "Hermione Granger / Lavender Brown"
UNION -- Hermione Granger/Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Flood" AND a.name = "Holyfant" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Flood" AND a.name = "Holyfant" AND r.name = "Harry Potter / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Flood" AND a.name = "Holyfant" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Flood" AND a.name = "Holyfant" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "All My Wildest Dreams" AND a.name = "Walgesang" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Lavender Brown/Parvati Patil
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dorm Mates" AND a.name = "BananasPyjamas" AND r.name = "Lavender Brown / Parvati Patil"
UNION -- Lavender Brown/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dorm Mates" AND a.name = "BananasPyjamas" AND r.name = "Hermione Granger / Lavender Brown"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The 69" AND a.name = "LRThunder" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Astoria Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The 69" AND a.name = "LRThunder" AND r.name = "Astoria Greengrass / Harry Potter"
UNION -- Astoria Greengrass/Draco Malfoy
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The 69" AND a.name = "LRThunder" AND r.name = "Astoria Greengrass / Draco Malfoy"
UNION -- Daphne Greengrass/Draco Malfoy
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The 69" AND a.name = "LRThunder" AND r.name = "Daphne Greengrass / Draco Malfoy"
UNION -- 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Falling Towards Something (It Might Just Be You)" AND a.name = "Thewaywedo33" AND r.name = "Fleur Delacour / Hermione Granger"
UNION -- Gabrielle Delacour/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Love Story in Four Acts" AND a.name = "Inell" AND r.name = "Gabrielle Delacour / Hermione Granger"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Intricacies of Magical Etiquette" AND a.name = "MayorHaggar" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Harry Potter/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "HBG Mini-series: Lily" AND a.name = "Sheltie1987" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Harry Potter/Lily Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "HBG Mini-series: Lily" AND a.name = "Sheltie1987" AND r.name = "Harry Potter / Lily Evans Potter"
UNION -- Harry Potter/Hermione Granger/Lily Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "HBG Mini-series: Lily" AND a.name = "Sheltie1987" AND r.name = "Harry Potter / Hermione Granger / Lily Evans Potter"
UNION -- Harry Potter/Alice Longbottom
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "HBG Mini-series: Lily" AND a.name = "Sheltie1987" AND r.name = "Alice Longbottom / Harry Potter"
UNION -- Harry Potter/Alice Longbottom/Lily Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "HBG Mini-series: Lily" AND a.name = "Sheltie1987" AND r.name = "Alice Longbottom / Harry Potter / Lily Evans Potter"
UNION -- Harry Potter/Lily Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "HBG Mini-series: Pureblood Wives" AND a.name = "Sheltie1987" AND r.name = "Harry Potter / Lily Evans Potter"
UNION -- Harry Potter/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "HBG Mini-series: Pureblood Wives" AND a.name = "Sheltie1987" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Prewett Cup" AND a.name = "Ap_aelfwine" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Hermione Granger/Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Prewett Cup" AND a.name = "Ap_aelfwine" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Hermione Granger"
UNION -- Herminone / Harry
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "An Odd Turn of Events" AND a.name = "IridescentLugia" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Night Moves" AND a.name = "NidoranDuran" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Harry Potter/Hermione Granger/Parvati Patil/Lavender Brown
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Night Moves" AND a.name = "NidoranDuran" AND r.name = "Harry Potter / Hermione Granger / Lavender Brown / Parvati Patil"
UNION -- Lavender Brown/Hermione Granger/Parvati Patil
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Night Moves" AND a.name = "NidoranDuran" AND r.name = "Hermione Granger / Lavender Brown / Parvati Patil"
UNION -- Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Guest Bedroom" AND a.name = "Holyfant" AND r.name = "Harry Potter / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Guest Bedroom" AND a.name = "Holyfant" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Guest Bedroom" AND a.name = "Holyfant" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Guest Bedroom" AND a.name = "Holyfant" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mirrors And Opposites" AND a.name = "Lightofdaye" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The List" AND a.name = "Olivieblake" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Hermione Granger/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Friends & Lovers" AND a.name = "TarnishedArmour" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Friends & Lovers" AND a.name = "TarnishedArmour" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Friends & Lovers" AND a.name = "TarnishedArmour" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Boy Who Wanted Her" AND a.name = "Likebunnies" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Boy Who Was Hers" AND a.name = "Likebunnies" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How We Live" AND a.name = "Wendings" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Luna Lovegood/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How We Live" AND a.name = "Wendings" AND r.name = "Harry Potter / Luna Lovegood"
UNION -- Luna Lovegood/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How We Live" AND a.name = "Wendings" AND r.name = "Ginevra 'Ginny' Weasley / Luna Lovegood"
UNION -- Luna Lovegood/Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How We Live" AND a.name = "Wendings" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Luna Lovegood"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How We Live" AND a.name = "Wendings" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How We Live" AND a.name = "Wendings" AND r.name = "Ginevra 'Ginny' Weasley / Hermione Granger"
UNION -- Hermione Granger/Luna Lovegood
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How We Live" AND a.name = "Wendings" AND r.name = "Hermione Granger / Luna Lovegood"
UNION -- Hermione Granger/Luna Lovegood/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How We Live" AND a.name = "Wendings" AND r.name = "Ginevra 'Ginny' Weasley / Hermione Granger / Luna Lovegood"
UNION -- Hermione Granger/Luna Lovegood/Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How We Live" AND a.name = "Wendings" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Hermione Granger / Luna Lovegood"
UNION -- Harry Potter/OFC
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How We Live" AND a.name = "Wendings" AND r.name = "Harry Potter / OFC"
UNION -- Gabrielle Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How We Live" AND a.name = "Wendings" AND r.name = "Gabrielle Delacour / Harry Potter"
UNION -- Gabrielle Delacour/Ginny Weasley/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How We Live" AND a.name = "Wendings" AND r.name = "Gabrielle Delacour / Ginevra 'Ginny' Weasley / Harry Potter
"
UNION -- Gabrielle Delacour/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How We Live" AND a.name = "Wendings" AND r.name = "Gabrielle Delacour / Ginevra 'Ginny' Weasley"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Infernal Plan" AND a.name = "Likebunnies" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Draco Malfoy/Pansy Parkinson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Center of Attention" AND a.name = "" AND r.name = "Draco Malfoy / Pansy Parkinson"
UNION -- Daphne Greengrass/Pansy Parkinson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Center of Attention" AND a.name = "" AND r.name = "Daphne Greengrass / Pansy Parkinson"
UNION -- Draco Malfoy/Pansy Parkinson/Daphne Greengrass
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Center of Attention" AND a.name = "" AND r.name = "Daphne Greengrass / Draco Malfoy / Pansy Parkinson"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Vein of Gold" AND a.name = "Pelespen" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Harry Potter/Cho Chang
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Encounters After the Yule Ball" AND a.name = "Sheltie1987" AND r.name = "Cho Chang / Harry Potter"
UNION -- Harry Potter/Padma Patil
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Encounters After the Yule Ball" AND a.name = "Sheltie1987" AND r.name = "Harry Potter / Padma Patil"
UNION -- Harry Potter/Parvati Patil
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Encounters After the Yule Ball" AND a.name = "Sheltie1987" AND r.name = "Harry Potter / Parvati Patil"
UNION -- Harry Potter/Fleur Delacour
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Encounters After the Yule Ball" AND a.name = "Sheltie1987" AND r.name = "Fleur Delacour / Harry Potter"
UNION -- Harry Potter/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Encounters After the Yule Ball" AND a.name = "Sheltie1987" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Love You Completely" AND a.name = "Starstruck1986" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Chance Meeting" AND a.name = "Clell65619" AND r.name = "Harry Potter / Tracey Davis"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "You're my what?" AND a.name = "Scruffy1" AND r.name = "Gabrielle Delacour / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Not On His List" AND a.name = "Musyc" AND r.name = "
Harry Potter / Pansy Parkinson"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "An Unexpected Source of Wisdom" AND a.name = "Alyndra" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Troika" AND a.name = "Lily_pearl (lilyandjoey)" AND r.name = "Harry Potter / Hermione Granger"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Troika" AND a.name = "Lily_pearl (lilyandjoey)" AND r.name = "
Hermione Granger / Padma Patil"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Troika" AND a.name = "Lily_pearl (lilyandjoey)" AND r.name = "Harry Potter / Padma Patil"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Subservient Housewives and other Mythical Creatures" AND a.name = "Voxangelus" AND r.name = "Harry Potter / Susan Bones"
UNION -- Harry/Ginny
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Lesson in Propriety" AND a.name = "Dime" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Threesomes/Moresomes
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Confessions Under A Night Sky" AND a.name = "Snowblind12" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Harry Potter/ Ginny Weasley - Past
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Hermione Granger/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- James Potter/Lily Evans Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver" AND r.name = "James Potter/Lily Evans Potter"
UNION -- Hermione Granger/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Slumber Party" AND a.name = "Femmeslyth" AND r.name = "Ginevra 'Ginny' Weasley / Hermione Granger"
UNION -- Hermione Granger/Ginny Weasley/Nymphadora Tonks
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Slumber Party" AND a.name = "Femmeslyth" AND r.name = "Ginevra 'Ginny' Weasley / Hermione Granger / Nymphadora Tonks"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Memorable Farewell" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Yearning Hearts" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Lavender Brown/Parvati Patil
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Yearning Hearts" AND a.name = "Pommedeplume" AND r.name = "Lavender Brown / Parvati Patil"
UNION -- Luna Lovegood/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Yearning Hearts" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Luna Lovegood"
UNION -- Hermione Granger/Ron Weasley (mentioned)
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Yearning Hearts" AND a.name = "Pommedeplume" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Lavender Brown/Ron Weasley (Past)
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Yearning Hearts" AND a.name = "Pommedeplume" AND r.name = "Lavender Brown / Ronald 'Ron' Weasley"
UNION -- Luna Lovegood/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Open to Love" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Luna Lovegood"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Open to Love" AND a.name = "Pommedeplume" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Neville Longbottom/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Things to Do in Berlin (When You're Bored)" AND a.name = "Pommedeplume" AND r.name = "Harry Potter / Neville Longbottom"
UNION -- Harry Potter/Ginny Weasley (mentioned)
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Things to Do in Berlin (When You're Bored)" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Normal Things" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Luna Lovegood/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Normal Things" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Luna Lovegood"
UNION -- Neville Longbottom/Harry Potter (mentioned)
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Normal Things" AND a.name = "Pommedeplume" AND r.name = "Harry Potter / Neville Longbottom"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Girl Who Topped" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Neville Longbottom/Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Neville Longbottom"
UNION -- Neville Longbottom/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume" AND r.name = "Harry Potter / Neville Longbottom"
UNION -- Hannah Abbott/Neville Longbottom
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume" AND r.name = "Hannah Abbott / Neville Longbottom"
UNION -- Luna Lovegood/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Luna Lovegood"
UNION -- Neville Longbottom/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Neville Longbottom"
UNION -- Neville Longbottom/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Various Climaxes" AND a.name = "Pommedeplume" AND r.name = "Harry Potter / Neville Longbottom"
UNION -- Harry Potter/Ginny Weasley (mentioned)
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Various Climaxes" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Neville Longbottom/Harry Potter/Ginny Weasley (mentioned)
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Various Climaxes" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Neville Longbottom"
UNION -- Luna Lovegood/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Luna's Desires" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Luna Lovegood"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Luna's Desires" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Neville Longbottom/Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Luna's Desires" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Neville Longbottom"
UNION -- Neville Longbottom/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Luna's Desires" AND a.name = "Pommedeplume" AND r.name = "Harry Potter / Neville Longbottom"
UNION -- Neville Longbottom/Luna Lovegood/Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Luna's Desires" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Luna Lovegood / Neville Longbottom"
UNION -- Luna Lovegood/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Luna's Desires" AND a.name = "Pommedeplume" AND r.name = ""
UNION -- Astoria Greengrass/Draco Malfoy
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND r.name = "Astoria Greengrass / Draco Malfoy"
UNION -- Pansy Parkinson/Blaise Zabini
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND r.name = "Blaise Zabini / Pansy Parkinson"
UNION -- Draco Malfoy/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND r.name = "Draco Malfoy / Harry Potter"
UNION -- Astoria Greengrass/Romilda Vane
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND r.name = "Astoria Greengrass / Romilda Vane"
UNION -- Astoria Greengrass/Pansy Parkinson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND r.name = "Astoria Greengrass / Pansy Parkinson"
UNION -- Draco Malfoy/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND r.name = "Draco Malfoy / Ginevra 'Ginny' Weasley"
UNION -- Draco Malfoy/Blaise Zabini
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND r.name = "Blaise Zabini / Draco Malfoy"
UNION -- Draco Malfoy/Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND r.name = "Draco Malfoy / Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Astoria Greengrass/Original Female Character(s)
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND r.name = "Astoria Greengrass / OFC"
UNION -- Draco Malfoy/Pansy Parkinson/Blaise Zabini
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND r.name = "Blaise Zabini / Draco Malfoy / Pansy Parkinson"
UNION -- Pansy Parkinson/Romilda Vane
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND r.name = "Pansy Parkinson / Romilda Vane"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Welcome to the Family" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Hermione Granger/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Welcome to the Family" AND a.name = "Pommedeplume" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Neville Longbottom/Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Welcome to the Family" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Neville Longbottom"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Open Doors" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Luna Lovegood/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Open Doors" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Luna Lovegood"
UNION -- Neville Longbottom/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Open Doors" AND a.name = "Pommedeplume" AND r.name = "Harry Potter / Neville Longbottom"
UNION -- Neville Longbottom/Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Open Doors" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Neville Longbottom"
UNION -- Neville Longbottom/Luna Lovegood/Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Open Doors" AND a.name = "Pommedeplume" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Luna Lovegood / Neville Longbottom"
UNION -- Pansy Parkinson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "One in a Million" AND a.name = "Maraudersaffair" AND r.name = "Harry Potter / Pansy Parkinson"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "One in a Million" AND a.name = "Maraudersaffair" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "You've Got Me Pegged" AND a.name = "Gracerene" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Let go" AND a.name = "Lostonplatform934" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Daphne Greengrass/Pansy Parkinson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Best Behaviour" AND a.name = "Idleside" AND r.name = "Daphne Greengrass / Harry Potter / Pansy Parkinson"
UNION -- Pansy Parkinson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Best Behaviour" AND a.name = "Idleside" AND r.name = "Harry Potter / Pansy Parkinson"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Best Behaviour" AND a.name = "Idleside" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Daphne Greengrass/Pansy Parkinson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Best Behaviour" AND a.name = "Idleside" AND r.name = "Daphne Greengrass / Pansy Parkinson"
UNION -- Daphne Greengrass/Pansy Parkinson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND r.name = "Daphne Greengrass / Harry Potter / Pansy Parkinson"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Daphne Greengrass/Pansy Parkinson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND r.name = "Daphne Greengrass / Pansy Parkinson"
UNION -- Pansy Parkinson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND r.name = "Harry Potter / Pansy Parkinson"
UNION -- Daphne Greengrass/Pansy Parkinson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND r.name = "Daphne Greengrass / Harry Potter / Pansy Parkinson"
UNION -- Pansy Parkinson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND r.name = "Harry Potter / Pansy Parkinson"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Daphne Greengrass/Pansy Parkinson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND r.name = "Daphne Greengrass / Pansy Parkinson"
UNION -- Daphne Greengrass/Padma Patil
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND r.name = "Daphne Greengrass / Padma Patil"
UNION -- Daphne Greengrass/Pansy Parkinson/Padma Patil/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND r.name = "Daphne Greengrass / Harry Potter / Padma Patil / Pansy Parkinson"
UNION -- Daphne Greengrass/Pansy Parkinson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND r.name = "Daphne Greengrass / Harry Potter / Pansy Parkinson"
UNION -- Daphne Greengrass/Pansy Parkinson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND r.name = "Daphne Greengrass / Pansy Parkinson"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Pansy Parkinson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND r.name = "Harry Potter / Pansy Parkinson"
UNION -- Luna Lovegood/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND r.name = "Harry Potter / Luna Lovegood"
UNION -- Susan Bones/Pansy Parkinson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND r.name = "Pansy Parkinson / Susan Bones"
UNION -- Susan Bones/Daphne Greengrass
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND r.name = "Daphne Greengrass / Susan Bones"
UNION -- Padma Patil/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Helping Hands" AND a.name = "Idleside" AND r.name = "Harry Potter / Padma Patil"
UNION -- Padma Patil/Pansy Parkinson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Cosmopolitan" AND a.name = "Idleside" AND r.name = "Padma Patil / Pansy Parkinson"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "My Mind Is Screaming (But Your Touch Brings Me Silence)" AND a.name = "" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Narcissa Black Malfoy/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "My Mind Is Screaming (But Your Touch Brings Me Silence)" AND a.name = "" AND r.name = "Harry Potter / Narcissa Black Malfoy"
UNION -- Ginny Weasley/Harry Potter/Narcissa Black Malfoy
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "My Mind Is Screaming (But Your Touch Brings Me Silence)" AND a.name = "" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Narcissa Black Malfoy"
UNION -- Hermione Granger/Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Paramount ~ Extension" AND a.name = "Ronslady23" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Cho Chang/Cedric Diggory/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "We Three Seekers" AND a.name = "Farbautidottir" AND r.name = "Cedric Diggory / Cho Chang / Harry Potter"
UNION -- Cho Chang/Cedric Diggory/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Best Friends, Always" AND a.name = "Farbautidottir" AND r.name = "Cedric Diggory / Cho Chang / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and The Heir of House Greengrass" AND a.name = "SazzyLJ" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Hermione Granger/Daphne Greengrass
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and The Heir of House Greengrass" AND a.name = "SazzyLJ" AND r.name = "Daphne Greengrass / Hermione Granger"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "From Southampton to New York and Beyond" AND a.name = "Dorothea_Greengrass" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Hermione Granger/Neville Longbottom
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND r.name = "Hermione Granger / Neville Longbottom"
UNION -- Tracey Davis/Theodore Nott
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND r.name = "Theodore Nott / Tracey Davis"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Rose's Birthday Present" AND a.name = "Red_jacobson" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Luna Lovegood/Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Rose's Birthday Present" AND a.name = "Red_jacobson" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Luna Lovegood"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Rose's Birthday Present" AND a.name = "Red_jacobson" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Harry Potter/Rose Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Rose's Birthday Present" AND a.name = "Red_jacobson" AND r.name = "Harry Potter / Rose Weasley"
UNION -- Hermione Granger/Rose Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Rose's Birthday Present" AND a.name = "Red_jacobson" AND r.name = "Hermione Granger / Rose Weasley"
UNION -- Rose Weasley/Victorie Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Rose's Birthday Present" AND a.name = "Red_jacobson" AND r.name = "Rose Weasley / Victoire Weasley"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Daphne Greengrass and the Importance Of Intent" AND a.name = "PetrificusSomewhatus" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Importance Of Intent: After The Credits" AND a.name = "PetrificusSomewhatus" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "On A Night Like This - Potter Chronicle's" AND a.name = "Oakel" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "May It Be – Potter Chronicles" AND a.name = "Oakel" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Tracey Davis/Blaise Zabini
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "May It Be – Potter Chronicles" AND a.name = "Oakel" AND r.name = "Blaise Zabini / Tracey Davis"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hounds & Hippogriffs - The Potter Chronicles" AND a.name = "Oakel" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Embers of Ruin - The Potter Chronicles" AND a.name = "Oakel" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Role Reversal" AND a.name = "QuarantineClean" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sensations Of Shemales: Items Of Aphrodomina" AND a.name = "FanfictionWriter101" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Hermione Granger/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sensations Of Shemales: Items Of Aphrodomina" AND a.name = "FanfictionWriter101" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Becoming Lord Black" AND a.name = "MayorHaggar" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Narcissa Black Malfoy/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Becoming Lord Black" AND a.name = "MayorHaggar" AND r.name = "Harry Potter / Narcissa Black Malfoy"
UNION -- Minor Narcissa Black Malfoy/Blaise Zabini
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Becoming Lord Black" AND a.name = "MayorHaggar" AND r.name = "Blaise Zabini / Narcissa Black Malfoy"
UNION -- Daphne Greengrass/Narcissa Black Malfoy
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Becoming Lord Black" AND a.name = "MayorHaggar" AND r.name = "Daphne Greengrass / Narcissa Black Malfoy"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Parvati Patil/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Parvati Patil"
UNION -- Lavender Brown/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Lavender Brown / Harry Potter"
UNION -- Angelina Johnson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Angelina Johnson / Harry Potter"
UNION -- Harry Potter/Alicia Spinnet
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Alicia Spinnet"
UNION -- Katie Bell/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Katie Bell"
UNION -- Harry Potter/Nymphadora Tonks
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Nymphadora Tonks"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Tracey Davis/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Tracey Davis"
UNION -- Padma Patil/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Padma Patil"
UNION -- Padma Patil/Parvati Patil/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Padma Patil / Parvati Patil"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Luna Lovegood/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Luna Lovegood"
UNION -- Narcissa Black Malfoy/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Narcissa Black Malfoy"
UNION -- Hannah Abbott/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Hannah Abbott / Harry Potter"
UNION -- Susan Bones/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Susan Bones"
UNION -- Bellatrix Black Lestrange/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Bellatrix Black Lestrange / Harry Potter"
UNION -- Bellatrix Black Lestrange/Narcissa Black Malfoy/Harry Potter/Andromeda Black Tonks
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Andromeda Black Tonks / Bellatrix Black Lestrange / Harry Potter / Narcissa Black Malfoy"
UNION -- Apolline Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Apolline Delacour / Harry Potter"
UNION -- Gabrielle Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Gabrielle Delacour / Harry Potter"
UNION -- Apolline Delacour/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Apolline Delacour / Hermione Granger"
UNION -- Fleur Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Fleur Delacour"
UNION -- Fleur Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Flower Power" AND a.name = "Browser13" AND r.name = "Fleur Delacour / Harry Potter"
UNION -- Fleur Delacour/Cedric Diggory (minor)
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Flower Power" AND a.name = "Browser13" AND r.name = "Cedric Diggory / Fleur Delacour"
UNION -- Fleur Delacour/Viktor Krum (minor)
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Flower Power" AND a.name = "Browser13" AND r.name = "Fleur Delacour / Viktor Krum"
UNION -- Teddy Lupin/Victoire Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Life and Times of Edward Lupin (permanently discontinued)" AND a.name = "Luna_Weasley03" AND r.name = "Edward 'Teddy' Lupin / Victoire Weasley"
UNION -- Remus Lupin/Nymphadora Tonks (mentioned)
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Life and Times of Edward Lupin (permanently discontinued)" AND a.name = "Luna_Weasley03" AND r.name = "Nymphadora Tonks / Remus Lupin"
UNION -- Fleur Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac" AND r.name = "Fleur Delacour / Harry Potter"
UNION -- Hermione Granger/Harry Potter/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Homunculus to the Life" AND a.name = "Lomonaaeren" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Pansy Parkinson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Harry Potter / Pansy Parkinson"
UNION -- Luna Lovegood/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Harry Potter / Luna Lovegood"
UNION -- Susan Bones/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Harry Potter / Susan Bones"
UNION -- Tracey Davis/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Harry Potter / Tracey Davis"
UNION -- Tracey Davis/Daphne Greengrass
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Daphne Greengrass / Tracey Davis"
UNION -- Tracey Davis/Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Daphne Greengrass / Harry Potter / Tracey Davis"
UNION -- Narcissa Black Malfoy/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Harry Potter / Narcissa Black Malfoy"
UNION -- Cho Chang/Su Li/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Cho Chang / Harry Potter / Su Li"
UNION -- Flora Carrow/Hestia Carrow/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Flora Carrow / Harry Potter / Hestia Carrow"
UNION -- Lavender Brown/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Lavender Brown / Harry Potter"
UNION -- Parvati Patil/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Harry Potter / Parvati Patil"
UNION -- Daphne Greengrass/Luna Lovegood
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Daphne Greengrass / Luna Lovegood"
UNION -- Cho Chang/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Harry Potter / Cho Chang"
UNION -- Astoria Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Astoria Greengrass / Harry Potter"
UNION -- Astoria Greengrass/Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Astoria Greengrass / Daphne Greengrass / Harry Potter"
UNION -- Astoria Greengrass/Luna Lovegood
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Astoria Greengrass / Luna Lovegood"
UNION -- Gabrielle Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Gabrielle Delacour / Harry Potter"
UNION -- Katie Bell/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Harry Potter /Katie Bell"
UNION -- Gabrielle Delacour/Astoria Greengrass
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Astoria Greengrass / Gabrielle Delacour"
UNION -- Gabrielle Delacour/Daphne Greengrass
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND r.name = "Daphne Greengrass / Gabrielle Delacour"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Always Read the Instructions" AND a.name = "MayorHaggar" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Gwenog Jones/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Always Read the Instructions" AND a.name = "MayorHaggar" AND r.name = "Ginevra 'Ginny' Weasley / Gwenog Jones"
UNION -- Tracey Davis/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Always Read the Instructions" AND a.name = "MayorHaggar" AND r.name = "Ginevra 'Ginny' Weasley / Tracey Davis"
UNION -- Angelina Johnson/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Always Read the Instructions" AND a.name = "MayorHaggar" AND r.name = "Angelina Johnson / Ginevra 'Ginny' Weasley"
UNION -- Ginny Weasley/Original Female Character(s)
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Always Read the Instructions" AND a.name = "MayorHaggar" AND r.name = "Ginevra 'Ginny' Weasley / OFC"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: After the Battle" AND a.name = "Daeneryske" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Hermione Granger/Ron Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: After the Battle" AND a.name = "Daeneryske" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Substitute My Coke for Gin" AND a.name = "Lightofdaye" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Parvati Patil/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Substitute My Coke for Gin" AND a.name = "Lightofdaye" AND r.name = "Harry Potter / Parvati Patil"
UNION -- Harry Potter/Parvati Patil/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Substitute My Coke for Gin" AND a.name = "Lightofdaye" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Parvati Patil"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Red Right Hand" AND a.name = "Fightfortherightsofhouseelves" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Negotiate" AND a.name = "Divagonzo" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Where The Grass Is Greener" AND a.name = "SeaFeudJagger" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Fleur Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno" AND r.name = "Fleur Delacour / Harry Potter"
UNION -- Gabrielle Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno" AND r.name = "Gabrielle Delacour / Harry Potter"
UNION -- Apolline Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno" AND r.name = "Apolline Delacour / Harry Potter"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Harry Potter/Original Female Character(s)
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno" AND r.name = "Harry Potter / OFC"
UNION -- Fleur Delacour/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno" AND r.name = "Fleur Delacour / Hermione Granger"
UNION -- Ron Weasley/Original Female Character(s)
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno" AND r.name = "OFC / Ronald 'Ron' Weasley"
UNION -- Neville Longbottom/Original Female Character(s)
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno" AND r.name = "Neville Longbottom / OFC"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Society Fair" AND a.name = "MimiAliceYorke" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Katie Bell/Angelina Johnson/Harry Potter/Alicia Spinnet
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and The Truth or Dare?" AND a.name = "SuperMegaAwesomeNinja" AND r.name = "Alicia Spinnet / Angelina Johnson / Harry Potter / Katie Bell"
UNION -- Katie Bell/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and The Truth or Dare?" AND a.name = "SuperMegaAwesomeNinja" AND r.name = "Harry Potter / Katie Bell"
UNION -- Angelina Johnson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and The Truth or Dare?" AND a.name = "SuperMegaAwesomeNinja" AND r.name = "Angelina Johnson / Harry Potter"
UNION -- Harry Potter/Alicia Spinnet
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and The Truth or Dare?" AND a.name = "SuperMegaAwesomeNinja" AND r.name = "Alicia Spinnet / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Astoria Greengrass/Draco Malfoy
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND r.name = "Astoria Greengrass / Draco Malfoy"
UNION -- Hannah Abbott/Neville Longbottom
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND r.name = "Hannah Abbott / Neville Longbottom"
UNION -- Fleur Delacour/Bill Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND r.name = "Fleur Delacour / William 'Bill' Weasley"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Long-Awaited Letter" AND a.name = "Wyrdeen" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- James Potter/Lily Evans Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Born As The Seventh Month Dies" AND a.name = "Aspionage" AND r.name = "James Potter/Lily Evans Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Those Who Have Thrice Defied Him" AND a.name = "Aspionage" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Terry Boot/Blaise Zabini
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Those Who Have Thrice Defied Him" AND a.name = "Aspionage" AND r.name = "Blaise Zabini / Terry Boot"
UNION -- Millicent Bulstrode/Tracey Davis
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Those Who Have Thrice Defied Him" AND a.name = "Aspionage" AND r.name = "Millicent Bulstrode / Tracey Davis"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Power The Dark Lord Knows Not" AND a.name = "Aspionage" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Daphne Greengrass and the Preemptive Adulterer" AND a.name = "ScribblingSteve" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Harry Potter/Lily Evans Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: Life With A Single Futa Mother" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Lily Evans Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Firewhiskeys & Happy Endings" AND a.name = "Ghostoflinny" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Susan Bones/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Susan Bones"
UNION -- Hannah Abbott/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND r.name = "Hannah Abbott / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Astoria Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND r.name = "Astoria Greengrass / Harry Potter"
UNION -- Tracey Davis/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Tracey Davis"
UNION -- Luna Lovegood/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Luna Lovegood"
UNION -- Parvati Patil/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Parvati Patil"
UNION -- Padma Patil/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Padma Patil"
UNION -- Padma Patil/Parvati Patil/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Padma Patil / Parvati Patil"
UNION -- Angelina Johnson/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND r.name = "Angelina Johnson / Harry Potter"
UNION -- Harry Potter/Alicia Spinnet
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND r.name = "Alicia Spinnet / Harry Potter"
UNION -- Katie Bell/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Katie Bell"
UNION -- Katie Bell/Angelina Johnson/Harry Potter/Alicia Spinnet
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND r.name = "Alicia Spinnet / Angelina Johnson / Harry Potter / Katie Bell"
UNION -- Harry Potter/Nymphadora Tonks
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND r.name = "Harry Potter / Nymphadora Tonks"
UNION -- Fleur Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fleur Delacour and the Secret of the Teardrop" AND a.name = "Triage" AND r.name = "Fleur Delacour / Harry Potter"
UNION -- Tracey Davis/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "His Last Curse" AND a.name = "WokFriedIce" AND r.name = "Hermione Granger / Tracey Davis"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "His Last Curse" AND a.name = "WokFriedIce" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Enough of Both" AND a.name = "Takearisk" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Old Love" AND a.name = "TheHallowsInMe31" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Old Love" AND a.name = "TheHallowsInMe31" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Fleur Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Awakening" AND a.name = "Atrxx93" AND r.name = "Fleur Delacour / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and The Revival of The Phoenix" AND a.name = "Prince_Asmo" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Snakes, Cats, and Ladders" AND a.name = "Ch4" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Fleur Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Veela's Captive" AND a.name = "Karmealion" AND r.name = "Fleur Delacour / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Soft Place to Land" AND a.name = "GreenhouseThree" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Nineteen Years Later..." AND a.name = "Littlepuff04" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Dudley Dursley/Original Magical Female Character
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Nineteen Years Later..." AND a.name = "Littlepuff04" AND r.name = "Dudley Dursley / OFC"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Susan Bones/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND r.name = "Harry Potter / Susan Bones"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Sue Li/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND r.name = "Harry Potter / Su Li"
UNION -- Fleur Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND r.name = "Fleur Delacour / Harry Potter"
UNION -- Sirius Black/Amelia Bones
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND r.name = "Amelia Bones / Sirius Black"
UNION -- Hermione Granger/Neville Longbottom
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND r.name = "Hermione Granger / Neville Longbottom"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "You Will Never Put Me Through That Again" AND a.name = "Hollidayparty" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Fleur Delacour/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fleur De Lis" AND a.name = "Magical_Worlds" AND r.name = "Fleur Delacour / Harry Potter"
UNION -- Neville Longbottom/Luna Lovegood
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fleur De Lis" AND a.name = "Magical_Worlds" AND r.name = "Luna Lovegood / Neville Longbottom"
UNION -- Gabrielle Delacour/Hermione Granger
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fleur De Lis" AND a.name = "Magical_Worlds" AND r.name = "Gabrielle Delacour / Hermione Granger"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Desperate Times" AND a.name = "ProfessorQuill" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Under the Starry Skies, the Greengrass Lies" AND a.name = "Magical_Worlds" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Daphne Greengrass/Harry Potter
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Who Wouldn't Want You" AND a.name = "Nixrocket" AND r.name = "Daphne Greengrass / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "It's Complicated" AND a.name = "Pottermum" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION -- Harry Potter/Ginny Weasley
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Pretty Please with a Ginny on Top" AND a.name = "Rickey" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Four Times Harry Walked in on Ron and Hermione and One Time He Didn’t" AND a.name = "Liiilyevans" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Four Times Harry Walked in on Ron and Hermione and One Time He Didn’t" AND a.name = "Liiilyevans" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND r.name = "Harry Potter / Katie Bell"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Katie Bell"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND r.name = "Ginevra 'Ginny' Weasley / Katie Bell"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND r.name = "Harry Potter / Hermione Granger"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND r.name = "Ginevra 'Ginny' Weasley / Hermione Granger"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND r.name = "Hermione Granger / Katie Bell"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND r.name = "Alicia Spinnet / Angelina Johnson / George Weasley"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Hermione Granger / Katie Bell"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND r.name = "Nymphadora Tonks / Remus Lupin"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dirty games" AND a.name = "Noctus Noxia" AND r.name = "Bellatrix Black Lestrange / Hermione Granger"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Enjoy the Fireworks" AND a.name = "ChampionOfKratos" AND r.name = "Fleur Delacour / Harry Potter / Nymphadora Tonks"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "What are we celebrating?" AND a.name = "Slytherinenigma" AND r.name = "Hermione Granger / Narcissa Black Malfoy"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Lines of Life" AND a.name = "Relena Mishima" AND r.name = "Hermione Granger / Pansy Parkinson"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Lines of Life" AND a.name = "Relena Mishima" AND r.name = "Cho Chang / Harry Potter"
UNION 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Stockings Required" AND a.name = "LadiePhoenix007" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Susan Potter nee Bones" AND a.name = "Potterfamilysecret1" AND r.name = "Harry Potter / Susan Bones"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Thrall or not Thrall, that Is the Question" AND a.name = "Listen-to" AND r.name = "Fleur Delacour / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just One Night" AND a.name = "Messr. Wolfethorn" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Negligentia" AND a.name = "Murkatroyd" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sleepless Nights" AND a.name = "Nynayve" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Shifting towards Eachother" AND a.name = "Listen-to" AND r.name = "Fleur Delacour / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Returning to the Start" AND a.name = "Timunderwood9" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "After the Chamber - Lords and Ladies" AND a.name = "SeerKing" AND r.name = "Daphne Greengrass / Ginevra 'Ginny' Weasley / Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Days to Come" AND a.name = "Chris400ad" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Everything will be ok in the end" AND a.name = "SkyHigh17" AND r.name = "Fleur Delacour / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sympathetic Properties" AND a.name = "Mr Norrell" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Give Me Love" AND a.name = "IWillGoWithYouHarry" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Bad Timing" AND a.name = "PassnPlay" AND r.name = "Hermione Granger / Pansy Parkinson"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "La maladie du baiser" AND a.name = "Lana.HP" AND r.name = "Harry Potter / Pansy Parkinson"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Herbal Tea" AND a.name = "NidoranDuran" AND r.name = "Fleur Delacour / Hermione Granger / Ronald 'Ron' Weasley"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hollow" AND a.name = "Dante 2K-25" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Best Man's Job" AND a.name = "Scott the Wanderer" AND r.name = "Fleur Delacour / Harry Potter / Nymphadora Tonks"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Always" AND a.name = "Caydus" AND r.name = "Fleur Delacour / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Cheat on me" AND a.name = "UpTheHill" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Le Coup de Foudre est de couleur Rouge Carmin" AND a.name = "Gouline971" AND r.name = "Harry Potter / Pansy Parkinson"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Reunion" AND a.name = "Emp. Elesar II" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Bonding" AND a.name = "Flowerchild33" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Luna Lovegood"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "46 Hours" AND a.name = "Flowerchild33" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Luna Lovegood"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Creating a Balance" AND a.name = "Flowerchild33" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Luna Lovegood"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Forgotten Affairs" AND a.name = "Midnight17516" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dodging Prison and Stealing Witches - Revenge is Best Served Raw" AND a.name = "LeadVonE" AND r.name = "Daphne Greengrass / Ginevra 'Ginny' Weasley / Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Christmas Holiday" AND a.name = "Dizzy - in - the - izzy" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fur and Feathers" AND a.name = "Shdwqueen" AND r.name = "Fleur Delacour / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Deck the Halls" AND a.name = "Sheltie1987" AND r.name = "Daphne Greengrass / Fleur Delacour / Harry Potter / Penelope Clearwater"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Love Multiplied" AND a.name = "Flowerchild33" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Hermione Granger / Luna Lovegood"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Gods Amongst Men" AND a.name = "Slimah" AND r.name = "Fleur Delacour / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Changing Fate's Plans" AND a.name = "Golasgil Sindar" AND r.name = "Daphne Greengrass / Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Termination Without" AND a.name = "Alex Moss" AND r.name = "Hermione Granger / Narcissa Black Malfoy"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Rune Stone Path" AND a.name = "Temporal Knight" AND r.name = "Fleur Delacour / Harry Potter / Hermione Granger / Nymphadora Tonks"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Playdate" AND a.name = "ThatsRealMagic" AND r.name = "Fleur Delacour / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Gothic" AND a.name = "Brennus" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "When Fate Intervened" AND a.name = "LordVishnu" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter: Air Elemental" AND a.name = "Kb0" AND r.name = "Harry Potter / Susan Bones"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Prefect's Bathroom" AND a.name = "MobBob" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Luna Lovegood / Nymphadora Tonks"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Love Under the Invisibility Cloak" AND a.name = "MobBob" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Luna Lovegood / Nymphadora Tonks"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Feral Snake" AND a.name = "LarkGarbedInPurpose" AND r.name = "Harry Potter / Hermione Granger / Tracey Davis"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Witch 3" AND a.name = "Argo0" AND r.name = "Daphne Greengrass / Harry Potter / Hermione Granger / Susan Bones"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Ilvermorny Champion" AND a.name = "VMFanfiction" AND r.name = "Daphne Greengrass / Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Happy Birthday Harry" AND a.name = "Epeefencer" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Magical Puberty" AND a.name = "Fantasy1290" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / Hermione Granger / Susan Bones"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Honour Thy Blood" AND a.name = "TheBlack'sResurgence" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Celebration" AND a.name = "ThatsRealMagic" AND r.name = "Harry Potter / Katie Bell"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "As Ron Likes It" AND a.name = "NickieButterfly" AND r.name = "Harry Potter / Hermione Granger / Ronald 'Ron' Weasley"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Late Night Revelations" AND a.name = "Epeefencer" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Soul Scars" AND a.name = "Rtnwriter" AND r.name = "Daphne Greengrass / Harry Potter / Hermione Granger / Susan Bones"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "One lucky Wife" AND a.name = "Rivia" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and The Old Friend" AND a.name = "Sinyk" AND r.name = "Harry Potter / Susan Bones"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Godfather's Promise" AND a.name = "The Metal Sage" AND r.name = "Daphne Greengrass / Fleur Delacour / Harry Potter / Susan Bones"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Watching and Waiting Reloaded" AND a.name = "LilyevansJan30" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Only You" AND a.name = "Averlovi" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Insurance Policy" AND a.name = "Meyers1020" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Beat Your Heart Out" AND a.name = "GleeGeneration23" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Cheating Death" AND a.name = "SeriouslySam" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "If not for Umbridge" AND a.name = "Chris400ad" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "If not for Umbridge" AND a.name = "Chris400ad" AND r.name = "Ronald 'Ron' Weasley / Tracey Davis"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Weasley Perspective" AND a.name = "CharmHazel" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Power He Knows Not" AND a.name = "Shivam Jha" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Power He Knows Not" AND a.name = "Shivam Jha" AND r.name = "James Potter / Lily Evans Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Boy Who Lived, The Brightest Witch and The Boy Who Wasn't" AND a.name = "Dragonfly117" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "River Deep, Mountain High" AND a.name = "Dorothea Greengrass" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Brontide" AND a.name = "Seriously Sam" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Need Protection?" AND a.name = "Enchantra35" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Need Protection?" AND a.name = "Enchantra35" AND r.name = "Charles 'Charlie' Weasley / OFC"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Quidditch Tales" AND a.name = "Potterlad81" AND r.name = "Harry Potter / Katie Bell"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "By the Moon Light" AND a.name = "WolfgangNH" AND r.name = "Astoria Greengrass / Harry Potter / Luna Lovegood"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Better Than Cake" AND a.name = "Madrosewriting" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Shagging Psychology" AND a.name = "Tweety-src-clt9" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Brothers" AND a.name = "Writing Sins Not Tragedies" AND r.name = "Fleur Delacour / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Purpose of Wings" AND a.name = "Charlennette" AND r.name = "Fleur Delacour / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Through Shadows" AND a.name = "Hpfangal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Gabrielle's Most Joyous Noël" AND a.name = "CesareBorgiaWrites" AND r.name = "Fleur Delacour / Gabrielle Delacour / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Lifetimes of July" AND a.name = "Vanderlustwords" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Entombed" AND a.name = "SeriouslySam" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Lost Year" AND a.name = "Kb0" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Different Type of Bond" AND a.name = "WolfgangNH" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Brothers: The Second Chapter" AND a.name = "Writing Sins Not Tragedies" AND r.name = "Fleur Delacour / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Your Arse Is Mine!" AND a.name = "Thedirtymind" AND r.name = "Harry Potter / Lily Evans Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Reflection - Part of Averlovi's The Potter Chronicles" AND a.name = "Dorothea_Greengrass" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Reflection - Part of Averlovi's The Potter Chronicles" AND a.name = "Dorothea_Greengrass" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Survivors" AND a.name = "OrionB15" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Petrichor" AND a.name = "SometimeWriter1" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Focus of a Healer" AND a.name = "OfficeSloth" AND r.name = "Fleur Delacour / Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Moody's Blues" AND a.name = "Gryffinsdoor" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Hogwarts Lonely Hearts Club" AND a.name = "Th3Alchemist" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "How Silently She Sings" AND a.name = "Charlennette" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Organic" AND a.name = "Akamoroti" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Strange Case of Love" AND a.name = "Thedirtymind" AND r.name = "Harry Potter / Lily Evans Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fire and Ice" AND a.name = "ACI100" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Family that Heals" AND a.name = "WokFriedIce" AND r.name = "Harry Potter / Katie Bell"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Extended Family" AND a.name = "WokFriedIce" AND r.name = "Harry Potter / Katie Bell"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fleur De Lis" AND a.name = "OrionB15" AND r.name = "Fleur Delacour / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Lion and The Lioness" AND a.name = "TigerGirl14" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Dark Year" AND a.name = "Alwaysendwithakiss" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Kiss of Life" AND a.name = "Birdwoman95" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "On The Hunt" AND a.name = "Vedros" AND r.name = "Daphne Greengrass / Gabrielle Delacour / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Daphne Greengrass and the Boy Who Lived" AND a.name = "KatonRyu" AND r.name = "Daphne Greengrass / Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Delicate Art of Raising Thestrals" AND a.name = "AppoApples" AND r.name = "Harry Potter / Luna Lovegood"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Ritual of Love's Memory" AND a.name = "CampDBow" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Contractual Obligation" AND a.name = "LegendDairy" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Never Silence A Lion's Roar" AND a.name = "Aeyliana" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Lost Horcrux" AND a.name = "LilyevansJan30" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Lost Horcrux" AND a.name = "LilyevansJan30" AND r.name = "James Potter / Lily Evans Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A short life full of long years" AND a.name = "RMWB" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Side Dishes" AND a.name = "WokFriedIce" AND r.name = "Harry Potter / Lavender Brown"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Intrinsicality" AND a.name = "RileyOR" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Betrothal Contract" AND a.name = "James Spookie" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Different Halloween" AND a.name = "RobSt" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "One Night" AND a.name = "Sugarbubbleslove" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Autumn Swan" AND a.name = "Lord Akiyama" AND r.name = "Cho Chang / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Snake in the Chestnut" AND a.name = "Nauro" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Stregati" AND a.name = "Ely-Baby" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Purple" AND a.name = "Unicornball" AND r.name = "Hermione Granger / Pansy Parkinson"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "One-Ness" AND a.name = "HermiHugs" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Love of Your Life" AND a.name = "Fantasy1290" AND r.name = "Cho Chang / Hannah Abbott / Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Witchunters of London" AND a.name = "Rusty Weasley" AND r.name = "Dudley Dursley / Pansy Parkinson"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Witchunters of London" AND a.name = "Rusty Weasley" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the Two Flowers" AND a.name = "Azaron" AND r.name = "Fleur Delacour / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Harry Potter and the 11th Commandment" AND a.name = "Insert Valid Author Name" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Unexpected" AND a.name = "Sharp Angles" AND r.name = "Ginevra 'Ginny' Weasley / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Charlie's Child" AND a.name = "Harry50" AND r.name = "Charles 'Charlie' Weasley / Daphne Greengrass"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "What We're Fighting For" AND a.name = "James Spookie" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Pleasurable Jealousy" AND a.name = "A Love So Strong" AND r.name = "Harry Potter / Hermione Granger"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Legacy" AND a.name = "StorytellerSpW" AND r.name = "Daphne Greengrass / Harry Potter"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Welcome to Burlesque" AND a.name = "Abigail Belle" AND r.name = "Padma Patil / Pansy Parkinson"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Christmas FemSlash Special" AND a.name = "WhereTheBerriesBloom" AND r.name = "Hermione Granger / Narcissa Black Malfoy"
UNION -- Samantha Traynor/Ashley Williams
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Very Merry Christmas Indeed" AND a.name = "Grace Kay (Drummerchick7)" AND r.name = "Ashley Williams / Samantha Traynor"
UNION -- Samantha Traynor/Ashley Williams
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Check... and Mate" AND a.name = "Grace Kay (Drummerchick7)" AND r.name = "Ashley Williams / Samantha Traynor"
UNION -- Samantha Traynor/Ashley Williams
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "That Which Matters Most" AND a.name = "Grace Kay (Drummerchick7)" AND r.name = "Ashley Williams / Samantha Traynor"
UNION -- Female Shepard/Liara T'Soni
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "That Which Matters Most" AND a.name = "Grace Kay (Drummerchick7)" AND r.name = "Liara T'Soni / Shepard (F)"
UNION -- Female Shepard/Liara T'Soni
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Moving On" AND a.name = "Grace Kay (Drummerchick7)" AND r.name = "Liara T'Soni / Shepard (F)"
UNION -- Kelly Chambers/Female Shepard
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Moving On" AND a.name = "Grace Kay (Drummerchick7)" AND r.name = "Kelly Chambers / Shepard (F)"
UNION -- Female Shepard/Liara T'Soni
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Innocence Asunder" AND a.name = "Grace Kay (Drummerchick7)" AND r.name = "Liara T'Soni / Shepard (F)"
UNION -- Kelly Chambers/Female Shepard
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Innocence Asunder" AND a.name = "Grace Kay (Drummerchick7)" AND r.name = "Kelly Chambers / Shepard (F)"
UNION -- Kelly Chambers/Female Shepard
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sharing" AND a.name = "Grace Kay (Drummerchick7)" AND r.name = "Kelly Chambers / Shepard (F)"
UNION -- Female Shepard/Liara T'Soni
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sharing" AND a.name = "Grace Kay (Drummerchick7)" AND r.name = "Liara T'Soni / Shepard (F)"
UNION -- Female Shepard/Liara T'Soni
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Tomorrow" AND a.name = "Masserect" AND r.name = "Liara T'Soni / Shepard (F)"
UNION -- Jack/Miranda
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "What Miranda Wants" AND a.name = "RaeDMagdon" AND r.name = "Jack | Subject Zero / Miranda Lawson"
UNION -- Female Shepard/Liara T'Soni
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "What Miranda Wants" AND a.name = "RaeDMagdon" AND r.name = "Liara T'Soni / Shepard (F)"
UNION -- Female Shepard/Liara T'Soni
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "I Hate It When She Does That" AND a.name = "Coolant" AND r.name = "Liara T'Soni / Shepard (F)"
UNION -- Female Shepard/Liara T'Soni
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Asari Nights" AND a.name = "Psychotic_cat17" AND r.name = "Liara T'Soni / Shepard (F)"
UNION -- Tevos/Aria T'Loak
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Asari Nights" AND a.name = "Psychotic_cat17" AND r.name =" Aria T'Loak / Councilor Tevos"
UNION -- Jack | Subject Zero/Miranda Lawson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Asari Nights" AND a.name = "Psychotic_cat17" AND r.name = "Jack | Subject Zero / Miranda Lawson"
UNION -- Sha'ira/Ashley Williams
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Asari Nights" AND a.name = "Psychotic_cat17" AND r.name = "Ashley Williams / Sha'ira"
UNION -- Female Shepard/Liara T'Soni
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Doctor's Prescription" AND a.name = "Lyaksandra" AND r.name = "Liara T'Soni / Shepard (F)"
UNION -- Female Shepard/Liara T'Soni
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Life's a Catch" AND a.name = "Luthor" AND r.name = "Liara T'Soni / Shepard (F)"
UNION -- Aethyta/Benezia
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Life's a Catch" AND a.name = "Luthor" AND r.name = "Benezia T'Soni / Matriarch Aethyta"
UNION -- Miranda Lawson & Original Female Character(s)
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Perfect Pet" AND a.name = "Raptor4d4" AND r.name = "Miranda Lawson / OFC"
UNION -- Aethyta/Benezia
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Saving Nezzy" AND a.name = "BlueRaith" AND r.name = "Benezia T'Soni / Matriarch Aethyta"
UNION -- Female Shepard/Liara T'Soni
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Saving Nezzy" AND a.name = "BlueRaith" AND r.name = "Liara T'Soni / Shepard (F)"
UNION -- Aethyta/Benezia
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Saving Sanity" AND a.name = "BlueRaith" AND r.name = "Benezia T'Soni / Matriarch Aethyta"
UNION -- Female Shepard/Samantha Traynor
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Samantha's New Game" AND a.name = "Raptor4d4" AND r.name = "Samantha Traynor / Shepard (F)"
UNION -- Samantha Traynor/Ashley Williams
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Samantha's New Game" AND a.name = "Raptor4d4" AND r.name = "Ashley Williams / Samantha Traynor"
UNION -- EDI/Samantha Traynor
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Samantha's New Game" AND a.name = "Raptor4d4" AND r.name = "EDI / Samantha Traynor"
UNION -- Miranda Lawson/Samantha Traynor
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Samantha's New Game" AND a.name = "Raptor4d4" AND r.name = "Miranda Lawson / Samantha Traynor"
UNION -- Samantha Traynor/Liara T'Soni
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Samantha's New Game" AND a.name = "Raptor4d4" AND r.name = "Liara T'Soni / Samantha Traynor"
UNION -- Female Shepard/Liara T'Soni
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Apology" AND a.name = "Raptor4d4" AND r.name = "Liara T'Soni / Shepard (F)"
UNION -- Jack | Subject Zero/Miranda Lawson
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Personal Growth" AND a.name = "RaeDMagdon" AND r.name = "Jack | Subject Zero / Miranda Lawson"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Piano e Forte" AND a.name = "Wyles77" AND r.name = "Liara T'Soni / Shepard (F)"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mass Effect: The Paths We Take (Discontinued)" AND a.name = "Nothinginreturn" AND r.name = "Miranda Lawson / Shepard (M)"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Breaking Point" AND a.name = "Revan's Mask" AND r.name = "Liara T'Soni / Shepard (F)"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "From Ashes" AND a.name = "Thessian Shadow" AND r.name = "Councilor Tevos / Shepard (F)"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Better Angels: A Call to Arms" AND a.name = "Wyles77" AND r.name = "Liara T'Soni / Shepard (F)"
UNION --
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Exhilaration" AND a.name = "A. LaRosa" AND r.name = "Chigusa Nana / Sugimura Kaoru"
UNION -- 
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Eat You Up" AND a.name = "Thekatthatbarks" AND r.name = "Haruno Sakura / Yamanaka Ino"
UNION -- Haruno Sakura/Yamanaka Ino
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Wherein Ino Yamanaka Regales Sakura Haruno With Her Long List of Conquests" AND a.name = "Epsilonics" AND r.name = "Haruno Sakura / Yamanaka Ino"
UNION -- Haruno Sakura/Uzumaki Naruto
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Honeymooners" AND a.name = "VampbaitInfinity" AND r.name = "Haruno Sakura / Uzumaki Naruto"
UNION -- Haruno Sakura/Hyuuga Hinata
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mother/Daughter Love: Sequel One" AND a.name = "McCrazy23" AND r.name = "Haruno Sakura / Hyuuga Hinata"
UNION -- Haruno Sakura/Hyuuga Hinata/Uzumaki Naruto
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mother/Daughter Love: Sequel One" AND a.name = "McCrazy23" AND r.name = "Haruno Sakura / Hyuuga Hinata / Uzumaki Naruto"
UNION -- Haruno Mebuki/Uzumaki Naruto
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mother/Daughter Love: Sequel One" AND a.name = "McCrazy23" AND r.name = "Haruno Mebuki / Uzumaki Naruto"
UNION -- Haruno Sakura/Haruno Mebuki/Uzumaki Naruto
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mother/Daughter Love: Sequel One" AND a.name = "McCrazy23" AND r.name = "Haruno Sakura / Haruno Mebuki / Uzumaki Naruto"
UNION -- Haruno Mebuki/Haruno Sakura
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mother/Daughter Love: Sequel One" AND a.name = "McCrazy23" AND r.name = "Haruno Mebuki / Haruno Sakura"
UNION -- Haruno Sakura/Uzumaki Naruto
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mother/Daughter Love: Sequel One" AND a.name = "McCrazy23" AND r.name = "Haruno Sakura / Uzumaki Naruto"
UNION -- Sakura Haruno/Mebuki Haruno
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Mother/Daughter Love" AND a.name = "McCrazy23" AND r.name = "Haruno Mebuki/Haruno Sakura"
UNION -- Naruto - Relationship
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Friends with Benefits" AND a.name = "AnimeLover4Life" AND r.name = "Haruno Sakura / Uzumaki Naruko"
UNION -- Uzumaki Naruto/Yamanaka Ino
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Birthday Surprise" AND a.name = "Rikuren" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION -- Hyuuga Hinata/Uzumaki Naruto
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Waterfall of Love" AND a.name = "AnimeLover4Life" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION -- Hyuuga Hinata/Uzumaki Naruto
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Warped" AND a.name = "BountifullyBeautifullyBlessed" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION -- Hyuuga Hinata/Uzumaki Naruto
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Silver and Gold" AND a.name = "Hobgoblin" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Moonlight Sonata Antarctica" AND a.name = "" AND r.name = "Haruno Sakura / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Moonlight Sonata Antarctica" AND a.name = "" AND r.name = "Haruno Sakura / Uchiwa Sasuke / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Follow The Leader" AND a.name = "AstroLatte" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "One Day in December" AND a.name = "Night_Being" AND r.name = "Hyuuga Hinata / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Accounts of Perversion and Obscenity" AND a.name = "EvilFuzzy9" AND r.name = "Haruno Sakura / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Accounts of Perversion and Obscenity" AND a.name = "EvilFuzzy9" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Accounts of Perversion and Obscenity" AND a.name = "EvilFuzzy9" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "I Am NOT Going Through Puberty Again!" AND a.name = "EvilFuzzy9" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "I Am NOT Going Through Puberty Again!" AND a.name = "EvilFuzzy9" AND r.name = "Haruno Sakura / Uchiwa Sasuke"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naruto's Date" AND a.name = "Raptorcloak" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Boys And Their Toys" AND a.name = "6th_Street" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Safe and sound" AND a.name = "Walkingonempty" AND r.name = "Haruno Sakura / Uchiwa Sasuke"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Safe and sound" AND a.name = "Walkingonempty" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Safe and sound" AND a.name = "Walkingonempty" AND r.name = "Haruno Sakura / Hyuga Hinata / Uchiwa Sasuke / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Few Extra Minutes" AND a.name = "Blossomdreams" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Pink Medical Kunoichi" AND a.name = "Raptorcloak" AND r.name = "Haruno Sakura / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Violet Flower" AND a.name = "Raptorcloak" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Red Flute Player" AND a.name = "Raptorcloak" AND r.name = "Tayuya / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Purple Snake" AND a.name = "Raptorcloak" AND r.name = "Mitarashi Anko / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Yellow Sand Sickle" AND a.name = "Raptorcloak" AND r.name = "Temari / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Maroon Vixen" AND a.name = "Raptorcloak" AND r.name = "Fuka / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Golden Firefly" AND a.name = "Raptorcloak" AND r.name = "Hotaru / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Mint Beetle" AND a.name = "Raptorcloak" AND r.name = "Fuu / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Russet Doctor" AND a.name = "Raptorcloak" AND r.name = "Amaru / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Brown Hound" AND a.name = "Raptorcloak" AND r.name = "Inuzuka Hana / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Lavender Byakugan Hime" AND a.name = "Raptorcloak" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Blue Origami Angel" AND a.name = "Raptorcloak" AND r.name = "Konan / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Auburn Mizukage" AND a.name = "Raptorcloak" AND r.name = "Terumi Mei / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Black Nadeshiko Warrior" AND a.name = "Raptorcloak" AND r.name = "Shizuka / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Crimson Healer" AND a.name = "Raptorcloak" AND r.name = "Karin / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Glacial Princess" AND a.name = "Raptorcloak" AND r.name = "Kazahana Koyuki | Fujikaze Yukie / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Carmine Queen" AND a.name = "Raptorcloak" AND r.name = "Queen Sara / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Jasmine Legendary Sucker" AND a.name = "Raptorcloak" AND r.name = "Senju Tsunade / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Chestnut Weapons Minx" AND a.name = "Raptorcloak" AND r.name = "Tenten / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Chocolate Strawberry" AND a.name = "Raptorcloak" AND r.name = "Karui / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Chocolate Strawberry" AND a.name = "Raptorcloak" AND r.name = "Killer Bee / Uzumaki Kushina"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Seductress In Red" AND a.name = "Kyuubi16" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "New Rules" AND a.name = "Greentea815" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Kitsune's Seduction" AND a.name = "Erokage37" AND r.name = "Haruno Sakura / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Kitsune's Seduction" AND a.name = "Erokage37" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Kitsune's Seduction" AND a.name = "Erokage37" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Kitsune's Seduction" AND a.name = "Erokage37" AND r.name = "Tenten / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Kitsune's Seduction" AND a.name = "Erokage37" AND r.name = "Senju Tsunade / Uzumaki"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A False Assumption" AND a.name = "Luvsanime02" AND r.name = "Haruno Sakura / Uchiwa Sasuke / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Unplanned" AND a.name = "KuriQuinn" AND r.name = "Haruno Sakura / Uchiwa Sasuke"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Unplanned" AND a.name = "KuriQuinn" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Unplanned" AND a.name = "KuriQuinn" AND r.name = "Sai / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Unplanned" AND a.name = "KuriQuinn" AND r.name = "Nara Shikamaru / Temari"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Counterpoise" AND a.name = "Boxparade" AND r.name = "Haruno Sakura / Uchiwa Sasuke / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Snake and Toad" AND a.name = "Tonlor" AND r.name = "Mitarashi Anko / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Pervy Futa Party Games" AND a.name = "EvilFuzzy9" AND r.name = "Hyuuga Hinata / Uzumaki Naruko"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Pervy Futa Party Games" AND a.name = "EvilFuzzy9" AND r.name = "Haruno Sakura / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Pervy Futa Party Games" AND a.name = "EvilFuzzy9" AND r.name = "Sabaku no Temari / Tenten"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Completely Ruined" AND a.name = "GalacticSaz" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Us Into Pieces." AND a.name = "CountlessUntruths (KaliCephirot)" AND r.name = "Haruno Sakura / Uchiwa Sasuke / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Us Into Pieces." AND a.name = "CountlessUntruths (KaliCephirot)" AND r.name = "Haruno Sakura / Uchiwa Sasuke / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Artwork" AND a.name = "Sakiku" AND r.name = "Haruno Sakura / Hyuuga Hinata"
UNION -- Sakura/Ino
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "I Kissed A Girl" AND a.name = "AshleyTrecartin" AND r.name = "Haruno Sakura / Yamanaka Ino"
UNION -- Naruto/Hinata
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hinata, It can't be helped!" AND a.name = "Nacholant" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION -- Naruto/Hinata
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hands Tied" AND a.name = "InTheMist032000" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION -- Naruto/Hinata
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Dorks." AND a.name = "EroPrincess" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Woman's Touch" AND a.name = "HeavenHeaven" AND r.name = "Nara Shikamaru / Sabaku no Temari / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Woman's Touch" AND a.name = "HeavenHeaven" AND r.name = "Nara Shikamaru / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Woman's Touch" AND a.name = "HeavenHeaven" AND r.name = "Nara Shikamaru / Sabaku no Temari"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Pathos of the Shinobi" AND a.name = "Naratu" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Pathos of the Shinobi" AND a.name = "Naratu" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Pathos of the Shinobi" AND a.name = "Naratu" AND r.name = "Haruno Sakura / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hidden From Sunlight" AND a.name = "BunnyHoodlum" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hidden From Sunlight" AND a.name = "BunnyHoodlum" AND r.name = "Hyuuga Hanabi / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Last Prayer" AND a.name = "GraeFoxx" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Last Prayer" AND a.name = "GraeFoxx" AND r.name = "Uzumaki Naruto / Yuuhi Kurenai"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Last Prayer" AND a.name = "GraeFoxx" AND r.name = "Haruno Sakura / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Last Prayer" AND a.name = "GraeFoxx" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Last Prayer" AND a.name = "GraeFoxx" AND r.name = "Tenten / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Last Prayer" AND a.name = "GraeFoxx" AND r.name = "Temari / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Last Prayer" AND a.name = "GraeFoxx" AND r.name = "Mabui / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Last Prayer" AND a.name = "GraeFoxx" AND r.name = "Haruno Sakura / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fun With Clones" AND a.name = "Brujx (FallingForKonoha)" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Home is where my team is" AND a.name = "Tentendeservedbetter" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Home is where my team is" AND a.name = "Tentendeservedbetter" AND r.name = "Inuzuka Kiba / Tamaki"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Home is where my team is" AND a.name = "Tentendeservedbetter" AND r.name = "Nara Shikamaru / Sabaku no Temari"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Home is where my team is" AND a.name = "Tentendeservedbetter" AND r.name = "Haruno Sakura / Uchiwa Sasuke"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Home is where my team is" AND a.name = "Tentendeservedbetter" AND r.name = "Sai / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Home is where my team is" AND a.name = "Tentendeservedbetter" AND r.name = "Sarutobi Asuma / Yuuhi Kurenai"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Salvage" AND a.name = "WaterRolls" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Salvage" AND a.name = "WaterRolls" AND r.name = "Nara Shikamaru / Sabaku no Temari"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Life Without Kurama" AND a.name = "AxleBoost" AND r.name = "Namikaze Minato / Uzumaki Kushina"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Life Without Kurama" AND a.name = "AxleBoost" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Life Without Kurama" AND a.name = "AxleBoost" AND r.name = "Haruno Sakura / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Life Without Kurama" AND a.name = "AxleBoost" AND r.name = "Haruno Sakura / Uchiwa Sasuke"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Misconceptions" AND a.name = "WaterRolls" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Unusual Lesson" AND a.name = "PhantomKeeperQazs" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chasing You" AND a.name = "Wonderfuloz" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hinata's Plan" AND a.name = "" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hinata's Plan" AND a.name = "" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND a.name = "VulgarAssassin" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND a.name = "VulgarAssassin" AND r.name = "Haruno Sakura / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND a.name = "VulgarAssassin" AND r.name = "Kurotsuchi / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND a.name = "VulgarAssassin" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND a.name = "VulgarAssassin" AND r.name = "Uchiwa Sarada / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND a.name = "VulgarAssassin" AND r.name = "Senju Tsunade / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND a.name = "VulgarAssassin" AND r.name = "Hyuuga Hanabi / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND a.name = "VulgarAssassin" AND r.name = "Uchiwa Sasuke / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND a.name = "VulgarAssassin" AND r.name = "Sabaku no Temari / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND a.name = "VulgarAssassin" AND r.name = "Uchiwa Mikoto / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND a.name = "VulgarAssassin" AND r.name = "Haruno Sakura / Uchiwa Sasuke / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND a.name = "VulgarAssassin" AND r.name = "Inuzuka Hana / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND a.name = "VulgarAssassin" AND r.name = "Sai / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND a.name = "VulgarAssassin" AND r.name = "Karin / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND a.name = "VulgarAssassin" AND r.name = "Hyuuga Hinata / Shion / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND a.name = "VulgarAssassin" AND r.name = "Hyuuga Hinata / Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Icha Icha Starlet" AND a.name = "" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Icha Icha Starlet" AND a.name = "" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Invisible Favors" AND a.name = "DimiComi" AND r.name = "Hyuuga Hinata / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Invisible Favors" AND a.name = "DimiComi" AND r.name = "Tenten / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Invisible Favors" AND a.name = "DimiComi" AND r.name = "Haruno Sakura / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Invisible Favors" AND a.name = "DimiComi" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Invisible Favors" AND a.name = "DimiComi" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Invisible Favors" AND a.name = "DimiComi" AND r.name = "Nara Shikamaru / Sabaku no Temari"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Best for Us" AND a.name = "Asriah" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Seasons of Life" AND a.name = "Bom_Bidi_Bom" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Vacation" AND a.name = "KarlMower2003 (Entertainmensch)" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Cloud" AND a.name = "Raptorcloak" AND r.name = "Samui / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: The Yellow Flash and The Golden Goddess" AND a.name = "Raptorcloak" AND r.name = "Namikaze Minato / Senju Tsunade"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Firefly Heiress" AND a.name = "Raptorcloak" AND r.name = "Hotaru / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: Two Leaves" AND a.name = "Raptorcloak" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Sand" AND a.name = "Raptorcloak" AND r.name = "Sabaku no Temari / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: The Fox and The Cat" AND a.name = "Raptorcloak" AND r.name = "Nii Yugito / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and Two Clouds" AND a.name = "Raptorcloak" AND r.name = "Nii Yugito / Samui / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: Two Leaves and The Sand" AND a.name = "Raptorcloak" AND r.name = "Sabaku no Temari / Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf, The Cloud, and The Firefly" AND a.name = "Raptorcloak" AND r.name = "Hotaru / Samui / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Heavenly Harem" AND a.name = "Raptorcloak" AND r.name = "Hotaru / Nii Yugito / Samui / Shion / Sabaku no Temari / Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Lunch Break" AND a.name = "Balddog4" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Window Shopping" AND a.name = "FieldDranzer" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hinata of the White Lotus" AND a.name = "Froznx" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Hinata of the White Lotus" AND a.name = "Froznx" AND r.name = "Sarutobi Asuma / Yuuhi Kurenai"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Eternal Torment of Tayuya Uzumaki" AND a.name = "Ensou" AND r.name = "Fuu / Tayuya"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Uzumaki Family Values" AND a.name = "EvilFuzzy9" AND r.name = "Hyuuga Hinata / Uzumaki Naruko"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Master of Jiongu" AND a.name = "The Dark Dragon Emperor" AND r.name = "Fuu / Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Ninth Demon Lord: A Naruto Story" AND a.name = "RyoshiMorino" AND r.name = "Fuu / Hyuuga Hinata / Uzumaki Naruto / Tayuya"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naughty Naruto" AND a.name = "Atsuzi Tano" AND r.name = "Haruno Sakura / Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Red" AND a.name = "DandelionDreaming" AND r.name = "Haruno Sakura / Uzumaki Kushina"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Tone And Stroke" AND a.name = "Timberwolfe" AND r.name = "Haruno Sakura / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Uzumaki Naruko: To the Victor, the Spoils V2" AND a.name = "SeerKing" AND r.name = "Hyuuga Hinata / Tenten / Uzumaki Naruko / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Meet the Hyuga" AND a.name = "Solvdrage" AND r.name = "Hyuuga Hanabi / Hyuuga Hinata / Uzumaki Naruto / OFC"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "More than enough (M-Rated version)" AND a.name = "Petran" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "More than enough (M-Rated version)" AND a.name = "Petran" AND r.name = "Hyuuga Hanabi / Sarutobi Konohamaru"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Life is Good" AND a.name = "Lancecomwar" AND r.name = "Hyuuga Hinata / Haruno Sakura / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naruto & Hinata Harem Hunters" AND a.name = "MongolKahn" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naruto's Weakness" AND a.name = "Satoorihoya" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Love Me Right" AND a.name = "Tinyraver" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Diary of a White-Eyed Girl" AND a.name = "Zaphi Nashii" AND r.name = "Hyuuga Hinata / Hyuuga Neji / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fun at Resort" AND a.name = "Kairauchiha" AND r.name = "Haruno Sakura / Uchiwa Sasuke"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fun at Resort" AND a.name = "Kairauchiha" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naruto's Birthday Treat" AND a.name = "Thesaiyanjedi" AND r.name = "Haruno Sakura / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Particles of Dust" AND a.name = "Team Dragon Star" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Love In Bloom" AND a.name = "GirlsAndTwirls" AND r.name = "Haruno Sakura / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Shower Fun" AND a.name = "Lagseeing1123" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "If I Could Do It Over" AND a.name = "NarHina" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Family Time" AND a.name = "NHlemonfan" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Uzumaki Naruto" AND f.name = "Naruto"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Family Time" AND a.name = "NHlemonfan" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Namikaze Minato" AND f.name = "Naruto"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Family Time" AND a.name = "NHlemonfan" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Uzumaki Kushina" AND f.name = "Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "My Dear Weapons Mistress" AND a.name = "TsukikoUchu" AND r.name = "Haruno Sakura / Tenten"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sister in law, to sister in love!" AND a.name = "Robin.exe" AND r.name = "Hyuuga Hanabi / Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Sense of Duty" AND a.name = "MelodySincerelySong" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Lemonade" AND a.name = "Cszimm" AND r.name = "Hatake Kakashi / Haruno Sakura / Uchiwa Sasuke / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "More Than One Life" AND a.name = "Its-Levioooosaa" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Naruto Shippuden: Inner Hinata" AND a.name = "LiquidPhazon" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Ripe Habanero" AND a.name = "Raptorcloak" AND r.name = "Terumi Mei / Uzumaki Kushina / Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Yesterday Morning" AND a.name = "Midnight Rain19" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Unusual Lessons" AND a.name = "The Phantom Keeper" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Journal of Hope" AND a.name = "Masseffect-TxS" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Single Effect" AND a.name = "Midnight Rain19" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Love Is Not A Cage" AND a.name = "NightOwl27" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Red Thread" AND a.name = "Midnight Rain19" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "A Better Beginning" AND a.name = "Thundos" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Legion of Naruto" AND a.name = "DarkWolfy" AND r.name = "Hyuuga Hinata / Tayuya / Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Secrets and smiles" AND a.name = "Sabersoul13" AND r.name = "Uzumaki Naruto / Yamanaka Ino"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Fatal Attraction" AND a.name = "Aisha12894" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Impossible Car Dream" AND a.name = "Armageddon Angel" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Want Verus Need" AND a.name = "Armageddon Angel" AND r.name = "Hyuuga Hinata / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Anko's Roses" AND a.name = "TakumaAngel" AND r.name = "Hatake Kakashi / Mitarashi Anko"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Ties that Bind Us: A Naruto and Kushina Love Story" AND a.name = "Tonlor" AND r.name = "Uzumaki Kushina / Uzumaki Naruto"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Willingly Snared in the Widow's Web" AND a.name = "Major Mike Powell III" AND r.name = "Tracer | Lena Oxton / Widowmaker | Amelie Lacroix"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "When One Domino Falls" AND a.name = "Warchief" AND r.name = "James Raynor / Sarah Kerrigan"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "When One Domino Falls" AND a.name = "Warchief" AND r.name = "Magistrate / November 'Nova' Terra"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "En'leass*" AND a.name = "Fen_Assan" AND r.name = "Geralt z Rivii | Geralt of Rivia / Yennefer z Vengerbergu | Yennefer of Vengerberg"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Yours Truly" AND a.name = "Fen_Assan" AND r.name = "Geralt z Rivii | Geralt of Rivia / Yennefer z Vengerbergu | Yennefer of Vengerberg"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Like a Damn Princess" AND a.name = "Luddleston" AND r.name = "Geralt z Rivii | Geralt of Rivia / Yennefer z Vengerbergu | Yennefer of Vengerberg"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Wager" AND a.name = "Eravalefantasy" AND r.name = "Geralt z Rivii | Geralt of Rivia / Yennefer z Vengerbergu | Yennefer of Vengerberg"
UNION
SELECT ff.id, r.id FROM `relations` r, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "Novigrad: An Interlude" AND a.name = "Crimson_Coin" AND r.name = "Geralt z Rivii | Geralt of Rivia / Yennefer z Vengerbergu | Yennefer of Vengerberg";