-- USE ffb_main;

/*
 * Link
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
SELECT "https://archiveofourown.org/works/117626", ff.id FROM fanfictions ff INNER JOIN authors a ON a.id=ff.author_id WHERE ff.name = "The Red Dress" AND a.name = "QuidditchMom (eibbil_one)";

/*
 * Fanfictions fandoms
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
SELECT ff.id, f.id FROM `fandoms` f, `fanfictions` ff INNER JOIN `authors` a ON a.id = ff.author_id WHERE ff.name = "The Red Dress" AND a.name = "QuidditchMom (eibbil_one)" AND f.name = "Harry Potter - Wizarding World";

/*
 * Fanfictions relations
 */
DELETE FROM `fanfictions_relations`; 
INSERT INTO `fanfictions_relations`
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Necessary" AND a.name = "Ariaojou" AND r.name = "Angelise Ikaruga Misurugi / Tusk"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Life in the New World" AND a.name = "Jm1681" AND r.name = "Angelise Ikaruga Misurugi / Hilda Schlievogt / Tusk"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Waiting" AND a.name = "Me413" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Lost Love Letters of Cloud Strife" AND a.name = "Somebody's Nightmare" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Comeback Kid" AND a.name = "Somebody's Nightmare" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Innocent Feelings" AND a.name = "Senigata" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Emerald Dream" AND a.name = "Senigata" AND r.name = "Cloud Strife / Jessie / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Golden Respite" AND a.name = "Senigata" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Lost Heart" AND a.name = "Senigata" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Fractured Mind" AND a.name = "Senigata" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Starlight" AND a.name = "Senigata" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Post Crisis" AND a.name = "Senigata" AND r.name = "Cloud Strife / Tifa Lockheart"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Final Fantasy: Guardians" AND a.name = "VeryBerry96" AND r.name = "Tidus / Yuna"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Twist in Fate" AND a.name = "IAltoSax" AND r.name = "Auron / OC"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND r.name = "Hermione Granger / Luna Lovegood"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND r.name = "Ginevra 'Ginny' Weasley / Luna Lovegood"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND r.name = "Harry Potter / Luna Lovegood"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND r.name = "Ginevra 'Ginny' Weasley / Hermione Granger"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND r.name = "Harry Potter / Hermione Granger"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Lost in Muggle London" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Perils of Too Much Calming Potion" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Perils of Too Much Calming Potion" AND a.name = "Phoenixgal" AND r.name = "Harry Potter / OMC"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND r.name = "Alicia Spinnet / Ginevra 'Ginny' Weasley"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Family" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "No Rules" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "No Rules" AND a.name = "Phoenixgal" AND r.name = "Dean Thomas / Ginevra 'Ginny' Weasley"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Muggle Relations" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Muggle Relations" AND a.name = "Phoenixgal" AND r.name = "Harry Potter / OMC"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Family Time" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Lucky Kids" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Expanding Bed Charms" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Expanding Bed Charms" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / OFC"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Not a Phase" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Not a Phase" AND a.name = "Phoenixgal" AND r.name = "Albus Severus Potter / Scorpius Malfoy"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Awkward Lunch" AND a.name = "Phoenixgal" AND r.name = "Albus Severus Potter / Scorpius Malfoy"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Awkward Lunch" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Awkward Lunch" AND a.name = "Phoenixgal" AND r.name = "Harry Potter / Neville Longbottom"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "At the Hogsnock Baths" AND a.name = "Phoenixgal" AND r.name = "Harry Potter / Neville Longbottom"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter / OFC"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND r.name = "Albus Severus Potter / Scorpius Malfoy"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND r.name = "Harry Potter / Neville Longbottom"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Greek Holiday" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Greek Holiday" AND a.name = "Phoenixgal" AND r.name = "Harry Potter / OFC"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Greek Holiday" AND a.name = "Phoenixgal" AND r.name = "Hermione Granger / Ronald 'Ron' Weasley"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND r.name = "Ginevra 'Ginny' Weasley / Harry Potter"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Best and the Brightest" AND a.name = "Tjs_whatnot" AND r.name = "Harry Potter / Nymphadora Tonks"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND r.name = "Harry Potter / Pansy Parkinson"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "From One Good Time To Another" AND a.name = "Scarletladyy" AND r.name = "Harry Potter / Pansy Parkinson"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "From One Good Time To Another" AND a.name = "Scarletladyy" AND r.name = "Draco Malfoy / Pansy Parkinson"
UNION
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "Grey Haven" AND a.name = "QuidditchMom (eibbil_one)" AND r.name = "Harry Potter / Hermione Granger"
UNION -- Hermione Granger/Harry Potter
SELECT ff.id, r.id FROM relations r, fanfictions ff INNER JOIN authors a ON a.id = ff.author_id WHERE ff.name = "The Red Dress" AND a.name = "QuidditchMom (eibbil_one)" AND r.name = "Harry Potter / Hermione Granger";

