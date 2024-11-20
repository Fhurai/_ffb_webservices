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
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reciprocation is key" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "" AND f.name = "Hermione Granger"
UNION -- Narcissa M.
SELECT ff.id, c.id FROM `fanfictions` ff, `characters` c, `authors` a, `fandoms` f WHERE ff.name = "Reciprocation is key" AND a.name = "TsyberRhaegal" AND a.id=ff.author_id AND c.fandom_id = f.id AND c.name = "" AND f.name = "Narcissa Black Malfoy";