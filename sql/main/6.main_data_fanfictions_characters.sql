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
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus Dumbledore
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Arthur Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Arthur Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Molly Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Molly Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cornelius Fudge
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cornelius Fudge" AND f.name = "Harry Potter - Wizarding World"
UNION -- Rufus Scrimgeour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Rufus Scrimgeour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius Black
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Remus Lupin
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Remus Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION -- Nymphadora Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Alastor “Mad-Eye” Moody
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Alastor 'Mad-Eye' Moody" AND f.name = "Harry Potter - Wizarding World"
UNION -- Kingsley Shacklebolt
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Kingsley Shacklebolt" AND f.name = "Harry Potter - Wizarding World"
UNION -- Minerva McGonagall
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Minerva McGonagall" AND f.name = "Harry Potter - Wizarding World"
UNION -- Poppy Pomfrey
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Poppy Pomfrey" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dobby
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dobby" AND f.name = "Harry Potter - Wizarding World"
UNION -- Kreacher (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Kreacher" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fred Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Frederick 'Fred' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- George Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginevra Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Angelina Johnson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Angelina Johnson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Padma Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Padma Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Seamus Finnigan
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Seamus Finnigan" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dean Thomas
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dean Thomas" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Vernon Dursley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Vernon Dursley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Petunia Evans Dursley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Petunia Evans Dursley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dudley Dursley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dudley Dursley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Arabella Figg
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter - Wizarding World""Harry Potter and the Unbreakable Bond""" AND a.name = "Leviathan0999" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Arabella Figg" AND f.name = "Harry Potter - Wizarding World"
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
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Trouble, with a Capital T" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Edward 'Teddy' Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "They spurn the holiday spirit in their usual way" AND a.name = "Luvsanime02" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "They spurn the holiday spirit in their usual way" AND a.name = "Luvsanime02" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Birthday Surprise" AND a.name = "LRThunder" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Birthday Surprise" AND a.name = "LRThunder" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Walking the Walk" AND a.name = "Chazpure" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Nymphadora Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Walking the Walk" AND a.name = "Chazpure" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Severus Snape
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Walking the Walk" AND a.name = "Chazpure" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Severus Snape" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Walking the Walk" AND a.name = "Chazpure" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Your secret fantasy" AND a.name = "VanessaWolfie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Your secret fantasy" AND a.name = "VanessaWolfie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- George Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Your secret fantasy" AND a.name = "VanessaWolfie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fred Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Your secret fantasy" AND a.name = "VanessaWolfie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Frederick 'Fred' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Your secret fantasy" AND a.name = "VanessaWolfie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ron Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Your secret fantasy" AND a.name = "VanessaWolfie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Change of Heart" AND a.name = "Ragdoll" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy Parkinson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Change of Heart" AND a.name = "Ragdoll" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Addictive" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy Parkinson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Addictive" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Restorative" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Restorative" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Who Seems a Beast (but secretly dreams of beauty)" AND a.name = "Songquake" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Brown" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Who Seems a Beast (but secretly dreams of beauty)" AND a.name = "Songquake" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Flood" AND a.name = "Holyfant" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Flood" AND a.name = "Holyfant" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Flood" AND a.name = "Holyfant" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "All My Wildest Dreams" AND a.name = "Walgesang" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "All My Wildest Dreams" AND a.name = "Walgesang" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dorm Mates" AND a.name = "BananasPyjamas" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Brown" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dorm Mates" AND a.name = "BananasPyjamas" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dorm Mates" AND a.name = "BananasPyjamas" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The 69" AND a.name = "LRThunder" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The 69" AND a.name = "LRThunder" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The 69" AND a.name = "LRThunder" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The 69" AND a.name = "LRThunder" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Falling Towards Something (It Might Just Be You)" AND a.name = "Thewaywedo33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Falling Towards Something (It Might Just Be You)" AND a.name = "Thewaywedo33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Falling Towards Something (It Might Just Be You)" AND a.name = "Thewaywedo33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Falling Towards Something (It Might Just Be You)" AND a.name = "Thewaywedo33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Falling Towards Something (It Might Just Be You)" AND a.name = "Thewaywedo33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ron Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Love Story in Four Acts" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gabrielle Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Love Story in Four Acts" AND a.name = "Inell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Intricacies of Magical Etiquette" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Intricacies of Magical Etiquette" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "HBG Mini-series: Lily" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "HBG Mini-series: Lily" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "HBG Mini-series: Lily" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Alice Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "HBG Mini-series: Lily" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Alice Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "HBG Mini-series: Pureblood Wives" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "HBG Mini-series: Pureblood Wives" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "HBG Mini-series: Pureblood Wives" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "HBG Mini-series: Pureblood Wives" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Prewett Cup" AND a.name = "Ap_aelfwine" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Prewett Cup" AND a.name = "Ap_aelfwine" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Prewett Cup" AND a.name = "Ap_aelfwine" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Prewett Cup" AND a.name = "Ap_aelfwine" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Prewett Cup" AND a.name = "Ap_aelfwine" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Prewett Cup" AND a.name = "Ap_aelfwine" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Molly Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Prewett Cup" AND a.name = "Ap_aelfwine" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Molly Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "An Odd Turn of Events" AND a.name = "IridescentLugia" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "An Odd Turn of Events" AND a.name = "IridescentLugia" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Night Moves" AND a.name = "NidoranDuran" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Night Moves" AND a.name = "NidoranDuran" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Night Moves" AND a.name = "NidoranDuran" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lavender Brown
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Night Moves" AND a.name = "NidoranDuran" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Brown" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Guest Bedroom" AND a.name = "Holyfant" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Guest Bedroom" AND a.name = "Holyfant" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Guest Bedroom" AND a.name = "Holyfant" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Mirrors And Opposites" AND a.name = "Lightofdaye" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Mirrors And Opposites" AND a.name = "Lightofdaye" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Mirrors And Opposites" AND a.name = "Lightofdaye" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The List" AND a.name = "Olivieblake" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The List" AND a.name = "Olivieblake" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The List" AND a.name = "Olivieblake" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The List" AND a.name = "Olivieblake" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Friends & Lovers" AND a.name = "TarnishedArmour" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Friends & Lovers" AND a.name = "TarnishedArmour" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Friends & Lovers" AND a.name = "TarnishedArmour" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Boy Who Wanted Her" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Boy Who Wanted Her" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Boy Who Wanted Her" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Boy Who Was Hers" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Boy Who Was Hers" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Boy Who Was Hers" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How We Live" AND a.name = "Wendings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How We Live" AND a.name = "Wendings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How We Live" AND a.name = "Wendings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How We Live" AND a.name = "Wendings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Molly Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How We Live" AND a.name = "Wendings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Molly Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Arthur Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How We Live" AND a.name = "Wendings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Arthur Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How We Live" AND a.name = "Wendings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dean Thomas
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How We Live" AND a.name = "Wendings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dean Thomas" AND f.name = "Harry Potter - Wizarding World"
UNION -- Bill Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How We Live" AND a.name = "Wendings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "William 'Bill' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How We Live" AND a.name = "Wendings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Victoire Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How We Live" AND a.name = "Wendings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Victoire Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gabrielle Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How We Live" AND a.name = "Wendings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gabrielle Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Teddy Lupin
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How We Live" AND a.name = "Wendings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Edward 'Teddy' Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION -- Andromeda Black Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How We Live" AND a.name = "Wendings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Andromeda Black Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Seamus Finnigan
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How We Live" AND a.name = "Wendings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Seamus Finnigan" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How We Live" AND a.name = "Wendings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Infernal Plan" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Infernal Plan" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Infernal Plan" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Infernal Plan" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley " AND f.name = "Harry Potter - Wizarding World"
UNION -- Remus Lupin
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Infernal Plan" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Remus Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION -- Nymphadora Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Infernal Plan" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Original Female Character(s)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Infernal Plan" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OFC" AND f.name = "Harry Potter - Wizarding World"
UNION -- Original Male Character(s)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Infernal Plan" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OMC" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus Dumbledore
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Infernal Plan" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Alastor “Mad-Eye” Moody
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Infernal Plan" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Alastor 'Mad-Eye' Moody" AND f.name = "Harry Potter - Wizarding World"
UNION -- Severus Snape
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Infernal Plan" AND a.name = "Likebunnies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Severus Snape" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Center of Attention" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy Parkinson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Center of Attention" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Center of Attention" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Vein of Gold" AND a.name = "Pelespen" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Vein of Gold" AND a.name = "Pelespen" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Vein of Gold" AND a.name = "Pelespen" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Vein of Gold" AND a.name = "Pelespen" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Encounters After the Yule Ball" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cho Chang
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Encounters After the Yule Ball" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cho Chang" AND f.name = "Harry Potter - Wizarding World"
UNION -- Padma Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Encounters After the Yule Ball" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Padma Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Encounters After the Yule Ball" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Encounters After the Yule Ball" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Encounters After the Yule Ball" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Love You Completely" AND a.name = "Starstruck1986" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Love You Completely" AND a.name = "Starstruck1986" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Love You Completely" AND a.name = "Starstruck1986" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Chance Meeting" AND a.name = "Clell65619" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Chance Meeting" AND a.name = "Clell65619" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Chance Meeting" AND a.name = "Clell65619" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "You're my what?" AND a.name = "Scruffy1" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "You're my what?" AND a.name = "Scruffy1" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gabrielle Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Not On His List" AND a.name = "Musyc" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Not On His List" AND a.name = "Musyc" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gabrielle Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Troika" AND a.name = "Lily_pearl (lilyandjoey)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Troika" AND a.name = "Lily_pearl (lilyandjoey)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Troika" AND a.name = "Lily_pearl (lilyandjoey)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Padma Patil" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Subservient Housewives and other Mythical Creatures" AND a.name = "Voxangelus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Subservient Housewives and other Mythical Creatures" AND a.name = "Voxangelus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Subservient Housewives and other Mythical Creatures" AND a.name = "Voxangelus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hannah Abbott" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Ice Princess" AND a.name = "LuanMao" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Marriage Contracts" AND a.name = "Clell65619" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Live! For God's Sake, Live!" AND a.name = "HarryGinnyTonks" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Lesson in Propriety" AND a.name = "Dime" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Lesson in Propriety" AND a.name = "Dime" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Confessions Under A Night Sky" AND a.name = "Snowblind12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Threesomes
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Confessions Under A Night Sky" AND a.name = "Snowblind12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Moresomes
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Confessions Under A Night Sky" AND a.name = "Snowblind12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- James Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius Black
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Remus Lupin
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Remus Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus Dumbledore
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Bill Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "William 'Bill' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Charlie Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Charles 'Charlie' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tom Riddle | Voldemort
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Place To Call Home" AND a.name = "Missmusicluver" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tom Marvolo Riddle | Voldemort" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Unsealed" AND a.name = "Esama" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Slumber Party" AND a.name = "Femmeslyth" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Slumber Party" AND a.name = "Femmeslyth" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley " AND f.name = "Harry Potter - Wizarding World"
UNION -- Nymphadora Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Slumber Party" AND a.name = "Femmeslyth" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Memorable Farewell" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Memorable Farewell" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley " AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Yearning Hearts" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lavender Brown
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Yearning Hearts" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Brown" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Yearning Hearts" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Yearning Hearts" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Yearning Hearts" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Yearning Hearts" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Padma Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Yearning Hearts" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Padma Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley (mentioned)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Yearning Hearts" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- George Weasley (Mentioned)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Yearning Hearts" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Molly Weasley (mentioned)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Yearning Hearts" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Molly Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Open to Love" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Open to Love" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Open to Love" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Things to Do in Berlin (When You're Bored)" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Things to Do in Berlin (When You're Bored)" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Normal Things" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Normal Things" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Normal Things" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Normal Things" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom (mentioned)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Normal Things" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Girl Who Topped" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Girl Who Topped" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom (mentioned)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Girl Who Topped" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood (Mentioned)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Girl Who Topped" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Katie Bell
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Katie Bell" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hannah Abbott
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hannah Abbott" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ernie Macmillan
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ernie Macmillan" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lucius Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lucius Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan Bones
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sort of Friends and Lovers" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Various Climaxes" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Various Climaxes" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley (mentioned)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Various Climaxes" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Luna's Desires" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Luna's Desires" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Luna's Desires" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Luna's Desires" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy Parkinson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Blaise Zabini
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Blaise Zabini" AND f.name = "Harry Potter - Wizarding World"
UNION -- Romilda Vane
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Romilda Vane" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley " AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa Black Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lucius Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lucius Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Original Female Character(s)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Art of Being Slytherin" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OFC" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Welcome to the Family" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Welcome to the Family" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Welcome to the Family" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Welcome to the Family" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Welcome to the Family" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Welcome to the Family" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Open Doors" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Open Doors" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Open Doors" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Open Doors" AND a.name = "Pommedeplume" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "One in a Million" AND a.name = "Maraudersaffair" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "One in a Million" AND a.name = "Maraudersaffair" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "One in a Million" AND a.name = "Maraudersaffair" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "You've Got Me Pegged" AND a.name = "Gracerene" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "You've Got Me Pegged" AND a.name = "Gracerene" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Let go" AND a.name = "Lostonplatform934" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Let go" AND a.name = "Lostonplatform934" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best Behaviour" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy Parkinson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best Behaviour" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best Behaviour" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best Behaviour" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best Behaviour" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best Behaviour" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Blaise Zabini
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best Behaviour" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Blaise Zabini" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Remus Lupin
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Remus Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION -- George Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Nymphadora Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Blaise Zabini
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Blaise Zabini" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy Parkinson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan Bones
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The World's a Stage" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy Parkinson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Theodore Nott
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Theodore Nott" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey Davis (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Viktor Krum
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Viktor Krum" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan Bones
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Blaise Zabini
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Blaise Zabini" AND f.name = "Harry Potter - Wizarding World"
UNION -- Flora Carrow
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Flora Carrow" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gregory Goyle
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gregory Goyle" AND f.name = "Harry Potter - Wizarding World"
UNION -- Padma Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "(Revel)ations" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Padma Patil" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy Parkinson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan Bones
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cyrus Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cyrus Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa Black Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Blood and Bones" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Helping Hands" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Padma Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Helping Hands" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Helping Hands" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Cosmopolitan" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Padma Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy Parkinson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Cosmopolitan" AND a.name = "Idleside" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "My Mind Is Screaming (But Your Touch Brings Me Silence)" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley " AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "My Mind Is Screaming (But Your Touch Brings Me Silence)" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa Black Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "My Mind Is Screaming (But Your Touch Brings Me Silence)" AND a.name = "" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Paramount ~ Extension" AND a.name = "Ronslady23" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Paramount ~ Extension" AND a.name = "Ronslady23" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Paramount ~ Extension" AND a.name = "Ronslady23" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "We Three Seekers" AND a.name = "Farbautidottir" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cho Chang
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "We Three Seekers" AND a.name = "Farbautidottir" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cho Chang" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cedric Diggory
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "We Three Seekers" AND a.name = "Farbautidottir" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cedric Diggory" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "We Three Seekers" AND a.name = "Farbautidottir" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "We Three Seekers" AND a.name = "Farbautidottir" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best Friends, Always" AND a.name = "Farbautidottir" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cedric Diggory
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best Friends, Always" AND a.name = "Farbautidottir" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cedric Diggory" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cho Chang
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best Friends, Always" AND a.name = "Farbautidottir" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cho Chang" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best Friends, Always" AND a.name = "Farbautidottir" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best Friends, Always" AND a.name = "Farbautidottir" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Amos Diggory
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best Friends, Always" AND a.name = "Farbautidottir" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Amos Diggory" AND f.name = "Harry Potter - Wizarding World"
UNION -- Arthur Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best Friends, Always" AND a.name = "Farbautidottir" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Arthur Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fred Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best Friends, Always" AND a.name = "Farbautidottir" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Frederick 'Fred' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- George Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Best Friends, Always" AND a.name = "Farbautidottir" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Heir of House Greengrass" AND a.name = "SazzyLJ" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Heir of House Greengrass" AND a.name = "SazzyLJ" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Heir of House Greengrass" AND a.name = "SazzyLJ" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Heir of House Greengrass" AND a.name = "SazzyLJ" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius Black
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Heir of House Greengrass" AND a.name = "SazzyLJ" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dobby (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Heir of House Greengrass" AND a.name = "SazzyLJ" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dobby" AND f.name = "Harry Potter - Wizarding World"
UNION -- Winky (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Heir of House Greengrass" AND a.name = "SazzyLJ" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Winky" AND f.name = "Harry Potter - Wizarding World"
UNION -- Remus Lupin
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Heir of House Greengrass" AND a.name = "SazzyLJ" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Remus Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION -- Rita Skeeter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Heir of House Greengrass" AND a.name = "SazzyLJ" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Rita Skeeter" AND f.name = "Harry Potter - Wizarding World"
UNION -- 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "From Southampton to New York and Beyond" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "From Southampton to New York and Beyond" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "From Southampton to New York and Beyond" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "From Southampton to New York and Beyond" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "From Southampton to New York and Beyond" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey Davis (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "From Southampton to New York and Beyond" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Minerva McGonagall
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Minerva McGonagall" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey Davis (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION -- Theodore Nott
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Theodore Nott" AND f.name = "Harry Potter - Wizarding World"
UNION -- Kingsley Shacklebolt
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Kingsley Shacklebolt" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hestia Jones
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hestia Jones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Arthur Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Arthur Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Bill Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "William 'Bill' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Molly Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Molly Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- George Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Charlie Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Charles 'Charlie' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Percy Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Perceval 'Percy' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dean Thomas
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dean Thomas" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan Bones
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ernie Macmillan
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ernie Macmillan" AND f.name = "Harry Potter - Wizarding World"
UNION -- Padma Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Memorial Week" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Padma Patil" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Rose's Birthday Present" AND a.name = "Red_jacobson" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Rose Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Rose's Birthday Present" AND a.name = "Red_jacobson" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Rose's Birthday Present" AND a.name = "Red_jacobson" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Victoire Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Rose's Birthday Present" AND a.name = "Red_jacobson" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Victoire Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Rose's Birthday Present" AND a.name = "Red_jacobson" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Rose's Birthday Present" AND a.name = "Red_jacobson" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Rose's Birthday Present" AND a.name = "Red_jacobson" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Daphne Greengrass and the Importance Of Intent" AND a.name = "PetrificusSomewhatus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Daphne Greengrass and the Importance Of Intent" AND a.name = "PetrificusSomewhatus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Daphne Greengrass and the Importance Of Intent" AND a.name = "PetrificusSomewhatus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Importance Of Intent: After The Credits" AND a.name = "PetrificusSomewhatus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Importance Of Intent: After The Credits" AND a.name = "PetrificusSomewhatus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Importance Of Intent: After The Credits" AND a.name = "PetrificusSomewhatus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Importance Of Intent: After The Credits" AND a.name = "PetrificusSomewhatus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Importance Of Intent: After The Credits" AND a.name = "PetrificusSomewhatus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "On A Night Like This - Potter Chronicle's" AND a.name = "Oakel" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "On A Night Like This - Potter Chronicle's" AND a.name = "Oakel" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Hounds & Hippogriffs - The Potter Chronicles" AND a.name = "Oakel" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Hounds & Hippogriffs - The Potter Chronicles" AND a.name = "Oakel" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Buckbeak
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Hounds & Hippogriffs - The Potter Chronicles" AND a.name = "Oakel" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Embers of Ruin - The Potter Chronicles" AND a.name = "Oakel" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Embers of Ruin - The Potter Chronicles" AND a.name = "Oakel" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Embers of Ruin - The Potter Chronicles" AND a.name = "Oakel" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Embers of Ruin - The Potter Chronicles" AND a.name = "Oakel" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Role Reversal" AND a.name = "QuarantineClean" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Role Reversal" AND a.name = "QuarantineClean" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sensations Of Shemales: Items Of Aphrodomina" AND a.name = "FanfictionWriter101" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sensations Of Shemales: Items Of Aphrodomina" AND a.name = "FanfictionWriter101" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley " AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sensations Of Shemales: Items Of Aphrodomina" AND a.name = "FanfictionWriter101" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sensations Of Shemales: Items Of Aphrodomina" AND a.name = "FanfictionWriter101" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy Parkinson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sensations Of Shemales: Items Of Aphrodomina" AND a.name = "FanfictionWriter101" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sensations Of Shemales: Items Of Aphrodomina" AND a.name = "FanfictionWriter101" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sensations Of Shemales: Items Of Aphrodomina" AND a.name = "FanfictionWriter101" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cho Chang
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sensations Of Shemales: Items Of Aphrodomina" AND a.name = "FanfictionWriter101" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cho Chang" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fred Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sensations Of Shemales: Items Of Aphrodomina" AND a.name = "FanfictionWriter101" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Frederick 'Fred' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- George Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sensations Of Shemales: Items Of Aphrodomina" AND a.name = "FanfictionWriter101" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Becoming Lord Black" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Becoming Lord Black" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa Black Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Becoming Lord Black" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter: The True Wizards Way" AND a.name = "Prime_Blue" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Flower Power" AND a.name = "Browser13" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Flower Power" AND a.name = "Browser13" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Viktor Krum
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Flower Power" AND a.name = "Browser13" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Viktor Krum" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cedric Diggory
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Flower Power" AND a.name = "Browser13" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cedric Diggory" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Life and Times of Edward Lupin (permanently discontinued)" AND a.name = "Luna_Weasley03" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Edward 'Teddy' Lupin " AND f.name = "Harry Potter - Wizarding World"
UNION -- Victoire Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Life and Times of Edward Lupin (permanently discontinued)" AND a.name = "Luna_Weasley03" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Victoire Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Life and Times of Edward Lupin (permanently discontinued)" AND a.name = "Luna_Weasley03" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Andromeda Black Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Life and Times of Edward Lupin (permanently discontinued)" AND a.name = "Luna_Weasley03" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Andromeda Black Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- James Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius Black
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus Dumbledore
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Remus Lupin
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Remus Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tom Riddle | Voldemort
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tom Marvolo Riddle | Voldemort" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gabrielle Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gabrielle Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cedric Diggory
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cedric Diggory" AND f.name = "Harry Potter - Wizarding World"
UNION -- Roger Davies
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Roger Davies" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Rubeus Hagrid
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Bite Of Darkness" AND a.name = "The_Lost_Nyctophiliac" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Rubeus Hagrid" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Homunculus to the Life" AND a.name = "Lomonaaeren" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Homunculus to the Life" AND a.name = "Lomonaaeren" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Homunculus to the Life" AND a.name = "Lomonaaeren" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Portrait Albus Dumbledore
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Homunculus to the Life" AND a.name = "Lomonaaeren" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Molly Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Homunculus to the Life" AND a.name = "Lomonaaeren" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Molly Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Homunculus to the Life" AND a.name = "Lomonaaeren" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gabrielle Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Homunculus to the Life" AND a.name = "Lomonaaeren" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gabrielle Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Apolline Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Homunculus to the Life" AND a.name = "Lomonaaeren" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Apolline Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey Davis (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy Parkinson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan Bones
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa Black Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Su Li (Ashes of Love)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Su Li" AND f.name = "Harry Potter - Wizarding World"
UNION -- Flora Carrow
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Flora Carrow" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hestia Carrow
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hestia Carrow" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lavender Brown
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Brown" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cho Chang
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cho Chang" AND f.name = "Harry Potter - Wizarding World"
UNION -- James Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius Black
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gabrielle Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Community Board: Looking for Companionship" AND a.name = "PotterSmut12" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gabrielle Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Always Read the Instructions" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Always Read the Instructions" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gwenog Jones
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Always Read the Instructions" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gwenog Jones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Angelina Johnson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Always Read the Instructions" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Angelina Johnson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey Davis (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Always Read the Instructions" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION -- Original Female Character(s)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Always Read the Instructions" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OFC" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Always Read the Instructions" AND a.name = "MayorHaggar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter: After the Battle" AND a.name = "Daeneryske" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter: After the Battle" AND a.name = "Daeneryske" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter: After the Battle" AND a.name = "Daeneryske" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter: After the Battle" AND a.name = "Daeneryske" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Substitute My Coke for Gin" AND a.name = "Lightofdaye" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Substitute My Coke for Gin" AND a.name = "Lightofdaye" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Substitute My Coke for Gin" AND a.name = "Lightofdaye" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Red Right Hand" AND a.name = "Fightfortherightsofhouseelves" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Red Right Hand" AND a.name = "Fightfortherightsofhouseelves" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Red Right Hand" AND a.name = "Fightfortherightsofhouseelves" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Red Right Hand" AND a.name = "Fightfortherightsofhouseelves" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Red Right Hand" AND a.name = "Fightfortherightsofhouseelves" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gawain Robards
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Red Right Hand" AND a.name = "Fightfortherightsofhouseelves" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gawain Robards" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Negotiate" AND a.name = "Divagonzo" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Negotiate" AND a.name = "Divagonzo" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Negotiate" AND a.name = "Divagonzo" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Luna Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Where The Grass Is Greener" AND a.name = "SeaFeudJagger" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Where The Grass Is Greener" AND a.name = "SeaFeudJagger" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Where The Grass Is Greener" AND a.name = "SeaFeudJagger" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Where The Grass Is Greener" AND a.name = "SeaFeudJagger" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Teddy Lupin
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Where The Grass Is Greener" AND a.name = "SeaFeudJagger" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Edward 'Teddy' Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION -- Andromeda Black Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Where The Grass Is Greener" AND a.name = "SeaFeudJagger" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Andromeda Black Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Apolline Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Apolline Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gabrielle Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gabrielle Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ron Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Original Characters
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OFC" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Apex Predator" AND a.name = "VelvetInferno" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Society Fair" AND a.name = "MimiAliceYorke" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Society Fair" AND a.name = "MimiAliceYorke" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Truth or Dare?" AND a.name = "SuperMegaAwesomeNinja" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Katie Bell" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Truth or Dare?" AND a.name = "SuperMegaAwesomeNinja" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Alicia Spinnet
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Truth or Dare?" AND a.name = "SuperMegaAwesomeNinja" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Alicia Spinnet" AND f.name = "Harry Potter - Wizarding World"
UNION -- Angelina Johnson
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Truth or Dare?" AND a.name = "SuperMegaAwesomeNinja" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Angelina Johnson" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hannah Abbott
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hannah Abbott" AND f.name = "Harry Potter - Wizarding World"
UNION -- Bill Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "William 'Bill' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Charlie Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Charles 'Charlie' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Percy Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Perceval 'Percy' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Blaise Zabini
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Blaise Zabini" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey Davis (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ernie Macmillan
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ernie Macmillan" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Padma Patil
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Padma Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dean Thomas
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dean Thomas" AND f.name = "Harry Potter - Wizarding World"
UNION -- Seamus Finnigan
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Seamus Finnigan" AND f.name = "Harry Potter - Wizarding World"
UNION -- Minerva McGonagall
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Minerva McGonagall" AND f.name = "Harry Potter - Wizarding World"
UNION -- Teddy Lupin
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Edward 'Teddy' Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION -- Andromeda Black Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Andromeda Black Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Newt Scamander
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Newt Scamander" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Rolf Scamander
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Rolf Scamander" AND f.name = "Harry Potter - Wizarding World"
UNION -- Viktor Krum
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Panacea" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Viktor Krum" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Andromeda Black Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Andromeda Black Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Teddy Lupin
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Edward 'Teddy' Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION -- Bill Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "William 'Bill' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Charlie Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Charles 'Charlie' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Percy Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "" AND f.name = "Harry Potter - Wizarding World"
UNION -- George Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Perceval 'Percy' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Arthur Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Arthur Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Molly Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Molly Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Rolf Scamander
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Rolf Scamander" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lucius Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lucius Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa Black Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey Davis
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION -- Penelope Clearwater
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Penelope Clearwater" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan Bones
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hannah Abbott
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hannah Abbott" AND f.name = "Harry Potter - Wizarding World"
UNION -- Kingsley Shacklebolt
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Kingsley Shacklebolt" AND f.name = "Harry Potter - Wizarding World"
UNION -- Blaise Zabini
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Blaise Zabini" AND f.name = "Harry Potter - Wizarding World"
UNION -- Viktor Krum
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Viktor Krum" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ernie Macmillan
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Novocaine" AND a.name = "Stardust_Warrior" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ernie Macmillan" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Long-Awaited Letter" AND a.name = "Wyrdeen" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Long-Awaited Letter" AND a.name = "Wyrdeen" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- James Sirius Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Long-Awaited Letter" AND a.name = "Wyrdeen" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Sirius Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Born As The Seventh Month Dies" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Original Male Character(s)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Born As The Seventh Month Dies" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OMC" AND f.name = "Harry Potter - Wizarding World"
UNION -- Original Female Character(s)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Born As The Seventh Month Dies" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OFC" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Born As The Seventh Month Dies" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- James Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Born As The Seventh Month Dies" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Born As The Seventh Month Dies" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Born As The Seventh Month Dies" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius Black
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Born As The Seventh Month Dies" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fred Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Born As The Seventh Month Dies" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Frederick 'Fred' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- George Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Born As The Seventh Month Dies" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Neither Can Live While The Other Survives" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Neither Can Live While The Other Survives" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Neither Can Live While The Other Survives" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey Davis (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Neither Can Live While The Other Survives" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Neither Can Live While The Other Survives" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Original Male Character(s)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Neither Can Live While The Other Survives" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OMC" AND f.name = "Harry Potter - Wizarding World"
UNION -- Original Female Character(s)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Neither Can Live While The Other Survives" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OFC" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius Black
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Neither Can Live While The Other Survives" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- James Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Neither Can Live While The Other Survives" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Neither Can Live While The Other Survives" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Blaise Zabini
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Neither Can Live While The Other Survives" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Blaise Zabini" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Those Who Have Thrice Defied Him" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Those Who Have Thrice Defied Him" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Those Who Have Thrice Defied Him" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey Davis (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Those Who Have Thrice Defied Him" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION -- Blaise Zabini
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Those Who Have Thrice Defied Him" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Blaise Zabini" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Those Who Have Thrice Defied Him" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- James Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Those Who Have Thrice Defied Him" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius Black
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Those Who Have Thrice Defied Him" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Severus Snape
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Those Who Have Thrice Defied Him" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Severus Snape" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Power The Dark Lord Knows Not" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Blaise Zabini
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Power The Dark Lord Knows Not" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Blaise Zabini" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey Davis (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Power The Dark Lord Knows Not" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Power The Dark Lord Knows Not" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Power The Dark Lord Knows Not" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- James Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Power The Dark Lord Knows Not" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Power The Dark Lord Knows Not" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius Black
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Power The Dark Lord Knows Not" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Severus Snape
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Power The Dark Lord Knows Not" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Severus Snape" AND f.name = "Harry Potter - Wizarding World"
UNION -- Original Male Character(s)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Power The Dark Lord Knows Not" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OMC" AND f.name = "Harry Potter - Wizarding World"
UNION -- Original Female Character(s)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Power The Dark Lord Knows Not" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OFC" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Two Brothers" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Oliver Potter(OC) - Character
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Two Brothers" AND a.name = "Aspionage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OMC" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Daphne Greengrass and the Preemptive Adulterer" AND a.name = "ScribblingSteve" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Daphne Greengrass and the Preemptive Adulterer" AND a.name = "ScribblingSteve" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Daphne Greengrass and the Preemptive Adulterer" AND a.name = "ScribblingSteve" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter: Life With A Single Futa Mother" AND a.name = "Prime_Blue" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter: Life With A Single Futa Mother" AND a.name = "Prime_Blue" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter: Life With A Single Futa Mother" AND a.name = "Prime_Blue" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa Black Malfoy
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter: Life With A Single Futa Mother" AND a.name = "Prime_Blue" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Firewhiskeys & Happy Endings" AND a.name = "Ghostoflinny" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Firewhiskeys & Happy Endings" AND a.name = "Ghostoflinny" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND a.name = "Prime_Blue" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur Delacour and the Secret of the Teardrop" AND a.name = "Triage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur Delacour and the Secret of the Teardrop" AND a.name = "Triage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cedric Diggory
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur Delacour and the Secret of the Teardrop" AND a.name = "Triage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cedric Diggory" AND f.name = "Harry Potter - Wizarding World"
UNION -- Viktor Krum
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur Delacour and the Secret of the Teardrop" AND a.name = "Triage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Viktor Krum" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "His Last Curse" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "His Last Curse" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "His Last Curse" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey Davis (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "His Last Curse" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Enough of Both" AND a.name = "Takearisk" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Enough of Both" AND a.name = "Takearisk" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Enough of Both" AND a.name = "Takearisk" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Enough of Both" AND a.name = "Takearisk" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Enough of Both" AND a.name = "Takearisk" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Enough of Both" AND a.name = "Takearisk" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Old Love" AND a.name = "TheHallowsInMe31" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Old Love" AND a.name = "TheHallowsInMe31" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Old Love" AND a.name = "TheHallowsInMe31" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Old Love" AND a.name = "TheHallowsInMe31" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Molly Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Old Love" AND a.name = "TheHallowsInMe31" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Molly Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Arthur Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Old Love" AND a.name = "TheHallowsInMe31" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Arthur Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Revival of The Phoenix" AND a.name = "Prince_Asmo" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Revival of The Phoenix" AND a.name = "Prince_Asmo" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Blaise Zabini
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Revival of The Phoenix" AND a.name = "Prince_Asmo" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Blaise Zabini" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Revival of The Phoenix" AND a.name = "Prince_Asmo" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey Davis (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Revival of The Phoenix" AND a.name = "Prince_Asmo" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus Dumbledore
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Revival of The Phoenix" AND a.name = "Prince_Asmo" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tom Riddle | Voldemort
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Revival of The Phoenix" AND a.name = "Prince_Asmo" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tom Marvolo Riddle | Voldemort" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Revival of The Phoenix" AND a.name = "Prince_Asmo" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Revival of The Phoenix" AND a.name = "Prince_Asmo" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Snakes, Cats, and Ladders" AND a.name = "Ch4" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Snakes, Cats, and Ladders" AND a.name = "Ch4" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Veela's Captive" AND a.name = "Karmealion" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Veela's Captive" AND a.name = "Karmealion" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Veela's Captive" AND a.name = "Karmealion" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Veela's Captive" AND a.name = "Karmealion" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginny Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Soft Place to Land" AND a.name = "GreenhouseThree" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Soft Place to Land" AND a.name = "GreenhouseThree" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Nineteen Years Later..." AND a.name = "Littlepuff04" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dudley Dursley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Nineteen Years Later..." AND a.name = "Littlepuff04" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dudley Dursley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Luna Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Nineteen Years Later..." AND a.name = "Littlepuff04" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Luna Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus Severus Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Nineteen Years Later..." AND a.name = "Littlepuff04" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Severus Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- James Sirius Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Nineteen Years Later..." AND a.name = "Littlepuff04" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Sirius Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Nineteen Years Later..." AND a.name = "Littlepuff04" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Petunia Evans Dursley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Nineteen Years Later..." AND a.name = "Littlepuff04" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Petunia Evans Dursley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Vernon Dursley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Nineteen Years Later..." AND a.name = "Littlepuff04" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Vernon Dursley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan Bones
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginny Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gabrielle Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gabrielle Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sue Li (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Su Li" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius Black
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Amelia Bones
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Amelia Bones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Minerva McGonagall
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Minerva McGonagall" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amour Et Officium" AND a.name = "R_Collins" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "You Will Never Put Me Through That Again" AND a.name = "Hollidayparty" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "You Will Never Put Me Through That Again" AND a.name = "Hollidayparty" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "You Will Never Put Me Through That Again" AND a.name = "Hollidayparty" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "You Will Never Put Me Through That Again" AND a.name = "Hollidayparty" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Kreacher (Harry Potter)
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "You Will Never Put Me Through That Again" AND a.name = "Hollidayparty" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Kreacher" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur De Lis" AND a.name = "Magical_Worlds" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur De Lis" AND a.name = "Magical_Worlds" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione Granger
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur De Lis" AND a.name = "Magical_Worlds" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville Longbottom
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur De Lis" AND a.name = "Magical_Worlds" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Apolline Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur De Lis" AND a.name = "Magical_Worlds" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Apolline Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Minerva McGonagall
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur De Lis" AND a.name = "Magical_Worlds" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Minerva McGonagall" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur De Lis" AND a.name = "Magical_Worlds" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fred Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur De Lis" AND a.name = "Magical_Worlds" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Frederick 'Fred' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- George Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur De Lis" AND a.name = "Magical_Worlds" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gabrielle Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur De Lis" AND a.name = "Magical_Worlds" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gabrielle Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur De Lis" AND a.name = "Magical_Worlds" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Desperate Times" AND a.name = "ProfessorQuill" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Desperate Times" AND a.name = "ProfessorQuill" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Under the Starry Skies, the Greengrass Lies" AND a.name = "Magical_Worlds" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Under the Starry Skies, the Greengrass Lies" AND a.name = "Magical_Worlds" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Who Wouldn't Want You" AND a.name = "Nixrocket" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne Greengrass
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Who Wouldn't Want You" AND a.name = "Nixrocket" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Andromeda Black Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Who Wouldn't Want You" AND a.name = "Nixrocket" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Andromeda Black Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Kevin Entwhistle
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Who Wouldn't Want You" AND a.name = "Nixrocket" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Kevin Entwhistle" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Who Wouldn't Want You" AND a.name = "Nixrocket" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- George Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Who Wouldn't Want You" AND a.name = "Nixrocket" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Molly Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Who Wouldn't Want You" AND a.name = "Nixrocket" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Molly Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Arthur Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Who Wouldn't Want You" AND a.name = "Nixrocket" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Arthur Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Bill Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Who Wouldn't Want You" AND a.name = "Nixrocket" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "William 'Bill' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur Delacour
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Who Wouldn't Want You" AND a.name = "Nixrocket" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "It's Complicated" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny Weasley
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "It's Complicated" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Pretty Please with a Ginny on Top" AND a.name = "Rickey" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry Potter
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Pretty Please with a Ginny on Top" AND a.name = "Rickey" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna Lovegood
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Pretty Please with a Ginny on Top" AND a.name = "Rickey" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "It's Complicated" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "It's Complicated" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "It's Complicated" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "It's Complicated" AND a.name = "Pottermum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Katie Bell" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Angelina Johnson" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Alicia Spinnet" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Filius Flitwick" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Ménage à Quatre" AND a.name = "Methos (Methos2523)" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brumous" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brumous" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brumous" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brumous" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Remus Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brumous" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brumous" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Marlene McKinnon" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brumous" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brumous" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Demelza Robins" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brumous" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brumous" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Andromeda Black Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brumous" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Edward 'Ted' Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Needs" AND a.name = "Litfreak89" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Needs" AND a.name = "Litfreak89" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Her Goodbye" AND a.name = "Disappearing Boy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Her Goodbye" AND a.name = "Disappearing Boy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bath and Bed" AND a.name = "Tommigoesfroging" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bath and Bed" AND a.name = "Tommigoesfroging" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Homework with Hermione" AND a.name = "Airam06" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Homework with Hermione" AND a.name = "Airam06" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Prefects Bath" AND a.name = "123irish" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Prefects Bath" AND a.name = "123irish" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Library Princess" AND a.name = "Frenchhornbook" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "" AND f.name = "Pansy Parkinson"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Emerald Coven" AND a.name = "Hallows Seeker" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Emerald Coven" AND a.name = "Hallows Seeker" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Emerald Coven" AND a.name = "Hallows Seeker" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gabrielle D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Emerald Coven" AND a.name = "Hallows Seeker" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gabrielle Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dirty games" AND a.name = "Noctus Noxia" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Bellatrix Black Lestrange" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dirty games" AND a.name = "Noctus Noxia" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Courtesan" AND a.name = "HeartsIgnite" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Courtesan" AND a.name = "HeartsIgnite" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Enjoy the Fireworks" AND a.name = "ChampionOfKratos" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Enjoy the Fireworks" AND a.name = "ChampionOfKratos" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- N. Tonks]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Enjoy the Fireworks" AND a.name = "ChampionOfKratos" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Feral" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Bellatrix Black Lestrange" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Feral" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Andromeda T.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Feral" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Andromeda Black Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Feral" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Domesticated" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Bellatrix L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Domesticated" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Bellatrix Black Lestrange" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Domesticated" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Andromeda T.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Domesticated" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Andromeda Black Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Godfather Neville" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Bellatrix L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Godfather Neville" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Bellatrix Black Lestrange" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Godfather Neville" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Voyeurism is such a strong word" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Bellatrix L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Voyeurism is such a strong word" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Bellatrix Black Lestrange" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Voyeurism is such a strong word" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Andromeda T.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Voyeurism is such a strong word" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Andromeda Black Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reciprocation is key" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reciprocation is key" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Tell Me Your Secrets" AND a.name = "Ladyfun" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Tell Me Your Secrets" AND a.name = "Ladyfun" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Black Ivy" AND a.name = "DragonKingDragneel25" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Black Ivy" AND a.name = "DragonKingDragneel25" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Blaise Z.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Black Ivy" AND a.name = "DragonKingDragneel25" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Blaise Zabini" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Black Ivy" AND a.name = "DragonKingDragneel25" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bolts from the Blue!" AND a.name = "Sprinter1988" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Something New" AND a.name = "NutPea16" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Something New" AND a.name = "NutPea16" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Hot Massage" AND a.name = "Johnprewett" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cho C.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Hot Massage" AND a.name = "Johnprewett" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cho Chang" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "What are we celebrating?" AND a.name = "Slytherinenigma" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa M.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "What are we celebrating?" AND a.name = "Slytherinenigma" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lines of Life" AND a.name = "Relena Mishima" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.] [Cho C.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lines of Life" AND a.name = "Relena Mishima" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.] [Cho C.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lines of Life" AND a.name = "Relena Mishima" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cho Chang" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lines of Life" AND a.name = "Relena Mishima" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Stockings Required" AND a.name = "LadiePhoenix007" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Stockings Required" AND a.name = "LadiePhoenix007" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "For The First Time" AND a.name = "Ladyfun" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "For The First Time" AND a.name = "Ladyfun" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Susan Potter nee Bones" AND a.name = "Potterfamilysecret1" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan B.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Susan Potter nee Bones" AND a.name = "Potterfamilysecret1" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Chivalry" AND a.name = "PotterSexStories" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Chivalry" AND a.name = "PotterSexStories" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Chivalry" AND a.name = "PotterSexStories" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Padma Patil" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Anniversary" AND a.name = "HersByHisByHers" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Anniversary" AND a.name = "HersByHisByHers" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Anniversary" AND a.name = "HersByHisByHers" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Very Potter Christmas" AND a.name = "Insynchlikeharmony" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Very Potter Christmas" AND a.name = "Insynchlikeharmony" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Thrall or not Thrall, that Is the Question" AND a.name = "Listen-to" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Thrall or not Thrall, that Is the Question" AND a.name = "Listen-to" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Dream to Remember" AND a.name = "Red_jacobson" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Dream to Remember" AND a.name = "Red_jacobson" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Dream to Remember" AND a.name = "Red_jacobson" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cho Chang" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Dream to Remember" AND a.name = "Red_jacobson" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Desires and Delusions" AND a.name = "RAfan2421" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Desires and Delusions" AND a.name = "RAfan2421" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Just One Night" AND a.name = "Messr. Wolfethorn" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Just One Night" AND a.name = "Messr. Wolfethorn" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Negligentia" AND a.name = "Murkatroyd" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Sirius B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Negligentia" AND a.name = "Murkatroyd" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Sirius B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Negligentia" AND a.name = "Murkatroyd" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Negligentia" AND a.name = "Murkatroyd" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sleepless Nights" AND a.name = "Nynayve" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sleepless Nights" AND a.name = "Nynayve" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Shifting towards Eachother" AND a.name = "Listen-to" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Shifting towards Eachother" AND a.name = "Listen-to" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Returning to the Start" AND a.name = "Timunderwood9" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Returning to the Start" AND a.name = "Timunderwood9" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "After the Chamber - Lords and Ladies" AND a.name = "SeerKing" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "After the Chamber - Lords and Ladies" AND a.name = "SeerKing" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "After the Chamber - Lords and Ladies" AND a.name = "SeerKing" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley " AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "After the Chamber - Lords and Ladies" AND a.name = "SeerKing" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Days to Come" AND a.name = "Chris400ad" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Days to Come" AND a.name = "Chris400ad" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Secret Truth" AND a.name = "Articcat621" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Secret Truth" AND a.name = "Articcat621" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Simplicity" AND a.name = "Medotcomslashme" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Simplicity" AND a.name = "Medotcomslashme" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Everything will be ok in the end" AND a.name = "SkyHigh17" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Everything will be ok in the end" AND a.name = "SkyHigh17" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Interludes and Vignettes" AND a.name = "Cloud Zen" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Interludes and Vignettes" AND a.name = "Cloud Zen" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Trials of The Stone" AND a.name = "RagingCassowary" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Trials of The Stone" AND a.name = "RagingCassowary" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Trials of The Stone" AND a.name = "RagingCassowary" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Trials of The Stone" AND a.name = "RagingCassowary" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Spring Equinox" AND a.name = "Harry50" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Spring Equinox" AND a.name = "Harry50" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Minerva M.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Spring Equinox" AND a.name = "Harry50" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Minerva McGonagall" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sympathetic Properties" AND a.name = "Mr Norrell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sympathetic Properties" AND a.name = "Mr Norrell" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Give Me Love" AND a.name = "IWillGoWithYouHarry" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Give Me Love" AND a.name = "IWillGoWithYouHarry" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bad Timing" AND a.name = "PassnPlay" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy P.] Minerva M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bad Timing" AND a.name = "PassnPlay" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy P.] Minerva M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Bad Timing" AND a.name = "PassnPlay" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Minerva McGonagall" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Hermione's Little Whore" AND a.name = "Writerfreakssss" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Hermione's Little Whore" AND a.name = "Writerfreakssss" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Remember My Name" AND a.name = "Writerfreakssss" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Remember My Name" AND a.name = "Writerfreakssss" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "La maladie du baiser" AND a.name = "Lana.HP" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy P.] Adrian P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "La maladie du baiser" AND a.name = "Lana.HP" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy P.] Adrian P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "La maladie du baiser" AND a.name = "Lana.HP" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Adrian Pucey" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Luna Joins the Fun" AND a.name = "Writerfreakssss" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Luna Joins the Fun" AND a.name = "Writerfreakssss" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Luna Joins the Fun" AND a.name = "Writerfreakssss" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "That Certain Something" AND a.name = "Crimson Darkness8" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "That Certain Something" AND a.name = "Crimson Darkness8" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Microclimat sentimental" AND a.name = "Math'L" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Microclimat sentimental" AND a.name = "Math'L" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Very Fast Learner" AND a.name = "BHErotica" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Very Fast Learner" AND a.name = "BHErotica" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Herbal Tea" AND a.name = "NidoranDuran" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Herbal Tea" AND a.name = "NidoranDuran" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron W.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Herbal Tea" AND a.name = "NidoranDuran" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry the Playboy" AND a.name = "Elven Sorcerer" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry the Playboy" AND a.name = "Elven Sorcerer" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry the Playboy" AND a.name = "Elven Sorcerer" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry the Playboy" AND a.name = "Elven Sorcerer" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Hollow" AND a.name = "Dante 2K-25" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Hollow" AND a.name = "Dante 2K-25" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Best Man's Job" AND a.name = "Scott the Wanderer" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Best Man's Job" AND a.name = "Scott the Wanderer" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- N. Tonks]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Best Man's Job" AND a.name = "Scott the Wanderer" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Always" AND a.name = "Caydus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Always" AND a.name = "Caydus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dessert" AND a.name = "Smilelaughread" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dessert" AND a.name = "Smilelaughread" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dessert" AND a.name = "Smilelaughread" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Cheat on me" AND a.name = "UpTheHill" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Cheat on me" AND a.name = "UpTheHill" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Le Coup de Foudre est de couleur Rouge Carmin" AND a.name = "Gouline971" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy P.] Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Le Coup de Foudre est de couleur Rouge Carmin" AND a.name = "Gouline971" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy P.] Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Le Coup de Foudre est de couleur Rouge Carmin" AND a.name = "Gouline971" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Le Coup de Foudre est de couleur Rouge Carmin" AND a.name = "Gouline971" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Cadmean Victory" AND a.name = "DarknessEnthroned" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Cadmean Victory" AND a.name = "DarknessEnthroned" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reunion" AND a.name = "Emp. Elesar II" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Dudley D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reunion" AND a.name = "Emp. Elesar II" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Dudley D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reunion" AND a.name = "Emp. Elesar II" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dudley Dursley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Family Relationship" AND a.name = "Zakhro" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Family Relationship" AND a.name = "Zakhro" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Luna P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Family Relationship" AND a.name = "Zakhro" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Luna Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Bonding" AND a.name = "Flowerchild33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Bonding" AND a.name = "Flowerchild33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna L.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Bonding" AND a.name = "Flowerchild33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "46 Hours" AND a.name = "Flowerchild33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "46 Hours" AND a.name = "Flowerchild33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna L.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "46 Hours" AND a.name = "Flowerchild33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Creating a Balance" AND a.name = "Flowerchild33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Creating a Balance" AND a.name = "Flowerchild33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna L.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Creating a Balance" AND a.name = "Flowerchild33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Long Live The Queen" AND a.name = "Offsides" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Long Live The Queen" AND a.name = "Offsides" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Breath of the Inferno" AND a.name = "Primordial Vortex" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Breath of the Inferno" AND a.name = "Primordial Vortex" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Breath of the Inferno" AND a.name = "Primordial Vortex" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Breath of the Inferno" AND a.name = "Primordial Vortex" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sirius Black and the Raising of Children" AND a.name = "AlexMurray11235" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Alice L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sirius Black and the Raising of Children" AND a.name = "AlexMurray11235" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Alice Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Frank L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sirius Black and the Raising of Children" AND a.name = "AlexMurray11235" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Frank Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Andromeda T.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sirius Black and the Raising of Children" AND a.name = "AlexMurray11235" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Andromeda Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amicus Protectio Fortis" AND a.name = "Barelyeverthere" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amicus Protectio Fortis" AND a.name = "Barelyeverthere" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amicus Protectio Fortis" AND a.name = "Barelyeverthere" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Forgotten Affairs" AND a.name = "Midnight17516" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Forgotten Affairs" AND a.name = "Midnight17516" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dodging Prison and Stealing Witches - Revenge is Best Served Raw" AND a.name = "LeadVonE" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dodging Prison and Stealing Witches - Revenge is Best Served Raw" AND a.name = "LeadVonE" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dodging Prison and Stealing Witches - Revenge is Best Served Raw" AND a.name = "LeadVonE" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dodging Prison and Stealing Witches - Revenge is Best Served Raw" AND a.name = "LeadVonE" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lily Potter and the Witches of Salem" AND a.name = "XDreamlessx" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lily Potter and the Witches of Salem" AND a.name = "XDreamlessx" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Christmas Holiday" AND a.name = "Dizzy - in - the - izzy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Christmas Holiday" AND a.name = "Dizzy - in - the - izzy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fur and Feathers" AND a.name = "Shdwqueen" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fur and Feathers" AND a.name = "Shdwqueen" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Deck the Halls" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Deck the Halls" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Deck the Halls" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Penelope C.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Deck the Halls" AND a.name = "Sheltie1987" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Penelope Clearwater" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Contractual Invalidation" AND a.name = "R-dude" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Contractual Invalidation" AND a.name = "R-dude" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sweet seduction" AND a.name = "Antjex3" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sweet seduction" AND a.name = "Antjex3" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "More Than Equal" AND a.name = "Ordinarily Prudent" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Salazar S.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "More Than Equal" AND a.name = "Ordinarily Prudent" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Salazar Slytherin" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Tuesday Night" AND a.name = "JLvE" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Tuesday Night" AND a.name = "JLvE" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Purebloods and Their Tedious Traditions" AND a.name = "Argo0" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Purebloods and Their Tedious Traditions" AND a.name = "Argo0" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Purebloods and Their Tedious Traditions" AND a.name = "Argo0" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Twisting Time" AND a.name = "The-writer1988" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Twisting Time" AND a.name = "The-writer1988" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- James P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Twisting Time" AND a.name = "The-writer1988" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Voldemort
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Twisting Time" AND a.name = "The-writer1988" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tom Marvolo Riddle | Voldemort" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Love Multiplied" AND a.name = "Flowerchild33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Love Multiplied" AND a.name = "Flowerchild33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Love Multiplied" AND a.name = "Flowerchild33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna L.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Love Multiplied" AND a.name = "Flowerchild33" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Gods Amongst Men" AND a.name = "Slimah" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.] Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Gods Amongst Men" AND a.name = "Slimah" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.] Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Gods Amongst Men" AND a.name = "Slimah" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Changing Fate's Plans" AND a.name = "Golasgil Sindar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Changing Fate's Plans" AND a.name = "Golasgil Sindar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Marlene M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Changing Fate's Plans" AND a.name = "Golasgil Sindar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Marlene M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Changing Fate's Plans" AND a.name = "Golasgil Sindar" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Marlene McKinnon" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Stay" AND a.name = "HannahFranziska" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Stay" AND a.name = "HannahFranziska" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Remus L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Stay" AND a.name = "HannahFranziska" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Remus Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Termination Without" AND a.name = "Alex Moss" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa M.] Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Termination Without" AND a.name = "Alex Moss" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa M.] Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Termination Without" AND a.name = "Alex Moss" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- N. Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Termination Without" AND a.name = "Alex Moss" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "To Reach Without" AND a.name = "Inwardtransience" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "To Reach Without" AND a.name = "Inwardtransience" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "To Reach Without" AND a.name = "Inwardtransience" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "To Reach Without" AND a.name = "Inwardtransience" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Rune Stone Path" AND a.name = "Temporal Knight" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Rune Stone Path" AND a.name = "Temporal Knight" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Rune Stone Path" AND a.name = "Temporal Knight" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- N. Tonks]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Rune Stone Path" AND a.name = "Temporal Knight" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Playdate" AND a.name = "ThatsRealMagic" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Playdate" AND a.name = "ThatsRealMagic" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amalgum – Lockhart's Folly" AND a.name = "Tkepner" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amalgum – Lockhart's Folly" AND a.name = "Tkepner" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gilderoy L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amalgum – Lockhart's Folly" AND a.name = "Tkepner" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gilderoy Lockhart" AND f.name = "Harry Potter - Wizarding World"
UNION -- Bellatrix L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Amalgum – Lockhart's Folly" AND a.name = "Tkepner" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Bellatrix Black Lestrange" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Gothic" AND a.name = "Brennus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Gothic" AND a.name = "Brennus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Last Chance" AND a.name = "LeQuin" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Last Chance" AND a.name = "LeQuin" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "When Fate Intervened" AND a.name = "LordVishnu" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "When Fate Intervened" AND a.name = "LordVishnu" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "An Invisible Mishap" AND a.name = "Elven Sorcerer" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "An Invisible Mishap" AND a.name = "Elven Sorcerer" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter: Air Elemental" AND a.name = "Kb0" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter: Air Elemental" AND a.name = "Kb0" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Prefect's Bathroom" AND a.name = "MobBob" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Prefect's Bathroom" AND a.name = "MobBob" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- N. Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Prefect's Bathroom" AND a.name = "MobBob" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Prefect's Bathroom" AND a.name = "MobBob" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Love Under the Invisibility Cloak" AND a.name = "MobBob" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Love Under the Invisibility Cloak" AND a.name = "MobBob" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Love Under the Invisibility Cloak" AND a.name = "MobBob" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- N. Tonks]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Love Under the Invisibility Cloak" AND a.name = "MobBob" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Feral Snake" AND a.name = "LarkGarbedInPurpose" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Feral Snake" AND a.name = "LarkGarbedInPurpose" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Feral Snake" AND a.name = "LarkGarbedInPurpose" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Witch 3" AND a.name = "Argo0" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Witch 3" AND a.name = "Argo0" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Witch 3" AND a.name = "Argo0" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan B.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Witch 3" AND a.name = "Argo0" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Ilvermorny Champion" AND a.name = "VMFanfiction" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Ilvermorny Champion" AND a.name = "VMFanfiction" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Lily Evans P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Ilvermorny Champion" AND a.name = "VMFanfiction" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Lily Evans P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Ilvermorny Champion" AND a.name = "VMFanfiction" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Power of the Potters" AND a.name = "RockIll" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Power of the Potters" AND a.name = "RockIll" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Happy Birthday Harry" AND a.name = "Epeefencer" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Happy Birthday Harry" AND a.name = "Epeefencer" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Magical Puberty" AND a.name = "Fantasy1290" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Magical Puberty" AND a.name = "Fantasy1290" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Magical Puberty" AND a.name = "Fantasy1290" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan B.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Magical Puberty" AND a.name = "Fantasy1290" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Spellwork" AND a.name = "LarkGarbedInPurpose" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Spellwork" AND a.name = "LarkGarbedInPurpose" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Spellwork" AND a.name = "LarkGarbedInPurpose" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Honour Thy Blood" AND a.name = "TheBlack'sResurgence" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Honour Thy Blood" AND a.name = "TheBlack'sResurgence" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Celebration" AND a.name = "ThatsRealMagic" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Katie B.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Celebration" AND a.name = "ThatsRealMagic" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Katie Bell" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Closer You Look" AND a.name = "Tony Samuels" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Closer You Look" AND a.name = "Tony Samuels" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Closer You Look" AND a.name = "Tony Samuels" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Closer You Look" AND a.name = "Tony Samuels" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Law" AND a.name = "Harry50" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Law" AND a.name = "Harry50" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Law" AND a.name = "Harry50" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Heroes Assemble!" AND a.name = "Stargon1" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Late Night Revelations" AND a.name = "Epeefencer" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] Luna L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Late Night Revelations" AND a.name = "Epeefencer" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] Luna L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Late Night Revelations" AND a.name = "Epeefencer" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Soul Scars" AND a.name = "Rtnwriter" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Soul Scars" AND a.name = "Rtnwriter" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Soul Scars" AND a.name = "Rtnwriter" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Soul Scars" AND a.name = "Rtnwriter" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "One lucky Wife" AND a.name = "Rivia" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "One lucky Wife" AND a.name = "Rivia" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Courage with Fear" AND a.name = "ShadowsEmbrace13" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Courage with Fear" AND a.name = "ShadowsEmbrace13" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Cure for Nightmares" AND a.name = "Avain1991" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Cure for Nightmares" AND a.name = "Avain1991" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Cure for Nightmares" AND a.name = "Avain1991" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Beautiful Lie" AND a.name = "MaybeMayba" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Beautiful Lie" AND a.name = "MaybeMayba" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Beautiful Lie" AND a.name = "MaybeMayba" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Beautiful Lie" AND a.name = "MaybeMayba" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Old Friend" AND a.name = "Sinyk" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan B.] Amelia B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Old Friend" AND a.name = "Sinyk" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan B.] Amelia B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and The Old Friend" AND a.name = "Sinyk" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Amelia Bones" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Godfather's Promise" AND a.name = "The Metal Sage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Godfather's Promise" AND a.name = "The Metal Sage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Godfather's Promise" AND a.name = "The Metal Sage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Godfather's Promise" AND a.name = "The Metal Sage" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Lonely Letters" AND a.name = "JusticeRings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Lonely Letters" AND a.name = "JusticeRings" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sling Shots" AND a.name = "Illjwamh" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Sling Shots" AND a.name = "Illjwamh" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Unexpected Happiness" AND a.name = "SehunsBae37" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Unexpected Happiness" AND a.name = "SehunsBae37" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Guardian" AND a.name = "Swat303810" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Guardian" AND a.name = "Swat303810" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "From Ruin" AND a.name = "GraeFoxx" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "From Ruin" AND a.name = "GraeFoxx" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "From Ruin" AND a.name = "GraeFoxx" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "From Ruin" AND a.name = "GraeFoxx" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Watching and Waiting Reloaded" AND a.name = "LilyevansJan30" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Watching and Waiting Reloaded" AND a.name = "LilyevansJan30" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Only You" AND a.name = "Averlovi" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Only You" AND a.name = "Averlovi" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Only You" AND a.name = "Averlovi" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Only You" AND a.name = "Averlovi" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Save Me" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Save Me" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Three little words" AND a.name = "Rouven Singer" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Three little words" AND a.name = "Rouven Singer" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Three little words" AND a.name = "Rouven Singer" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Black Lord" AND a.name = "Irislafey" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Black Lord" AND a.name = "Irislafey" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dragon Chronicles 1: Muggle-Raised Champion" AND a.name = "Stargon1" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dragon Chronicles 1: Muggle-Raised Champion" AND a.name = "Stargon1" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dragon Chronicles 2: Harry Potter, Dragon Whisperer" AND a.name = "Stargon1" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dragon Chronicles 2: Harry Potter, Dragon Whisperer" AND a.name = "Stargon1" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Charlie W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dragon Chronicles 2: Harry Potter, Dragon Whisperer" AND a.name = "Stargon1" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Charles 'Charlie' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dragon Chronicles 2: Harry Potter, Dragon Whisperer" AND a.name = "Stargon1" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dying Light" AND a.name = "Darkw01fie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dying Light" AND a.name = "Darkw01fie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dying Light" AND a.name = "Darkw01fie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Insurance Policy" AND a.name = "Meyers1020" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Insurance Policy" AND a.name = "Meyers1020" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Albus and Harry's World Trip" AND a.name = "ZebJeb" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Albus and Harry's World Trip" AND a.name = "ZebJeb" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Beat Your Heart Out" AND a.name = "GleeGeneration23" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Beat Your Heart Out" AND a.name = "GleeGeneration23" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Beat Your Heart Out" AND a.name = "GleeGeneration23" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- James S. P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Beat Your Heart Out" AND a.name = "GleeGeneration23" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Sirius Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Crow From Afar" AND a.name = "WhitherWinds" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Head Start" AND a.name = "Kratos1989" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Padma P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Head Start" AND a.name = "Kratos1989" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Padma Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- F. Flitwick
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Head Start" AND a.name = "Kratos1989" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Filius Flitwick" AND f.name = "Harry Potter - Wizarding World"
UNION -- Su L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Head Start" AND a.name = "Kratos1989" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Su Li" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Cheating Death" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] Sirius B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Cheating Death" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] Sirius B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Cheating Death" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Teddy L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Cheating Death" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Edward 'Teddy' Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "If not for Umbridge" AND a.name = "Chris400ad" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] [Tracey D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "If not for Umbridge" AND a.name = "Chris400ad" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] [Tracey D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "If not for Umbridge" AND a.name = "Chris400ad" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron W.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "If not for Umbridge" AND a.name = "Chris400ad" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Treasure Hunter" AND a.name = "TimeTraveller-1900" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Weasley Perspective" AND a.name = "CharmHazel" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] Ron W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Weasley Perspective" AND a.name = "CharmHazel" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] Ron W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Weasley Perspective" AND a.name = "CharmHazel" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Molly W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Weasley Perspective" AND a.name = "CharmHazel" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Molly Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Power He Knows Not" AND a.name = "Shivam Jha" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] [James P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Power He Knows Not" AND a.name = "Shivam Jha" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] [James P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Power He Knows Not" AND a.name = "Shivam Jha" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans P.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Power He Knows Not" AND a.name = "Shivam Jha" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Boy Who Lived, The Brightest Witch and The Boy Who Wasn't" AND a.name = "Dragonfly117" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.] Neville L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Boy Who Lived, The Brightest Witch and The Boy Who Wasn't" AND a.name = "Dragonfly117" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.] Neville L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Boy Who Lived, The Brightest Witch and The Boy Who Wasn't" AND a.name = "Dragonfly117" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "River Deep, Mountain High" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "River Deep, Mountain High" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brontide" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.] Teddy L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brontide" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.] Teddy L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brontide" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Edward 'Teddy' Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION -- James S. P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brontide" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Sirius Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Need Protection?" AND a.name = "Enchantra35" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] [Charlie W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Need Protection?" AND a.name = "Enchantra35" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] [Charlie W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Need Protection?" AND a.name = "Enchantra35" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Charles 'Charlie' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- OC]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Need Protection?" AND a.name = "Enchantra35" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OFC" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Quidditch Tales" AND a.name = "Potterlad81" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Katie B.] Sirius B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Quidditch Tales" AND a.name = "Potterlad81" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Katie Bell" AND f.name = "Harry Potter - Wizarding World"
UNION -- Katie B.] Sirius B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Quidditch Tales" AND a.name = "Potterlad81" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Lust of Gryffindors" AND a.name = "Fearful Porpentine" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Lust of Gryffindors" AND a.name = "Fearful Porpentine" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Lust of Gryffindors" AND a.name = "Fearful Porpentine" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Angelina Johnson" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Lust of Gryffindors" AND a.name = "Fearful Porpentine" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Katie Bell" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "By the Moon Light" AND a.name = "WolfgangNH" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "By the Moon Light" AND a.name = "WolfgangNH" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria G.] Lily Evans P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "By the Moon Light" AND a.name = "WolfgangNH" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Astoria G.] Lily Evans P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "By the Moon Light" AND a.name = "WolfgangNH" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Better Than Cake" AND a.name = "Madrosewriting" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Better Than Cake" AND a.name = "Madrosewriting" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Shagging Psychology" AND a.name = "Tweety-src-clt9" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Shagging Psychology" AND a.name = "Tweety-src-clt9" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brothers" AND a.name = "Writing Sins Not Tragedies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brothers" AND a.name = "Writing Sins Not Tragedies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Castles" AND a.name = "Pebblysand" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Castles" AND a.name = "Pebblysand" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Castles" AND a.name = "Pebblysand" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Castles" AND a.name = "Pebblysand" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Purpose of Wings" AND a.name = "Charlennette" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Purpose of Wings" AND a.name = "Charlennette" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Through Shadows" AND a.name = "Hpfangal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] Sirius B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Through Shadows" AND a.name = "Hpfangal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] Sirius B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Through Shadows" AND a.name = "Hpfangal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Remus L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Through Shadows" AND a.name = "Hpfangal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Remus Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter: Thinking like a Thief" AND a.name = "TimeTraveller-1900" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Gabrielle's Most Joyous Noël" AND a.name = "CesareBorgiaWrites" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gabrielle D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Gabrielle's Most Joyous Noël" AND a.name = "CesareBorgiaWrites" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gabrielle Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Gabrielle's Most Joyous Noël" AND a.name = "CesareBorgiaWrites" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Learning from Lily" AND a.name = "Cyan93" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Learning from Lily" AND a.name = "Cyan93" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Learning from Lily" AND a.name = "Cyan93" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Learning from Lily" AND a.name = "Cyan93" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Taken and Forgotten" AND a.name = "Tismy 101" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Taken and Forgotten" AND a.name = "Tismy 101" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lifetimes of July" AND a.name = "Vanderlustwords" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lifetimes of July" AND a.name = "Vanderlustwords" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Entombed" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.] Ron W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Entombed" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.] Ron W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Entombed" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Teddy L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Entombed" AND a.name = "SeriouslySam" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Edward 'Teddy' Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Lost Year" AND a.name = "Kb0" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Lost Year" AND a.name = "Kb0" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Different Type of Bond" AND a.name = "WolfgangNH" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Different Type of Bond" AND a.name = "WolfgangNH" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Different Type of Bond" AND a.name = "WolfgangNH" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Different Type of Bond" AND a.name = "WolfgangNH" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A King's Path" AND a.name = "521-DREAM" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A King's Path" AND a.name = "521-DREAM" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brothers: The Second Chapter" AND a.name = "Writing Sins Not Tragedies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.] OC
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Brothers: The Second Chapter" AND a.name = "Writing Sins Not Tragedies" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Your Arse Is Mine!" AND a.name = "Thedirtymind" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans P.] James P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Your Arse Is Mine!" AND a.name = "Thedirtymind" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans P.] James P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Your Arse Is Mine!" AND a.name = "Thedirtymind" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Head Boy's Room" AND a.name = "Ducksonparade" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Head Boy's Room" AND a.name = "Ducksonparade" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Head Boy's Room" AND a.name = "Ducksonparade" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Tracey D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Head Boy's Room" AND a.name = "Ducksonparade" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Tracey Davis" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reflection - Part of Averlovi's The Potter Chronicles" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reflection - Part of Averlovi's The Potter Chronicles" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reflection - Part of Averlovi's The Potter Chronicles" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reflection - Part of Averlovi's The Potter Chronicles" AND a.name = "Dorothea_Greengrass" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Survivors" AND a.name = "OrionB15" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Susan B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Survivors" AND a.name = "OrionB15" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Susan B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Survivors" AND a.name = "OrionB15" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "An Avenger's Anguish" AND a.name = "Saliient91" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- James P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "An Avenger's Anguish" AND a.name = "Saliient91" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "An Avenger's Anguish" AND a.name = "Saliient91" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "An Avenger's Anguish" AND a.name = "Saliient91" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Petrichor" AND a.name = "SometimeWriter1" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Petrichor" AND a.name = "SometimeWriter1" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Melting the Ice" AND a.name = "Theoneandonly99" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Melting the Ice" AND a.name = "Theoneandonly99" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Stars Glow, Shadows Fall" AND a.name = "Proton6" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Stars Glow, Shadows Fall" AND a.name = "Proton6" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Stars Glow, Shadows Fall" AND a.name = "Proton6" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gilderoy L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Stars Glow, Shadows Fall" AND a.name = "Proton6" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gilderoy Lockhart" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Focus of a Healer" AND a.name = "OfficeSloth" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Focus of a Healer" AND a.name = "OfficeSloth" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.] Poppy P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Focus of a Healer" AND a.name = "OfficeSloth" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.] Poppy P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Focus of a Healer" AND a.name = "OfficeSloth" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Poppy Pomfrey" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Moody's Blues" AND a.name = "Gryffinsdoor" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] Alastor M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Moody's Blues" AND a.name = "Gryffinsdoor" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] Alastor M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Moody's Blues" AND a.name = "Gryffinsdoor" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Alastor 'Mad-Eye' Moody" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Lonely Hearts Club" AND a.name = "Th3Alchemist" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.] Luna L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Lonely Hearts Club" AND a.name = "Th3Alchemist" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.] Luna L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Lonely Hearts Club" AND a.name = "Th3Alchemist" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fay D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Hogwarts Lonely Hearts Club" AND a.name = "Th3Alchemist" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fay Dunbar" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How Silently She Sings" AND a.name = "Charlennette" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How Silently She Sings" AND a.name = "Charlennette" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Pray For The Wicked" AND a.name = "Kapiushon" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Pray For The Wicked" AND a.name = "Kapiushon" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Pray For The Wicked" AND a.name = "Kapiushon" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Pray For The Wicked" AND a.name = "Kapiushon" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Organic" AND a.name = "Akamoroti" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Ron W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Organic" AND a.name = "Akamoroti" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "To Catch A Killer" AND a.name = "PringlesTheWriter" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dennis C.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "To Catch A Killer" AND a.name = "PringlesTheWriter" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dennis Creevey" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Strange Case of Love" AND a.name = "Thedirtymind" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans P.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Strange Case of Love" AND a.name = "Thedirtymind" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fire and Ice" AND a.name = "ACI100" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Astoria G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fire and Ice" AND a.name = "ACI100" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Astoria G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fire and Ice" AND a.name = "ACI100" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Astoria Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Angelina J.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Family that Chooses You" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Angelina Johnson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Katie B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Family that Chooses You" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Katie Bell" AND f.name = "Harry Potter - Wizarding World"
UNION -- Alicia S.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Family that Chooses You" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Alicia Spinnet" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fred W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Family that Chooses You" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Frederick 'Fred' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Family that Heals" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Katie B.] Angelina J.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Family that Heals" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Katie Bell" AND f.name = "Harry Potter - Wizarding World"
UNION -- Katie B.] Angelina J.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Family that Heals" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Angelina Johnson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Alicia S.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Family that Heals" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Alicia Spinnet" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Extended Family" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Katie B.] Angelina J.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Extended Family" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Katie Bell" AND f.name = "Harry Potter - Wizarding World"
UNION -- Katie B.] Angelina J.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Extended Family" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Angelina Johnson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Alicia S.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Extended Family" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Alicia Spinnet" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur De Lis" AND a.name = "OrionB15" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.] Albus D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur De Lis" AND a.name = "OrionB15" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.] Albus D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur De Lis" AND a.name = "OrionB15" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Dumbledore" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gellert G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fleur De Lis" AND a.name = "OrionB15" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gellert Grindelwald" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Winding Road" AND a.name = "NotAWriter1981" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Winding Road" AND a.name = "NotAWriter1981" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Lion and The Lioness" AND a.name = "TigerGirl14" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Lion and The Lioness" AND a.name = "TigerGirl14" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Thrown Back" AND a.name = "ProfessorQuill101" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Thrown Back" AND a.name = "ProfessorQuill101" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Bellatrix L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Thrown Back" AND a.name = "ProfessorQuill101" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Bellatrix Black Lestrange" AND f.name = "Harry Potter - Wizarding World"
UNION -- Narcissa M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Thrown Back" AND a.name = "ProfessorQuill101" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Narcissa Black Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Call Me Edward" AND a.name = "CelesteMagnolia" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Remus L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Call Me Edward" AND a.name = "CelesteMagnolia" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Remus Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ted T.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Call Me Edward" AND a.name = "CelesteMagnolia" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Edward 'Ted' Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Teddy L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Call Me Edward" AND a.name = "CelesteMagnolia" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Edward 'Teddy' Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Dark Year" AND a.name = "Alwaysendwithakiss" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Dark Year" AND a.name = "Alwaysendwithakiss" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Kiss of Life" AND a.name = "Birdwoman95" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Kiss of Life" AND a.name = "Birdwoman95" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione G.ranger" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "On The Hunt" AND a.name = "Vedros" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "On The Hunt" AND a.name = "Vedros" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Gabrielle D.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "On The Hunt" AND a.name = "Vedros" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gabrielle Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reading HP - 1" AND a.name = "Lorixjake" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Sirius B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reading HP - 1" AND a.name = "Lorixjake" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- George W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reading HP - 1" AND a.name = "Lorixjake" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fred W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reading HP - 1" AND a.name = "Lorixjake" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Frederick 'Fred' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Agent Potter: The Wizard of WAND" AND a.name = "HPfanfictioner66" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Agent Potter: The Wizard of WAND" AND a.name = "HPfanfictioner66" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Agent Potter: The Wizard of WAND" AND a.name = "HPfanfictioner66" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Gabrielle Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Daphne Greengrass and the Boy Who Lived" AND a.name = "KatonRyu" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Daphne Greengrass and the Boy Who Lived" AND a.name = "KatonRyu" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Daphne Greengrass and the Boy Who Lived" AND a.name = "KatonRyu" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Delicate Art of Raising Thestrals" AND a.name = "AppoApples" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna L.] Sirius B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Delicate Art of Raising Thestrals" AND a.name = "AppoApples" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna L.] Sirius B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Delicate Art of Raising Thestrals" AND a.name = "AppoApples" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Sirius Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- James P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Delicate Art of Raising Thestrals" AND a.name = "AppoApples" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Ritual of Love's Memory" AND a.name = "CampDBow" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] George W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Ritual of Love's Memory" AND a.name = "CampDBow" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] George W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Ritual of Love's Memory" AND a.name = "CampDBow" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "George Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Ritual of Love's Memory" AND a.name = "CampDBow" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Written in the Stars" AND a.name = "TheBlack'sResurgence" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Viktor K.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Written in the Stars" AND a.name = "TheBlack'sResurgence" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Viktor Krum" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cassiopeia B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Written in the Stars" AND a.name = "TheBlack'sResurgence" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cassiopeia Black" AND f.name = "Harry Potter - Wizarding World"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Contractual Obligation" AND a.name = "LegendDairy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Contractual Obligation" AND a.name = "LegendDairy" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Never Silence A Lion's Roar" AND a.name = "Aeyliana" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Never Silence A Lion's Roar" AND a.name = "Aeyliana" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Lost Horcrux" AND a.name = "LilyevansJan30" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] [James P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Lost Horcrux" AND a.name = "LilyevansJan30" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] [James P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Lost Horcrux" AND a.name = "LilyevansJan30" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans P.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Lost Horcrux" AND a.name = "LilyevansJan30" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A short life full of long years" AND a.name = "RMWB" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] Teddy L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A short life full of long years" AND a.name = "RMWB" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.] Teddy L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A short life full of long years" AND a.name = "RMWB" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Edward 'Teddy' Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Evans: Memoirs of a well-lived Death (SI)" AND a.name = "Bor902" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- N. Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Evans: Memoirs of a well-lived Death (SI)" AND a.name = "Bor902" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- F. Flitwick
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Evans: Memoirs of a well-lived Death (SI)" AND a.name = "Bor902" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Filius Flitwick" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Taste of Magic" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Taste of Magic" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Taste of Magic" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lavender B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Taste of Magic" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Black" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Side Dishes" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lavender B.] Pansy P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Side Dishes" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lavender Brown" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lavender B.] Pansy P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Side Dishes" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Parvati P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Side Dishes" AND a.name = "WokFriedIce" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Parvati Patil" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Intrinsicality" AND a.name = "RileyOR" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.] Cho C.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Intrinsicality" AND a.name = "RileyOR" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.] Cho C.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Intrinsicality" AND a.name = "RileyOR" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cho Chang" AND f.name = "Harry Potter - Wizarding World"
UNION -- Marietta E.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Intrinsicality" AND a.name = "RileyOR" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Marietta Edgecomb" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "We're Home" AND a.name = "Hatebelow" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "We're Home" AND a.name = "Hatebelow" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Hatal Fart Attack" AND a.name = "Corwalch" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Beautiful" AND a.name = "Michelle Moonshine" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Beautiful" AND a.name = "Michelle Moonshine" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Parce que" AND a.name = "Feymist" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Parce que" AND a.name = "Feymist" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Back Again, Harry?" AND a.name = "Jedi Buttercup" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ron W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Back Again, Harry?" AND a.name = "Jedi Buttercup" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ronald 'Ron' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Back Again, Harry?" AND a.name = "Jedi Buttercup" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Harmony Bond" AND a.name = "Brigrove" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Harmony Bond" AND a.name = "Brigrove" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Obligatory Marriage Law Fic" AND a.name = "Bobmin356" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Obligatory Marriage Law Fic" AND a.name = "Bobmin356" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Knowing Where to Look" AND a.name = "La baguette" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Kingsley S.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Knowing Where to Look" AND a.name = "La baguette" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Kingsley Shacklebolt" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Seduced by a Veela" AND a.name = "Hphglover" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Seduced by a Veela" AND a.name = "Hphglover" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Ron's Howler" AND a.name = "Stick97" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Ron's Howler" AND a.name = "Stick97" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Unmentionables?" AND a.name = "Stick97" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Delenda Est" AND a.name = "Lord Silvere" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Delenda Est" AND a.name = "Lord Silvere" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Bellatrix Black Lestrange" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Betrothal Contract" AND a.name = "James Spookie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Betrothal Contract" AND a.name = "James Spookie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Accidental Bond" AND a.name = "Kb0" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Heart and Soul" AND a.name = "Sillimaure" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Heart and Soul" AND a.name = "Sillimaure" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Heart and Soul" AND a.name = "Sillimaure" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Cold blood" AND a.name = "DerLaCroix" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Cold blood" AND a.name = "DerLaCroix" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Return of the Marauders" AND a.name = "TheLastZion" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Return of the Marauders" AND a.name = "TheLastZion" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "To Become Whole Again" AND a.name = "Datbenik513" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "To Become Whole Again" AND a.name = "Datbenik513" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fine Then!" AND a.name = "Alpha-The-Omega" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Fine Then!" AND a.name = "Alpha-The-Omega" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "It's My Life" AND a.name = "Fyreheart" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "BitterSweet Irony" AND a.name = "Sqwiz" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "BitterSweet Irony" AND a.name = "Sqwiz" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter After the War" AND a.name = "PotterFanSteve" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter After the War" AND a.name = "PotterFanSteve" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Different Halloween" AND a.name = "RobSt" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Different Halloween" AND a.name = "RobSt" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lucky Harry" AND a.name = "Pyrgus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Lucky Harry" AND a.name = "Pyrgus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How to Cage My Own Angel" AND a.name = "Jojor99" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "How to Cage My Own Angel" AND a.name = "Jojor99" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "For the Best" AND a.name = "Deliver.me" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "For the Best" AND a.name = "Deliver.me" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Death's Doorbell" AND a.name = "Paladeus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Death's Doorbell" AND a.name = "Paladeus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Death's Doorbell" AND a.name = "Paladeus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- N. Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Death's Doorbell" AND a.name = "Paladeus" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Quoth the Raven, Nevermore" AND a.name = "GenkaiFan" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Quoth the Raven, Nevermore" AND a.name = "GenkaiFan" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "From The Ashes Of Magic" AND a.name = "Dreetje" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- N. Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "From The Ashes Of Magic" AND a.name = "Dreetje" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Pureblood Princess" AND a.name = "TheEndless7" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Pureblood Princess" AND a.name = "TheEndless7" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter, Rise From Dust" AND a.name = "Bluezz-17" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION 
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter, Rise From Dust" AND a.name = "Bluezz-17" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter, Rise From Dust" AND a.name = "Bluezz-17" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "OFC" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "On Teenagers And Love" AND a.name = "Anamatics" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "On Teenagers And Love" AND a.name = "Anamatics" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "For the Love of Ginny" AND a.name = "Jesrod82" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "For the Love of Ginny" AND a.name = "Jesrod82" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "She Who Holds the Strings" AND a.name = "Romantic Silence" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "She Who Holds the Strings" AND a.name = "Romantic Silence" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Harry Potter Writers Circle" AND a.name = "Pettybureaucrat" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Harry Potter Writers Circle" AND a.name = "Pettybureaucrat" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "One Night" AND a.name = "Sugarbubbleslove" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "One Night" AND a.name = "Sugarbubbleslove" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Nanny Wanted" AND a.name = "Miscard" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Nanny Wanted" AND a.name = "Miscard" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Set Up Gone Wrong" AND a.name = "Jojor99" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Set Up Gone Wrong" AND a.name = "Jojor99" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "No Regrets" AND a.name = "WandaXmaximoff" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "No Regrets" AND a.name = "WandaXmaximoff" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Cho C.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Autumn Swan" AND a.name = "Lord Akiyama" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cho Chang" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Autumn Swan" AND a.name = "Lord Akiyama" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Snake in the Chestnut" AND a.name = "Nauro" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Snake in the Chestnut" AND a.name = "Nauro" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.] Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Snake in the Chestnut" AND a.name = "Nauro" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Elusive Prince" AND a.name = "The Purple Critic" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Elusive Prince" AND a.name = "The Purple Critic" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Elusive Prince" AND a.name = "The Purple Critic" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Call to Arms" AND a.name = "My Dear Professor McGonagall" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Call to Arms" AND a.name = "My Dear Professor McGonagall" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Is this fate?" AND a.name = "Elvenkendra" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Is this fate?" AND a.name = "Elvenkendra" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Past Always Catches Up" AND a.name = "Hopefulled" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Past Always Catches Up" AND a.name = "Hopefulled" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Unatoned" AND a.name = "SeriousScribble" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Unatoned" AND a.name = "SeriousScribble" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Coach Granger" AND a.name = "LuanMao" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "" AND f.name = "Hermione Granger"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Coach Granger" AND a.name = "LuanMao" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "" AND f.name = "Harry Potter"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Never Let Me Go" AND a.name = "Orlandraopal29" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Never Let Me Go" AND a.name = "Orlandraopal29" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "No Thinking Thing" AND a.name = "Aya8" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "No Thinking Thing" AND a.name = "Aya8" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Passionate Interlude" AND a.name = "Aya8" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Passionate Interlude" AND a.name = "Aya8" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dance Your Heart Out" AND a.name = "Butterfly Kisses 22" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Dance Your Heart Out" AND a.name = "Butterfly Kisses 22" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Plus One" AND a.name = "Maia.maiestas" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Plus One" AND a.name = "Maia.maiestas" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Quidditch pitch and five Galleons" AND a.name = "Onecelestialbeing" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Quidditch pitch and five Galleons" AND a.name = "Onecelestialbeing" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Roar and a Slither" AND a.name = "Lunalustgood" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "A Roar and a Slither" AND a.name = "Lunalustgood" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Stregati" AND a.name = "Ely-Baby" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Stregati" AND a.name = "Ely-Baby" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Addiction" AND a.name = "BeaumontRulz" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Addiction" AND a.name = "BeaumontRulz" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Purple" AND a.name = "Unicornball" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Pansy P.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Purple" AND a.name = "Unicornball" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Touch Me" AND a.name = "Alexandri" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Touch Me" AND a.name = "Alexandri" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The List" AND a.name = "9876grpc" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The List" AND a.name = "9876grpc" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Draco M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The List" AND a.name = "9876grpc" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Draco Malfoy" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The List" AND a.name = "9876grpc" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Potter's Angels" AND a.name = "Takao1160" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- N. Tonks
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Potter's Angels" AND a.name = "Takao1160" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Nymphadora Tonks" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Power of the Press" AND a.name = "Bobmin356" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Power of the Press" AND a.name = "Bobmin356" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "One-Ness" AND a.name = "HermiHugs" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.] Remus L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "One-Ness" AND a.name = "HermiHugs" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.] Remus L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "One-Ness" AND a.name = "HermiHugs" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Remus Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION -- Albus D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "One-Ness" AND a.name = "HermiHugs" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Albus Lupin" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Wizards Fall" AND a.name = "Bobmin356" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Wizards Fall" AND a.name = "Bobmin356" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "In the Library" AND a.name = "Vox ad umbram sum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "In the Library" AND a.name = "Vox ad umbram sum" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Box" AND a.name = "SkyHigh17" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Box" AND a.name = "SkyHigh17" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Four Heirs" AND a.name = "Sinyk" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Neville L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Four Heirs" AND a.name = "Sinyk" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Neville Longbottom" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Four Heirs" AND a.name = "Sinyk" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Susan B.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Four Heirs" AND a.name = "Sinyk" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Susan Bones" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Intervention" AND a.name = "Simon Flower" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Intervention" AND a.name = "Simon Flower" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Intervention" AND a.name = "Simon Flower" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Temptation" AND a.name = "Simon Flower" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Temptation" AND a.name = "Simon Flower" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Working Late" AND a.name = "Simon Flower" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Working Late" AND a.name = "Simon Flower" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "For The First Time" AND a.name = "Anjie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "For The First Time" AND a.name = "Anjie" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The ShampooDragon Seduction" AND a.name = "LJlashlarue" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cho C.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The ShampooDragon Seduction" AND a.name = "LJlashlarue" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cho Chang" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Discretion" AND a.name = "LJlashlarue" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Luna L.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Discretion" AND a.name = "LJlashlarue" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Luna Lovegood" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Forgotten But Not Gone" AND a.name = "Harmonyromionedramione" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Forgotten But Not Gone" AND a.name = "Harmonyromionedramione" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Stress Relieving Breakfast" AND a.name = "The-void of Emotions" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cho C.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Stress Relieving Breakfast" AND a.name = "The-void of Emotions" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cho Chang" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Perils of Prospective Pregnancy" AND a.name = "StrongHermione" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Perils of Prospective Pregnancy" AND a.name = "StrongHermione" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Love of Your Life" AND a.name = "Fantasy1290" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Love of Your Life" AND a.name = "Fantasy1290" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Cho C.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Love of Your Life" AND a.name = "Fantasy1290" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Cho Chang" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hannah A.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Love of Your Life" AND a.name = "Fantasy1290" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hannah Abbott" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Pansy P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Witchunters of London" AND a.name = "Rusty Weasley" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Pansy Parkinson" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dudley D.] [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Witchunters of London" AND a.name = "Rusty Weasley" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Dudley Dursley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Dudley D.] [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Witchunters of London" AND a.name = "Rusty Weasley" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.]
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Witchunters of London" AND a.name = "Rusty Weasley" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Insta-Family Effect" AND a.name = "Harmonyromionedramione" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Hermione G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Insta-Family Effect" AND a.name = "Harmonyromionedramione" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Hermione Granger" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Secret Desire" AND a.name = "DarkEagle69" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "The Secret Desire" AND a.name = "DarkEagle69" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Come Back and Haunt Me" AND a.name = "Elliehigginbottom" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Ginny W.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Come Back and Haunt Me" AND a.name = "Elliehigginbottom" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Ginevra 'Ginny' Weasley" AND f.name = "Harry Potter - Wizarding World"
UNION -- [Harry P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Two Flowers" AND a.name = "Azaron" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Harry Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.] Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Two Flowers" AND a.name = "Azaron" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Fleur Delacour" AND f.name = "Harry Potter - Wizarding World"
UNION -- Fleur D.] Daphne G.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Harry Potter and the Two Flowers" AND a.name = "Azaron" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Daphne Greengrass" AND f.name = "Harry Potter - Wizarding World"
UNION -- James P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Alternative Rebirth" AND a.name = "Nellark" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "James Potter" AND f.name = "Harry Potter - Wizarding World"
UNION -- Lily Evans P.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Alternative Rebirth" AND a.name = "Nellark" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "Lily Evans Potter" AND f.name = "Harry Potter - Wizarding World";