/*
 * Fanfictions characters
 */
DELETE FROM `fanfictions_characters`; 
INSERT INTO `fanfictions_characters`(`fanfiction_id`, `character_id`) 
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Dancing Dragonflies" AND c.name = "Angelise Ikaruga Misurugi" AND a.name = "Jayf" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Dancing Dragonflies" AND c.name = "Taylor Hebert" AND a.name = "Jayf" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "Parahumans Series - Wildbow"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Necessary" AND c.name = "Angelise Ikaruga Misurugi"  AND a.name = "Ariaojou" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Necessary" AND c.name = "Hilda Schlievogt"  AND a.name = "Ariaojou" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Necessary" AND c.name = "Tusk"  AND a.name = "Ariaojou" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Life in the New World" AND c.name = "Angelise Ikaruga Misurugi"  AND a.name = "Jm1681" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Life in the New World" AND c.name = "Hilda Schlievogt"  AND a.name = "Jm1681" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Life in the New World" AND c.name = "Tusk"  AND a.name = "Jm1681" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Life in the New World" AND c.name = "Salamandinay"  AND a.name = "Jm1681" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "We'll not die!" AND c.name = "Angelise Ikaruga Misurugi"  AND a.name = "Cj Spencer" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "We'll not die!" AND c.name = "Tusk"  AND a.name = "Cj Spencer" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "We'll not die!" AND c.name = "Momoka Oginome"  AND a.name = "Cj Spencer" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Cross Ange: The Knight of Hilda" AND c.name = "Angelise Ikaruga Misurugi"  AND a.name = "Eric Michael Kline" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Cross Ange: The Knight of Hilda" AND c.name = "Hilda Schlievogt"  AND a.name = "Eric Michael Kline" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Cross Ange: The Knight of Hilda" AND c.name = "Tusk"  AND a.name = "Eric Michael Kline" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Cross Ange: The Knight of Hilda" AND c.name = "OC"  AND a.name = "Eric Michael Kline" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Comeback Kid" AND c.name = "Cloud Strife"  AND a.name = "Somebody's Nightmare" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Comeback Kid" AND c.name = "Tifa Lockheart"  AND a.name = "Somebody's Nightmare" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Comeback Kid" AND c.name = "Zangan"  AND a.name = "Somebody's Nightmare" AND a.id=ff.author_id AND c.fandom_id = f.id AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Lost Love Letters of Cloud Strife" AND a.name = "Somebody's Nightmare" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Lost Love Letters of Cloud Strife" AND a.name = "Somebody's Nightmare" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id  FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Waiting" AND a.name = "Me413" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart" AND f.name = "Final Fantasy VII" 
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Waiting" AND a.name = "Me413" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Waiting" AND a.name = "Me413" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Marlene Wallace"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Waiting" AND a.name = "Me413" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Denzel"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Innocent Feelings" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Innocent Feelings" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Journey of a Barmaid" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Journey of a Barmaid" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Barret Wallace"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Journey of a Barmaid" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Biggs"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Journey of a Barmaid" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Jessie"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Emerald Dream" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Jessie"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Emerald Dream" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Emerald Dream" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Golden Respite" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Golden Respite" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Golden Respite" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Barret Wallace"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Golden Respite" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Aerith Gainsborough"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Lost Heart" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Lost Heart" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Lost Heart" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Vincent Valentine"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Fractured Mind" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Fractured Mind" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Fractured Mind" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cid Highwind"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Fractured Mind" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Barret Wallace"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Starlight" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Starlight" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Post Crisis" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cloud Strife"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Post Crisis" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tifa Lockheart"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Post Crisis" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Marlene Wallace"  AND f.name = "Final Fantasy VII"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Post Crisis" AND a.name = "Senigata" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Denzel"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Gunslinger" AND a.name = "Nataku's Wrath" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Vincent Valentine"  AND f.name = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Final Fantasy: Guardians" AND a.name = "VeryBerry96" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Final Fantasy: Guardians" AND a.name = "VeryBerry96" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Final Fantasy: Guardians" AND a.name = "VeryBerry96" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Rikku"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Final Fantasy: Guardians" AND a.name = "VeryBerry96" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OC"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Twist in Fate" AND a.name = "IAltoSax" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Auron"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Twist in Fate" AND a.name = "IAltoSax" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OC"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Final Fantasy X: All Bets Are Off" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Final Fantasy X: All Bets Are Off" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "All Bets Are Off: The Sequel" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "All Bets Are Off: The Sequel" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "FFX: All Bets Are Off 3: Tidus & Yuna Forever" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "FFX: All Bets Are Off 3: Tidus & Yuna Forever" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "FFX: All Bets Are Off 4: For the Love of Tidus" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "FFX: All Bets Are Off 4: For the Love of Tidus" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "All Bets Are Off V: The Conclusion" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "All Bets Are Off V: The Conclusion" AND a.name = "Selphie800" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Spira's Dream" AND a.name = "M'jai" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Spira's Dream" AND a.name = "M'jai" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Spira's Sphere" AND a.name = "M'jai" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Spira's Sphere" AND a.name = "M'jai" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Spira's Revenge" AND a.name = "M'jai" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tidus"  AND f.name = "Final Fantasy X / X-2"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Spira's Revenge" AND a.name = "M'jai" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Yuna"  AND f.name = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The More the Merrier" AND a.name = "Allyrion" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Mixed Up Dreams" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Mixed Up Dreams" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Mixed Up Dreams" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Lost in Muggle London" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Lost in Muggle London" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Lost in Muggle London" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Perils of Too Much Calming Potion" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Perils of Too Much Calming Potion" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Perils of Too Much Calming Potion" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Perils of Too Much Calming Potion" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Perils of Too Much Calming Potion" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Arthur Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Alicia Spinnet"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "William 'Bill' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Edward 'Teddy' Lupin"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Second String" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Perceval 'Percy' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Family" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Family" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Family" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Family" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Family" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Molly Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Family" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Family" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Sirius Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "No Rules" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "No Rules" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Muggle Relations" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Muggle Relations" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Muggle Relations" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Muggle Relations" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Family Time" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Family Time" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Family Time" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Charles 'Charlie' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Lucky Kids" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Lucky Kids" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Lucky Kids" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Sirius Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Lucky Kids" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Severus Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Lucky Kids" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Luna Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Lucky Kids" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dudley Dursley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Expanding Bed Charms" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Expanding Bed Charms" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Not a Phase" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Not a Phase" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Not a Phase" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Not a Phase" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OFC"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Awkward Lunch" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Awkward Lunch" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Scorpius Malfoy"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Awkward Lunch" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Severus Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Awkward Lunch" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "At the Hogsnock Baths" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "At the Hogsnock Baths" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "At the Hogsnock Baths" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "At the Hogsnock Baths" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Scorpius Malfoy"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Severus Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Sirius Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Luna Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Kreacher"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Sirius Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Severus Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Outsider" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Greek Holiday" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Greek Holiday" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Greek Holiday" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Greek Holiday" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OFC"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Severus Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Sirius Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Luna Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Roxanne Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Scorpius Malfoy"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Arthur Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Best and the Brightest" AND a.name = "Tjs_whatnot" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Best and the Brightest" AND a.name = "Tjs_whatnot" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dean Thomas"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Seamus Finnigan"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "Fancy That" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley"  AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "From One Good Time To Another" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "From One Good Time To Another" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter"  AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff,  characters c, authors a, fandoms f WHERE ff.name = "From One Good Time To Another" AND a.name = "Scarletladyy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson"  AND f.name = "Harry Potter - Wizarding World"
UNION/************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff, characters c, authors a, fandoms f WHERE ff.name = "Grey Haven" AND a.name = "QuidditchMom (eibbil_one)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff, characters c, authors a, fandoms f WHERE ff.name = "Grey Haven" AND a.name = "QuidditchMom (eibbil_one)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION/************************************************************************************************************************************/
SELECT ff.id, c.id FROM fanfictions ff, characters c, authors a, fandoms f WHERE ff.name = "The Red Dress" AND a.name = "QuidditchMom (eibbil_one)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM fanfictions ff, characters c, authors a, fandoms f WHERE ff.name = "The Red Dress" AND a.name = "QuidditchMom (eibbil_one)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
;

/*
 * Fanfictions tags
 */
DELETE FROM `fanfictions_tags`;
INSERT INTO `fanfictions_tags`(`fanfiction_id`, `tag_id`) 
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Dancing Dragonflies" AND t.name = "Mecha" AND a.name = "Jayf"
UNION 
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Dancing Dragonflies" AND t.name = "Dragons" AND a.name = "Jayf"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Necessary" AND t.name = "Mecha" AND a.name = "Ariaojou"
UNION 
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Necessary" AND t.name = "Dragons" AND a.name = "Ariaojou"
UNION 
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Necessary" AND t.name = "Romance" AND a.name = "Ariaojou"
UNION 
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Necessary" AND t.name = "Friendship" AND a.name = "Ariaojou"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Life in the New World" AND t.name = "Mecha" AND a.name = "Jm1681"
UNION 
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Life in the New World" AND t.name = "Dragons" AND a.name = "Jm1681"
UNION 
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Life in the New World" AND t.name = "Post-canon" AND a.name = "Jm1681"
UNION 
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Life in the New World" AND t.name = "Friendship" AND a.name = "Jm1681"
UNION 
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Life in the New World" AND t.name = "Family" AND a.name = "Jm1681"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "We'll not die!" AND t.name = "Mecha" AND a.name = "Cj Spencer"
UNION 
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "We'll not die!" AND t.name = "Dragons" AND a.name = "Cj Spencer"
UNION 
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "We'll not die!" AND t.name = "Romance" AND a.name = "Cj Spencer"
UNION 
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "We'll not die!" AND t.name = "Hurt | Comfort" AND a.name = "Cj Spencer"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Cross Ange: The Knight of Hilda" AND t.name = "Mecha" AND a.name = "Eric Michael Kline"
UNION 
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Cross Ange: The Knight of Hilda" AND t.name = "Dragons" AND a.name = "Eric Michael Kline"
UNION 
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Cross Ange: The Knight of Hilda" AND t.name = "Sexual content" AND a.name = "Eric Michael Kline"
UNION 
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Cross Ange: The Knight of Hilda" AND t.name = "AU" AND a.name = "Eric Michael Kline"
UNION 
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Cross Ange: The Knight of Hilda" AND t.name = "Adventure" AND a.name = "Eric Michael Kline"
UNION 
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Cross Ange: The Knight of Hilda" AND t.name = "Drama" AND a.name = "Eric Michael Kline"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "The Comeback Kid" AND t.name = "Post-canon" AND a.name = "Somebody's Nightmare"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "The Comeback Kid" AND t.name = "Hurt | Comfort" AND a.name = "Somebody's Nightmare"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "The Comeback Kid" AND t.name = "Romance" AND a.name = "Somebody's Nightmare"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "The Lost Love Letters of Cloud Strife" AND t.name = "Romance" AND a.name = "Somebody's Nightmare"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "The Lost Love Letters of Cloud Strife" AND t.name = "Hurt | Comfort" AND a.name = "Somebody's Nightmare"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Waiting" AND t.name = "Friendship" AND a.name = "Me413"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Waiting" AND t.name = "Humor" AND a.name = "Me413"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Waiting" AND t.name = "Post-canon" AND a.name = "Me413"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Innocent Feelings" AND t.name = "Romance" AND a.name = "Senigata"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Innocent Feelings" AND t.name = "Friendship" AND a.name = "Senigata"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Innocent Feelings" AND t.name = "Pre-canon" AND a.name = "Senigata"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Journey of a Barmaid" AND t.name = "Angst" AND a.name = "Senigata"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Emerald Dream" AND t.name = "Angst" AND a.name = "Senigata"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Emerald Dream" AND t.name = "Friendship" AND a.name = "Senigata"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Golden Respite" AND t.name = "Friendship" AND a.name = "Senigata"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Lost Heart" AND t.name = "Drama" AND a.name = "Senigata"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Lost Heart" AND t.name = "Angst" AND a.name = "Senigata"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Fractured Mind" AND t.name = "Drama" AND a.name = "Senigata"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Fractured Mind" AND t.name = "Angst" AND a.name = "Senigata"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Starlight" AND t.name = "Romance" AND a.name = "Senigata"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Post Crisis" AND t.name = "Romance" AND a.name = "Senigata"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Post Crisis" AND t.name = "Family" AND a.name = "Senigata"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Post Crisis" AND t.name = "Post-canon" AND a.name = "Senigata"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "The Gunslinger" AND t.name = "Adventure" AND a.name = "Nataku's Wrath"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Final Fantasy: Guardians" AND t.name = "Friendship" AND a.name = "VeryBerry96"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Final Fantasy: Guardians" AND t.name = "Adventure" AND a.name = "VeryBerry96"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Twist in Fate" AND t.name = "Romance" AND a.name = "IAltoSax"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Twist in Fate" AND t.name = "Hurt | Comfort" AND a.name = "IAltoSax"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Final Fantasy X: All Bets Are Off" AND t.name = "Romance" AND a.name = "Selphie800"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Final Fantasy X: All Bets Are Off" AND t.name = "Humor" AND a.name = "Selphie800"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Final Fantasy X: All Bets Are Off" AND t.name = "AU" AND a.name = "Selphie800"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "All Bets Are Off: The Sequel" AND t.name = "Romance" AND a.name = "Selphie800"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "All Bets Are Off: The Sequel" AND t.name = "Drama" AND a.name = "Selphie800"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "All Bets Are Off: The Sequel" AND t.name = "AU" AND a.name = "Selphie800"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "FFX: All Bets Are Off 3: Tidus & Yuna Forever" AND t.name = "Romance" AND a.name = "Selphie800"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "FFX: All Bets Are Off 3: Tidus & Yuna Forever" AND t.name = "Drama" AND a.name = "Selphie800"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "FFX: All Bets Are Off 3: Tidus & Yuna Forever" AND t.name = "AU" AND a.name = "Selphie800"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "FFX: All Bets Are Off 4: For the Love of Tidus" AND t.name = "Romance" AND a.name = "Selphie800"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "FFX: All Bets Are Off 4: For the Love of Tidus" AND t.name = "AU" AND a.name = "Selphie800"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "All Bets Are Off V: The Conclusion" AND t.name = "Romance" AND a.name = "Selphie800"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "All Bets Are Off V: The Conclusion" AND t.name = "AU" AND a.name = "Selphie800"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Neo-Genesis" AND t.name = "Adventure" AND a.name = "M'jai"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Spira's Dream" AND t.name = "Adventure" AND a.name = "M'jai"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Spira's Dream" AND t.name = "Post-canon" AND a.name = "M'jai"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Spira's Sphere" AND t.name = "Adventure" AND a.name = "M'jai"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Spira's Sphere" AND t.name = "Post-canon" AND a.name = "M'jai"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Spira's Revenge" AND t.name = "Adventure" AND a.name = "M'jai"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Spira's Revenge" AND t.name = "Post-canon" AND a.name = "M'jai"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "The More the Merrier" AND t.name = "Sexual content" AND a.name = "Allyrion"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "The More the Merrier" AND t.name = "Multi" AND a.name = "Allyrion"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "The More the Merrier" AND t.name = "Lesbian / Yuri" AND a.name = "Allyrion"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Mixed Up Dreams" AND t.name = "Family" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Lost in Muggle London" AND t.name = "Angst" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Lost in Muggle London" AND t.name = "Hurt | Comfort" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Lost in Muggle London" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "The Perils of Too Much Calming Potion" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Second String" AND t.name = "Family" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Second String" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Family" AND t.name = "Family" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "No Rules" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "No Rules" AND t.name = "Angst" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Muggle Relations" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Family Time" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Family Time" AND t.name = "Family" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Lucky Kids" AND t.name = "Family" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Expanding Bed Charms" AND t.name = "Hurt | Comfort" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Expanding Bed Charms" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Not a Phase" AND t.name = "Friendship" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Not a Phase" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Awkward Lunch" AND t.name = "Family" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "At the Hogsnock Baths" AND t.name = "Friendship" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "At the Hogsnock Baths" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Perfect Gingerbread Men" AND t.name = "Family" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Outsider" AND t.name = "Angst" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Outsider" AND t.name = "Hurt | Comfort" AND a.name = "Phoenixgal"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Outsider" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Greek Holiday" AND t.name = "Sexual content" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "The Daily Prophet Is Still a Gossip Rag" AND t.name = "Family" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Best and the Brightest" AND t.name = "Sexual content" AND a.name = "Tjs_whatnot"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Fancy That" AND t.name = "Sexual content" AND a.name = "Scarletladyy"
UNION
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Fancy That" AND t.name = "Post-canon" AND a.name = "Scarletladyy"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "From One Good Time To Another" AND t.name = "Sexual content" AND a.name = "Scarletladyy"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "Grey Haven" AND t.name = "AU" AND a.name = "QuidditchMom (eibbil_one)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM tags t, fanfictions ff INNER JOIN authors a on a.id=ff.author_id WHERE ff.name = "The Red Dress" AND t.name = "AU" AND a.name = "QuidditchMom (eibbil_one)";