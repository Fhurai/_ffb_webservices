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
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Trouble, with a Capital T" AND t.name = "Humor" AND a.name = "Pottermum"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "They spurn the holiday spirit in their usual way" AND t.name = "Sexual content" AND a.name = "Luvsanime02"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "They spurn the holiday spirit in their usual way" AND t.name = "One-shot" AND a.name = "Luvsanime02"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Birthday Surprise" AND t.name = "One-shot" AND a.name = "LRThunder"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Walking the Walk" AND t.name = "Sexual content" AND a.name = "Chazpure"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Walking the Walk" AND t.name = "One-shot" AND a.name = "Chazpure"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Your secret fantasy" AND t.name = "Sexual content" AND a.name = "VanessaWolfie"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Your secret fantasy" AND t.name = "One-shot" AND a.name = "VanessaWolfie"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Change of Heart" AND t.name = "Sexual content" AND a.name = "Ragdoll"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Change of Heart" AND t.name = "Romance" AND a.name = "Ragdoll"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Change of Heart" AND t.name = "Post-canon" AND a.name = "Ragdoll"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Change of Heart" AND t.name = "One-shot" AND a.name = "Ragdoll"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Addictive" AND t.name = "Post-canon" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Addictive" AND t.name = "Sexual content" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Addictive" AND t.name = "One-shot" AND a.name = ""
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Restorative" AND t.name = "Post-canon" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Restorative" AND t.name = "Sexual content" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Restorative" AND t.name = "Angst" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Restorative" AND t.name = "One-shot" AND a.name = ""
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Who Seems a Beast (but secretly dreams of beauty)" AND t.name = "Post-canon" AND a.name = "Songquake"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Who Seems a Beast (but secretly dreams of beauty)" AND t.name = "Sexual content" AND a.name = "Songquake"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Who Seems a Beast (but secretly dreams of beauty)" AND t.name = "One-shot" AND a.name = "Songquake"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Flood" AND t.name = "Multi" AND a.name = "Holyfant"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Flood" AND t.name = "Sexual content" AND a.name = "Holyfant"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Flood" AND t.name = "Post-canon" AND a.name = "Holyfant"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Flood" AND t.name = "One-shot" AND a.name = "Holyfant"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "All My Wildest Dreams" AND t.name = "Sexual content" AND a.name = "Walgesang"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "All My Wildest Dreams" AND t.name = "Femdom" AND a.name = "Walgesang"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "All My Wildest Dreams" AND t.name = "Post-canon" AND a.name = "Walgesang"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "All My Wildest Dreams" AND t.name = "One-shot" AND a.name = "Walgesang"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dorm Mates" AND t.name = "Sexual content" AND a.name = "BananasPyjamas"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dorm Mates" AND t.name = "Pwp" AND a.name = "BananasPyjamas"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dorm Mates" AND t.name = "Lesbian | Yuri" AND a.name = "BananasPyjamas"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dorm Mates" AND t.name = "One-shot" AND a.name = "BananasPyjamas"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The 69" AND t.name = "Sexual content" AND a.name = "LRThunder"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The 69" AND t.name = "One-shot" AND a.name = "LRThunder"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Falling Towards Something (It Might Just Be You)" AND t.name = "Angst" AND a.name = "Thewaywedo33"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Love Story in Four Acts" AND t.name = "Sexual content" AND a.name = "Inell"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Love Story in Four Acts" AND t.name = "Lesbian | Yuri" AND a.name = "Inell"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Love Story in Four Acts" AND t.name = "One-shot" AND a.name = "Inell"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Intricacies of Magical Etiquette" AND t.name = "One-shot" AND a.name = "MayorHaggar"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "HBG Mini-series: Lily" AND t.name = "Sexual content" AND a.name = "Sheltie1987"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "HBG Mini-series: Lily" AND t.name = "Multi" AND a.name = "Sheltie1987"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "HBG Mini-series: Pureblood Wives" AND t.name = "Sexual content" AND a.name = "Sheltie1987"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "HBG Mini-series: Pureblood Wives" AND t.name = "Multi" AND a.name = "Sheltie1987"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Prewett Cup" AND t.name = "Sexual content" AND a.name = "Ap_aelfwine"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Prewett Cup" AND t.name = "AU" AND a.name = "Ap_aelfwine"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Prewett Cup" AND t.name = "Multi" AND a.name = "Ap_aelfwine"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Prewett Cup" AND t.name = "One-shot" AND a.name = "Ap_aelfwine"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "An Odd Turn of Events" AND t.name = "Sexual content" AND a.name = "IridescentLugia"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "An Odd Turn of Events" AND t.name = "One-shot" AND a.name = "IridescentLugia"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Night Moves" AND t.name = "Multi" AND a.name = "NidoranDuran"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Night Moves" AND t.name = "Sexual content" AND a.name = "NidoranDuran"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Night Moves" AND t.name = "Pwp" AND a.name = "NidoranDuran"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Guest Bedroom" AND t.name = "Multi" AND a.name = "Holyfant"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Guest Bedroom" AND t.name = "Sexual content" AND a.name = "Holyfant"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Guest Bedroom" AND t.name = "Post-canon" AND a.name = "Holyfant"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mirrors And Opposites" AND t.name = "Sexual content" AND a.name = "Lightofdaye"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mirrors And Opposites" AND t.name = "One-shot" AND a.name = "Lightofdaye"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The List" AND t.name = "Sexual content" AND a.name = "Olivieblake"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The List" AND t.name = "One-shot" AND a.name = "Olivieblake"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Friends & Lovers" AND t.name = "Multi" AND a.name = "TarnishedArmour"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Friends & Lovers" AND t.name = "AU" AND a.name = "TarnishedArmour"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Friends & Lovers" AND t.name = "Sexual content" AND a.name = "TarnishedArmour"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Friends & Lovers" AND t.name = "One-shot" AND a.name = "TarnishedArmour"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Boy Who Wanted Her" AND t.name = "One-shot" AND a.name = "Likebunnies"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Boy Who Was Hers" AND t.name = "Sexual content" AND a.name = "Likebunnies"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Boy Who Was Hers" AND t.name = "Pwp" AND a.name = "Likebunnies"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Boy Who Was Hers" AND t.name = "One-shot" AND a.name = "Likebunnies"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "How We Live" AND t.name = "Sexual content" AND a.name = "Wendings"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "How We Live" AND t.name = "Fluff" AND a.name = "Wendings"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "How We Live" AND t.name = "Multi" AND a.name = "Wendings"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "How We Live" AND t.name = "Drama" AND a.name = "Wendings"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "How We Live" AND t.name = "Harem" AND a.name = "Wendings"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Infernal Plan" AND t.name = "Sexual content" AND a.name = "Likebunnies"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Center of Attention" AND t.name = "Sexual content" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Center of Attention" AND t.name = "Multi" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Center of Attention" AND t.name = "Lesbian | Yuri" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Center of Attention" AND t.name = "Pwp" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Center of Attention" AND t.name = "One-shot" AND a.name = ""
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Vein of Gold" AND t.name = "One-shot" AND a.name = "Pelespen"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Encounters After the Yule Ball" AND t.name = "Sexual content" AND a.name = "Sheltie1987"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Encounters After the Yule Ball" AND t.name = "Multi" AND a.name = "Sheltie1987"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Encounters After the Yule Ball" AND t.name = "One-shot" AND a.name = "Sheltie1987"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love You Completely" AND t.name = "Sexual content" AND a.name = "Starstruck1986"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love You Completely" AND t.name = "Multi" AND a.name = "Starstruck1986"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love You Completely" AND t.name = "One-shot" AND a.name = "Starstruck1986"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Chance Meeting" AND t.name = "Romance" AND a.name = "Clell65619"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Chance Meeting" AND t.name = "AU" AND a.name = "Clell65619"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Not On His List" AND t.name = "Sexual content" AND a.name = "Musyc"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Not On His List" AND t.name = "One-shot" AND a.name = "Musyc"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "An Unexpected Source of Wisdom" AND t.name = "Sexual content" AND a.name = "Alyndra"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "An Unexpected Source of Wisdom" AND t.name = "Multi" AND a.name = "Alyndra"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "An Unexpected Source of Wisdom" AND t.name = "One-shot" AND a.name = "Alyndra"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Troika" AND t.name = "AU" AND a.name = "Lily_pearl (lilyandjoey)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Troika" AND t.name = "Multi" AND a.name = "Lily_pearl (lilyandjoey)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Subservient Housewives and other Mythical Creatures" AND t.name = "Femdom" AND a.name = "Voxangelus"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Subservient Housewives and other Mythical Creatures" AND t.name = "Sexual content" AND a.name = "Voxangelus"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Subservient Housewives and other Mythical Creatures" AND t.name = "One-shot" AND a.name = "Voxangelus"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ice Princess" AND t.name = "Romance" AND a.name = "LuanMao"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ice Princess" AND t.name = "One-shot" AND a.name = "LuanMao"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry in a new world" AND t.name = "Angst" AND a.name = "Clell65619"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry in a new world" AND t.name = "Drama" AND a.name = "Clell65619"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry in a new world" AND t.name = "Romance" AND a.name = "Clell65619"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry in a new world" AND t.name = "Sexual content" AND a.name = "Clell65619"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry in a new world" AND t.name = "AU" AND a.name = "Clell65619"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Marriage Contracts" AND t.name = "Angst" AND a.name = "Clell65619"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Marriage Contracts" AND t.name = "Romance" AND a.name = "Clell65619"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Marriage Contracts" AND t.name = "Sexual content" AND a.name = "Clell65619"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Marriage Contracts" AND t.name = "AU" AND a.name = "Clell65619"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Live! For God's Sake, Live!" AND t.name = "Sexual content" AND a.name = "HarryGinnyTonks"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Live! For God's Sake, Live!" AND t.name = "AU" AND a.name = "HarryGinnyTonks"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Lesson in Propriety" AND t.name = "Sexual content" AND a.name = "Dime"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Lesson in Propriety" AND t.name = "Femdom" AND a.name = "Dime"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Lesson in Propriety" AND t.name = "One-shot" AND a.name = "Dime"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Confessions Under A Night Sky" AND t.name = "Sexual content" AND a.name = "Snowblind12"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Weasley Wives' Club" AND t.name = "Sexual content" AND a.name = "RubySaintClaire"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Weasley Wives' Club" AND t.name = "One-shot" AND a.name = "RubySaintClaire"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Place To Call Home" AND t.name = "Dragons" AND a.name = "Missmusicluver"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Place To Call Home" AND t.name = "Angst" AND a.name = "Missmusicluver"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Place To Call Home" AND t.name = "AU" AND a.name = "Missmusicluver"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Unsealed" AND t.name = "AU" AND a.name = "Esama"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Unsealed" AND t.name = "Time travel" AND a.name = "Esama"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Unsealed" AND t.name = "One-shot" AND a.name = "Esama"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Slumber Party" AND t.name = "Sexual content" AND a.name = "Femmeslyth"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Slumber Party" AND t.name = "Pwp" AND a.name = "Femmeslyth"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Slumber Party" AND t.name = "Multi" AND a.name = "Femmeslyth"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Slumber Party" AND t.name = "Lesbian | Yuri" AND a.name = "Femmeslyth"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Slumber Party" AND t.name = "One-shot" AND a.name = "Femmeslyth"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Memorable Farewell" AND t.name = "Sexual content" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Memorable Farewell" AND t.name = "Post-canon" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Memorable Farewell" AND t.name = "One-shot" AND a.name = "Pommedeplume"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Yearning Hearts" AND t.name = "Fluff" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Yearning Hearts" AND t.name = "Angst" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Yearning Hearts" AND t.name = "Post-canon" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Yearning Hearts" AND t.name = "One-shot" AND a.name = "Pommedeplume"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Open to Love" AND t.name = "Post-canon" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Open to Love" AND t.name = "Sexual content" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Open to Love" AND t.name = "One-shot" AND a.name = "Pommedeplume"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Things to Do in Berlin (When You're Bored)" AND t.name = "Romance" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Things to Do in Berlin (When You're Bored)" AND t.name = "Sexual content" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Things to Do in Berlin (When You're Bored)" AND t.name = "Post-canon" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Things to Do in Berlin (When You're Bored)" AND t.name = "One-shot" AND a.name = "Pommedeplume"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Normal Things" AND t.name = "Sexual content" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Normal Things" AND t.name = "One-shot" AND a.name = "Pommedeplume"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Girl Who Topped" AND t.name = "Sexual content" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Girl Who Topped" AND t.name = "Post-canon" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Girl Who Topped" AND t.name = "Fluff" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Girl Who Topped" AND t.name = "Romance" AND a.name = "Pommedeplume"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sort of Friends and Lovers" AND t.name = "Post-canon" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sort of Friends and Lovers" AND t.name = "Sexual content" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sort of Friends and Lovers" AND t.name = "Multi" AND a.name = "Pommedeplume"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Various Climaxes" AND t.name = "Sexual content" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Various Climaxes" AND t.name = "Post-canon" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Various Climaxes" AND t.name = "Romance" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Various Climaxes" AND t.name = "One-shot" AND a.name = "Pommedeplume"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Luna's Desires" AND t.name = "Sexual content" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Luna's Desires" AND t.name = "Multi" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Luna's Desires" AND t.name = "Post-canon" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Luna's Desires" AND t.name = "One-shot" AND a.name = "Pommedeplume"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Art of Being Slytherin" AND t.name = "Sexual content" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Art of Being Slytherin" AND t.name = "Friendship" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Art of Being Slytherin" AND t.name = "Drama" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Art of Being Slytherin" AND t.name = "Multi" AND a.name = "Pommedeplume"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Welcome to the Family" AND t.name = "Sexual content" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Welcome to the Family" AND t.name = "Family" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Welcome to the Family" AND t.name = "One-shot" AND a.name = "Pommedeplume"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Open Doors" AND t.name = "Sexual content" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Open Doors" AND t.name = "Multi" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Open Doors" AND t.name = "Fluff" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Open Doors" AND t.name = "Post-canon" AND a.name = "Pommedeplume"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Open Doors" AND t.name = "One-shot" AND a.name = "Pommedeplume"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "One in a Million" AND t.name = "Sexual content" AND a.name = "Maraudersaffair"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "One in a Million" AND t.name = "One-shot" AND a.name = "Maraudersaffair"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "You've Got Me Pegged" AND t.name = "Post-canon" AND a.name = "Gracerene"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "You've Got Me Pegged" AND t.name = "Sexual content" AND a.name = "Gracerene"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "You've Got Me Pegged" AND t.name = "One-shot" AND a.name = "Gracerene"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Let go" AND t.name = "Fluff" AND a.name = "Lostonplatform934"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Let go" AND t.name = "Sexual content" AND a.name = "Lostonplatform934"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Let go" AND t.name = "Hurt | Comfort" AND a.name = "Lostonplatform934"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Let go" AND t.name = "Pwp" AND a.name = "Lostonplatform934"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Let go" AND t.name = "One-shot" AND a.name = "Lostonplatform934"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Best Behaviour" AND t.name = "Post-canon" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Best Behaviour" AND t.name = "Multi" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Best Behaviour" AND t.name = "Sexual content" AND a.name = "Idleside"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The World's a Stage" AND t.name = "Sexual content" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The World's a Stage" AND t.name = "Post-canon" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The World's a Stage" AND t.name = "Multi" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The World's a Stage" AND t.name = "Lesbian | Yuri" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The World's a Stage" AND t.name = "Slices of life" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The World's a Stage" AND t.name = "Angst" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The World's a Stage" AND t.name = "Fluff" AND a.name = "Idleside"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "(Revel)ations" AND t.name = "Fluff" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "(Revel)ations" AND t.name = "Sexual content" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "(Revel)ations" AND t.name = "Multi" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "(Revel)ations" AND t.name = "Lesbian | Yuri" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "(Revel)ations" AND t.name = "Slices of life" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "(Revel)ations" AND t.name = "Romance" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blood and Bones" AND t.name = "Multi" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blood and Bones" AND t.name = "Sexual content" AND a.name = "Idleside"UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blood and Bones" AND t.name = "Fluff" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blood and Bones" AND t.name = "Family" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blood and Bones" AND t.name = "Drama" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blood and Bones" AND t.name = "Post-canon" AND a.name = "Idleside"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Helping Hands" AND t.name = "Post-canon" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Helping Hands" AND t.name = "Sexual content" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Helping Hands" AND t.name = "One-shot" AND a.name = "Idleside"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cosmopolitan" AND t.name = "Post-canon" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cosmopolitan" AND t.name = "Sexual content" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cosmopolitan" AND t.name = "Lesbian | Yuri" AND a.name = "Idleside"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cosmopolitan" AND t.name = "One-shot" AND a.name = "Idleside"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "My Mind Is Screaming (But Your Touch Brings Me Silence)" AND t.name = "Angst" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "My Mind Is Screaming (But Your Touch Brings Me Silence)" AND t.name = "Hurt | Comfort" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "My Mind Is Screaming (But Your Touch Brings Me Silence)" AND t.name = "Sexual content" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "My Mind Is Screaming (But Your Touch Brings Me Silence)" AND t.name = "Multi" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "My Mind Is Screaming (But Your Touch Brings Me Silence)" AND t.name = "Fluff" AND a.name = ""
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Paramount ~ Extension" AND t.name = "Multi" AND a.name = "Ronslady23"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Paramount ~ Extension" AND t.name = "Sexual content" AND a.name = "Ronslady23"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Paramount ~ Extension" AND t.name = "One-shot" AND a.name = "Ronslady23"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "We Three Seekers" AND t.name = "Sexual content" AND a.name = "Farbautidottir"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "We Three Seekers" AND t.name = "Multi" AND a.name = "Farbautidottir"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "We Three Seekers" AND t.name = "One-shot" AND a.name = "Farbautidottir"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Best Friends, Always" AND t.name = "Sexual content" AND a.name = "Farbautidottir"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Best Friends, Always" AND t.name = "One-shot" AND a.name = "Farbautidottir"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and The Heir of House Greengrass" AND t.name = "Lesbian | Yuri" AND a.name = "SazzyLJ"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "From Southampton to New York and Beyond" AND t.name = "Romance" AND a.name = "Dorothea_Greengrass"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "From Southampton to New York and Beyond" AND t.name = "Drama" AND a.name = "Dorothea_Greengrass"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Memorial Week" AND t.name = "Drama" AND a.name = "Dorothea_Greengrass"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Memorial Week" AND t.name = "Romance" AND a.name = "Dorothea_Greengrass"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Memorial Week" AND t.name = "Fluff" AND a.name = "Dorothea_Greengrass"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Rose's Birthday Present" AND t.name = "Sexual content" AND a.name = "Red_jacobson"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Rose's Birthday Present" AND t.name = "One-shot" AND a.name = "Red_jacobson"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Daphne Greengrass and the Importance Of Intent" AND t.name = "Romance" AND a.name = "PetrificusSomewhatus"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Daphne Greengrass and the Importance Of Intent" AND t.name = "Family" AND a.name = "PetrificusSomewhatus"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Importance Of Intent: After The Credits" AND t.name = "Romance" AND a.name = "PetrificusSomewhatus"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Importance Of Intent: After The Credits" AND t.name = "Family" AND a.name = "PetrificusSomewhatus"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "On A Night Like This - Potter Chronicle's" AND t.name = "Angst" AND a.name = "Oakel"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "On A Night Like This - Potter Chronicle's" AND t.name = "Romance" AND a.name = "Oakel"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "May It Be – Potter Chronicles" AND t.name = "Friendship" AND a.name = "Oakel"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "May It Be – Potter Chronicles" AND t.name = "One-shot" AND a.name = "Oakel"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hounds & Hippogriffs - The Potter Chronicles" AND t.name = "Family" AND a.name = "Oakel"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hounds & Hippogriffs - The Potter Chronicles" AND t.name = "One-shot" AND a.name = "Oakel"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Role Reversal" AND t.name = "Romance" AND a.name = "QuarantineClean"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sensations Of Shemales: Items Of Aphrodomina" AND t.name = "Sexual content" AND a.name = "FanfictionWriter101"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Becoming Lord Black" AND t.name = "Sexual content" AND a.name = "MayorHaggar"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Becoming Lord Black" AND t.name = "Lesbian | Yuri" AND a.name = "MayorHaggar"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND t.name = "Femdom" AND a.name = "Prime_Blue"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND t.name = "Sexual content" AND a.name = "Prime_Blue"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND t.name = "Multi" AND a.name = "Prime_Blue"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter: The True Wizards Way" AND t.name = "Lesbian | Yuri" AND a.name = "Prime_Blue"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Flower Power" AND t.name = "Sexual content" AND a.name = "Browser13"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Life and Times of Edward Lupin (permanently discontinued)" AND t.name = "Angst" AND a.name = "Luna_Weasley03"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Life and Times of Edward Lupin (permanently discontinued)" AND t.name = "Fluff" AND a.name = "Luna_Weasley03"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Life and Times of Edward Lupin (permanently discontinued)" AND t.name = "Post-canon" AND a.name = "Luna_Weasley03"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Homunculus to the Life" AND t.name = "Angst" AND a.name = "Lomonaaeren"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Homunculus to the Life" AND t.name = "Multi" AND a.name = "Lomonaaeren"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Homunculus to the Life" AND t.name = "Romance" AND a.name = "Lomonaaeren"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Homunculus to the Life" AND t.name = "Drama" AND a.name = "Lomonaaeren"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND t.name = "Sexual content" AND a.name = "PotterSmut12"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Community Board: Looking for Companionship" AND t.name = "Multi" AND a.name = "PotterSmut12"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Always Read the Instructions" AND t.name = "Sexual content" AND a.name = "MayorHaggar"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Always Read the Instructions" AND t.name = "One-shot" AND a.name = "MayorHaggar"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter: After the Battle" AND t.name = "Sexual content" AND a.name = "Daeneryske"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter: After the Battle" AND t.name = "Post-canon" AND a.name = "Daeneryske"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter: After the Battle" AND t.name = "Angst" AND a.name = "Daeneryske"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter: After the Battle" AND t.name = "Fluff" AND a.name = "Daeneryske"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Substitute My Coke for Gin" AND t.name = "Multi" AND a.name = "Lightofdaye"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Substitute My Coke for Gin" AND t.name = "Sexual content" AND a.name = "Lightofdaye"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Substitute My Coke for Gin" AND t.name = "One-shot" AND a.name = "Lightofdaye"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Red Right Hand" AND t.name = "Sexual content" AND a.name = "Fightfortherightsofhouseelves"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Red Right Hand" AND t.name = "AU" AND a.name = "Fightfortherightsofhouseelves"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Negotiate" AND t.name = "Sexual content" AND a.name = "Divagonzo"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Negotiate" AND t.name = "One-shot" AND a.name = "Divagonzo"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Where The Grass Is Greener" AND t.name = "Slices of life" AND a.name = "SeaFeudJagger"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Where The Grass Is Greener" AND t.name = "Friendship" AND a.name = "SeaFeudJagger"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Where The Grass Is Greener" AND t.name = "Romance" AND a.name = "SeaFeudJagger"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Where The Grass Is Greener" AND t.name = "Post-canon" AND a.name = "SeaFeudJagger"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Apex Predator" AND t.name = "Sexual content" AND a.name = "VelvetInferno"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Apex Predator" AND t.name = "Multi" AND a.name = "VelvetInferno"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Society Fair" AND t.name = "Romance" AND a.name = "MimiAliceYorke"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Society Fair" AND t.name = "Friendship" AND a.name = "MimiAliceYorke"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and The Truth or Dare?" AND t.name = "Multi" AND a.name = "SuperMegaAwesomeNinja"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and The Truth or Dare?" AND t.name = "Sexual content" AND a.name = "SuperMegaAwesomeNinja"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and The Truth or Dare?" AND t.name = "One-shot" AND a.name = "SuperMegaAwesomeNinja"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Panacea" AND t.name = "Post-canon" AND a.name = "Stardust_Warrior"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Novocaine" AND t.name = "Post-canon" AND a.name = "Stardust_Warrior"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Long-Awaited Letter" AND t.name = "Post-canon" AND a.name = "Wyrdeen"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Long-Awaited Letter" AND t.name = "One-shot" AND a.name = "Wyrdeen"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Born As The Seventh Month Dies" AND t.name = "AU" AND a.name = "Aspionage"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Born As The Seventh Month Dies" AND t.name = "Angst" AND a.name = "Aspionage"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Born As The Seventh Month Dies" AND t.name = "Pre-canon" AND a.name = "Aspionage"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Neither Can Live While The Other Survives" AND t.name = "AU" AND a.name = "Aspionage"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Neither Can Live While The Other Survives" AND t.name = "Angst" AND a.name = "Aspionage"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Those Who Have Thrice Defied Him" AND t.name = "AU" AND a.name = "Aspionage"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Those Who Have Thrice Defied Him" AND t.name = "Angst" AND a.name = "Aspionage"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Power The Dark Lord Knows Not" AND t.name = "AU" AND a.name = "Aspionage"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Power The Dark Lord Knows Not" AND t.name = "Angst" AND a.name = "Aspionage"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Two Brothers" AND t.name = "AU" AND a.name = "Aspionage"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Two Brothers" AND t.name = "Angst" AND a.name = "Aspionage"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Daphne Greengrass and the Preemptive Adulterer" AND t.name = "Sexual content" AND a.name = "ScribblingSteve"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Daphne Greengrass and the Preemptive Adulterer" AND t.name = "Fluff" AND a.name = "ScribblingSteve"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Daphne Greengrass and the Preemptive Adulterer" AND t.name = "Hurt | Comfort" AND a.name = "ScribblingSteve"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Daphne Greengrass and the Preemptive Adulterer" AND t.name = "Adventure" AND a.name = "ScribblingSteve"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter: Life With A Single Futa Mother" AND t.name = "Sexual content" AND a.name = "Prime_Blue"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Firewhiskeys & Happy Endings" AND t.name = "Sexual content" AND a.name = "Ghostoflinny"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND t.name = "Sexual content" AND a.name = "Prime_Blue"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter: The Big Bukkake Bang" AND t.name = "Multi" AND a.name = "Prime_Blue"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fleur Delacour and the Secret of the Teardrop" AND t.name = "AU" AND a.name = "Triage"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Enough of Both" AND t.name = "Post-canon" AND a.name = "Takearisk"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Enough of Both" AND t.name = "Pwp" AND a.name = "Takearisk"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Enough of Both" AND t.name = "Sexual content" AND a.name = "Takearisk"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Old Love" AND t.name = "Drama" AND a.name = "TheHallowsInMe31"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Old Love" AND t.name = "Romance" AND a.name = "TheHallowsInMe31"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Awakening" AND t.name = "Femdom" AND a.name = "Atrxx93"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Awakening" AND t.name = "Sexual content" AND a.name = "Atrxx93"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Awakening" AND t.name = "One-shot" AND a.name = "Atrxx93"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and The Revival of The Phoenix" AND t.name = "AU" AND a.name = "Prince_Asmo"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and The Revival of The Phoenix" AND t.name = "Dark" AND a.name = "Prince_Asmo"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Snakes, Cats, and Ladders" AND t.name = "Adventure" AND a.name = "Ch4"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Snakes, Cats, and Ladders" AND t.name = "Drama" AND a.name = "Ch4"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Snakes, Cats, and Ladders" AND t.name = "Romance" AND a.name = "Ch4"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Veela's Captive" AND t.name = "Sexual content" AND a.name = "Karmealion"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Veela's Captive" AND t.name = "Femdom" AND a.name = "Karmealion"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Soft Place to Land" AND t.name = "Fluff" AND a.name = "GreenhouseThree"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Soft Place to Land" AND t.name = "Angst" AND a.name = "GreenhouseThree"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Soft Place to Land" AND t.name = "Post-canon" AND a.name = "GreenhouseThree"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Soft Place to Land" AND t.name = "Sexual content" AND a.name = "GreenhouseThree"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Soft Place to Land" AND t.name = "One-shot" AND a.name = "GreenhouseThree"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Nineteen Years Later..." AND t.name = "Post-canon" AND a.name = "Littlepuff04"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Nineteen Years Later..." AND t.name = "One-shot" AND a.name = "Littlepuff04"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Amour Et Officium" AND t.name = "AU" AND a.name = "R_Collins"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Amour Et Officium" AND t.name = "Dark" AND a.name = "R_Collins"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Amour Et Officium" AND t.name = "Sexual content" AND a.name = "R_Collins"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Amour Et Officium" AND t.name = "Adventure" AND a.name = "R_Collins"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Amour Et Officium" AND t.name = "Romance" AND a.name = "R_Collins"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Amour Et Officium" AND t.name = "Angst" AND a.name = "R_Collins"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Amour Et Officium" AND t.name = "Fluff" AND a.name = "R_Collins"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "You Will Never Put Me Through That Again" AND t.name = "Post-canon" AND a.name = "Hollidayparty"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "You Will Never Put Me Through That Again" AND t.name = "Hurt | Comfort" AND a.name = "Hollidayparty"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "You Will Never Put Me Through That Again" AND t.name = "Fluff" AND a.name = "Hollidayparty"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "You Will Never Put Me Through That Again" AND t.name = "One-shot" AND a.name = "Hollidayparty"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fleur De Lis" AND t.name = "AU" AND a.name = "Magical_Worlds"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fleur De Lis" AND t.name = "Sexual content" AND a.name = "Magical_Worlds"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fleur De Lis" AND t.name = "Angst" AND a.name = "Magical_Worlds"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fleur De Lis" AND t.name = "Fluff" AND a.name = "Magical_Worlds"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Desperate Times" AND t.name = "Sexual content" AND a.name = "ProfessorQuill"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Desperate Times" AND t.name = "Romance" AND a.name = "ProfessorQuill"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Desperate Times" AND t.name = "One-shot" AND a.name = "ProfessorQuill"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Under the Starry Skies, the Greengrass Lies" AND t.name = "AU" AND a.name = "Magical_Worlds"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Under the Starry Skies, the Greengrass Lies" AND t.name = "Angst" AND a.name = "Magical_Worlds"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Under the Starry Skies, the Greengrass Lies" AND t.name = "Fluff" AND a.name = "Magical_Worlds"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Under the Starry Skies, the Greengrass Lies" AND t.name = "Sexual content" AND a.name = "Magical_Worlds"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Under the Starry Skies, the Greengrass Lies" AND t.name = "One-shot" AND a.name = "Magical_Worlds"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Who Wouldn't Want You" AND t.name = "Post-canon" AND a.name = "Nixrocket"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Who Wouldn't Want You" AND t.name = "Family" AND a.name = "Nixrocket"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "It's Complicated" AND t.name = "Sexual content" AND a.name = "Pottermum"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Pretty Please with a Ginny on Top" AND t.name = "Sexual content" AND a.name = "Rickey"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Pretty Please with a Ginny on Top" AND t.name = "Romance" AND a.name = "Rickey"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Pretty Please with a Ginny on Top" AND t.name = "One-shot" AND a.name = "Rickey"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Four Times Harry Walked in on Ron and Hermione and One Time He Didn’t" AND t.name = "Sexual content" AND a.name = "Liiilyevans"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Four Times Harry Walked in on Ron and Hermione and One Time He Didn’t" AND t.name = "Humor" AND a.name = "Liiilyevans"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Four Times Harry Walked in on Ron and Hermione and One Time He Didn’t" AND t.name = "Fluff" AND a.name = "Liiilyevans"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Four Times Harry Walked in on Ron and Hermione and One Time He Didn’t" AND t.name = "One-shot" AND a.name = "Liiilyevans"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ménage à Quatre" AND t.name = "Femdom" AND a.name = "Methos (Methos2523)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ménage à Quatre" AND t.name = "Sexual content" AND a.name = "Methos (Methos2523)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ménage à Quatre" AND t.name = "Multi" AND a.name = "Methos (Methos2523)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ménage à Quatre" AND t.name = "Lesbian | Yuri" AND a.name = "Methos (Methos2523)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Brumous" AND t.name = "Fluff" AND a.name = "SeriouslySam"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Needs" AND t.name = "Romance" AND a.name = "Litfreak89"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Her Goodbye" AND t.name = "Romance" AND a.name = "Disappearing Boy"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Her Goodbye" AND t.name = "One-shot" AND a.name = "Disappearing Boy"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Bath and Bed" AND t.name = "Romance" AND a.name = "Tommigoesfroging"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Bath and Bed" AND t.name = "One-shot" AND a.name = "Tommigoesfroging"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Homework with Hermione" AND t.name = "Romance" AND a.name = "Airam06"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Homework with Hermione" AND t.name = "One-shot" AND a.name = "Airam06"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Prefects Bath" AND t.name = "Romance" AND a.name = "123irish"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Prefects Bath" AND t.name = "Friendship" AND a.name = "123irish"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Prefects Bath" AND t.name = "One-shot" AND a.name = "123irish"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Library Princess" AND t.name = "Romance" AND a.name = "Frenchhornbook"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Library Princess" AND t.name = "Angst" AND a.name = "Frenchhornbook"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Library Princess" AND t.name = "One-shot" AND a.name = "Frenchhornbook"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Emerald Coven" AND t.name = "Adventure" AND a.name = "Hallows Seeker"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Emerald Coven" AND t.name = "Romance" AND a.name = "Hallows Seeker"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dirty games" AND t.name = "Romance" AND a.name = "Noctus Noxia"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dirty games" AND t.name = "One-shot" AND a.name = "Noctus Noxia"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Courtesan" AND t.name = "Drama" AND a.name = "HeartsIgnite"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Courtesan" AND t.name = "Angst" AND a.name = "HeartsIgnite"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Courtesan" AND t.name = "One-shot" AND a.name = "HeartsIgnite"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Enjoy the Fireworks" AND t.name = "Romance" AND a.name = "ChampionOfKratos"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Enjoy the Fireworks" AND t.name = "One-shot" AND a.name = "ChampionOfKratos"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Feral" AND t.name = "Romance" AND a.name = "TsyberRhaegal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Feral" AND t.name = "One-shot" AND a.name = "TsyberRhaegal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Domesticated" AND t.name = "Romance" AND a.name = "TsyberRhaegal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Domesticated" AND t.name = "Family" AND a.name = "TsyberRhaegal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Domesticated" AND t.name = "One-shot" AND a.name = "TsyberRhaegal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Godfather Neville" AND t.name = "Hurt | Comfort" AND a.name = "TsyberRhaegal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Godfather Neville" AND t.name = "Family" AND a.name = "TsyberRhaegal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Godfather Neville" AND t.name = "One-shot" AND a.name = "TsyberRhaegal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Voyeurism is such a strong word" AND t.name = "Romance" AND a.name = "TsyberRhaegal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Voyeurism is such a strong word" AND t.name = "Humor" AND a.name = "TsyberRhaegal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Voyeurism is such a strong word" AND t.name = "One-shot" AND a.name = "TsyberRhaegal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Tell Me Your Secrets" AND t.name = "Romance" AND a.name = "Ladyfun"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Tell Me Your Secrets" AND t.name = "Drama" AND a.name = "Ladyfun"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Black Ivy" AND t.name = "Adventure" AND a.name = "DragonKingDragneel25"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Black Ivy" AND t.name = "Mystery" AND a.name = "DragonKingDragneel25"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Something New" AND t.name = "Romance" AND a.name = "NutPea16"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Something New" AND t.name = "Humor" AND a.name = "NutPea16"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Something New" AND t.name = "One-shot" AND a.name = "NutPea16"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hot Massage" AND t.name = "Romance" AND a.name = "Johnprewett"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hot Massage" AND t.name = "One-shot" AND a.name = "Johnprewett"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "What are we celebrating?" AND t.name = "Romance" AND a.name = "Slytherinenigma"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "What are we celebrating?" AND t.name = "Humor" AND a.name = "Slytherinenigma"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lines of Life" AND t.name = "Romance" AND a.name = "Relena Mishima"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lines of Life" AND t.name = "Drama" AND a.name = "Relena Mishima"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Stockings Required" AND t.name = "Romance" AND a.name = "LadiePhoenix007"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Stockings Required" AND t.name = "Fantasy" AND a.name = "LadiePhoenix007"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "For The First Time" AND t.name = "Romance" AND a.name = "Ladyfun"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "For The First Time" AND t.name = "Drama" AND a.name = "Ladyfun"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Susan Potter nee Bones" AND t.name = "Romance" AND a.name = "Potterfamilysecret1"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Susan Potter nee Bones" AND t.name = "Humor" AND a.name = "Potterfamilysecret1"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Susan Potter nee Bones" AND t.name = "One-shot" AND a.name = "Potterfamilysecret1"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Anniversary" AND t.name = "Romance" AND a.name = "HersByHisByHers"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Thrall or not Thrall, that Is the Question" AND t.name = "Romance" AND a.name = "Listen-to"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Thrall or not Thrall, that Is the Question" AND t.name = "One-shot" AND a.name = "Listen-to"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Desires and Delusions" AND t.name = "Romance" AND a.name = "RAfan2421"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Desires and Delusions" AND t.name = "Angst" AND a.name = "RAfan2421"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Desires and Delusions" AND t.name = "One-shot" AND a.name = "RAfan2421"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just One Night" AND t.name = "Romance" AND a.name = "Messr. Wolfethorn"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just One Night" AND t.name = "Humor" AND a.name = "Messr. Wolfethorn"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just One Night" AND t.name = "One-shot" AND a.name = "Messr. Wolfethorn"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Negligentia" AND t.name = "Family" AND a.name = "Murkatroyd"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Negligentia" AND t.name = "One-shot" AND a.name = "Murkatroyd"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sleepless Nights" AND t.name = "Romance" AND a.name = "Nynayve"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sleepless Nights" AND t.name = "One-shot" AND a.name = "Nynayve"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Shifting towards Eachother" AND t.name = "Romance" AND a.name = "Listen-to"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Returning to the Start" AND t.name = "Romance" AND a.name = "Timunderwood9"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "After the Chamber - Lords and Ladies" AND t.name = "Romance" AND a.name = "SeerKing"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "After the Chamber - Lords and Ladies" AND t.name = "Adventure" AND a.name = "SeerKing"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Days to Come" AND t.name = "Romance" AND a.name = "Chris400ad"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Days to Come" AND t.name = "Drama" AND a.name = "Chris400ad"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Secret Truth" AND t.name = "Romance" AND a.name = "Articcat621"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Secret Truth" AND t.name = "Friendship" AND a.name = "Articcat621"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Secret Truth" AND t.name = "One-shot" AND a.name = "Articcat621"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Simplicity" AND t.name = "Romance" AND a.name = "Medotcomslashme"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Simplicity" AND t.name = "Drama" AND a.name = "Medotcomslashme"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Everything will be ok in the end" AND t.name = "Drama" AND a.name = "SkyHigh17"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Everything will be ok in the end" AND t.name = "Romance" AND a.name = "SkyHigh17"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Interludes and Vignettes" AND t.name = "Harry P., Hermione G." AND a.name = "Cloud Zen"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Trials of The Stone" AND t.name = "Adventure" AND a.name = "RagingCassowary"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Trials of The Stone" AND t.name = "Fantasy" AND a.name = "RagingCassowary"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Spring Equinox" AND t.name = "Romance" AND a.name = "Harry50"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Spring Equinox" AND t.name = "Family" AND a.name = "Harry50"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sympathetic Properties" AND t.name = "Drama" AND a.name = "Mr Norrell"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sympathetic Properties" AND t.name = "Humor" AND a.name = "Mr Norrell"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Give Me Love" AND t.name = "Romance" AND a.name = "IWillGoWithYouHarry"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Bad Timing" AND t.name = "Drama" AND a.name = "PassnPlay"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Bad Timing" AND t.name = "Romance" AND a.name = "PassnPlay"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hermione's Little Whore" AND t.name = "Romance" AND a.name = "Writerfreakssss"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hermione's Little Whore" AND t.name = "Drama" AND a.name = "Writerfreakssss"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hermione's Little Whore" AND t.name = "One-shot" AND a.name = "Writerfreakssss"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Remember My Name" AND t.name = "Romance" AND a.name = "Writerfreakssss"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Remember My Name" AND t.name = "Drama" AND a.name = "Writerfreakssss"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Remember My Name" AND t.name = "One-shot" AND a.name = "Writerfreakssss"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "La maladie du baiser" AND t.name = "Romance" AND a.name = "Lana.HP"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Luna Joins the Fun" AND t.name = "Romance" AND a.name = "Writerfreakssss"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Luna Joins the Fun" AND t.name = "One-shot" AND a.name = "Writerfreakssss"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "That Certain Something" AND t.name = "Romance" AND a.name = "Crimson Darkness8"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Microclimat sentimental" AND t.name = "Romance" AND a.name = "Math'L"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Microclimat sentimental" AND t.name = "One-shot" AND a.name = "Math'L"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Herbal Tea" AND t.name = "Romance" AND a.name = "NidoranDuran"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Herbal Tea" AND t.name = "One-shot" AND a.name = "NidoranDuran"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hollow" AND t.name = "Adventure" AND a.name = "Dante 2K-25"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hollow" AND t.name = "Fantasy" AND a.name = "Dante 2K-25"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Best Man's Job" AND t.name = "Humor" AND a.name = "Scott the Wanderer"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Always" AND t.name = "Romance" AND a.name = "Caydus"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Always" AND t.name = "Adventure" AND a.name = "Caydus"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dessert" AND t.name = "Romance" AND a.name = "Smilelaughread"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dessert" AND t.name = "Humor" AND a.name = "Smilelaughread"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dessert" AND t.name = "One-shot" AND a.name = "Smilelaughread"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cheat on me" AND t.name = "Hurt" AND a.name = "UpTheHill"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cheat on me" AND t.name = "Comfort" AND a.name = "UpTheHill"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cheat on me" AND t.name = "One-shot" AND a.name = "UpTheHill"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Le Coup de Foudre est de couleur Rouge Carmin" AND t.name = "Romance" AND a.name = "Gouline971"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Cadmean Victory" AND t.name = "Adventure" AND a.name = "DarknessEnthroned"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Cadmean Victory" AND t.name = "Romance" AND a.name = "DarknessEnthroned"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Reunion" AND t.name = "Family" AND a.name = "Emp. Elesar II"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Reunion" AND t.name = "One-shot" AND a.name = "Emp. Elesar II"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Family Relationship" AND t.name = "Romance" AND a.name = "Zakhro"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Family Relationship" AND t.name = "One-shot" AND a.name = "Zakhro"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Bonding" AND t.name = "Romance" AND a.name = "Flowerchild33"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Bonding" AND t.name = "Family" AND a.name = "Flowerchild33"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "46 Hours" AND t.name = "Family" AND a.name = "Flowerchild33"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Creating a Balance" AND t.name = "Family" AND a.name = "Flowerchild33"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Creating a Balance" AND t.name = "Adventure" AND a.name = "Flowerchild33"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Long Live The Queen" AND t.name = "Harry P., Sirius B." AND a.name = "Offsides"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Breath of the Inferno" AND t.name = "Adventure" AND a.name = "Primordial Vortex"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sirius Black and the Raising of Children" AND t.name = "Family" AND a.name = "AlexMurray11235"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Amicus Protectio Fortis" AND t.name = "Adventure" AND a.name = "Barelyeverthere"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Amicus Protectio Fortis" AND t.name = "Humor" AND a.name = "Barelyeverthere"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Forgotten Affairs" AND t.name = "Romance" AND a.name = "Midnight17516"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Forgotten Affairs" AND t.name = "Hurt | Comfort" AND a.name = "Midnight17516"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dodging Prison and Stealing Witches - Revenge is Best Served Raw" AND t.name = "Adventure" AND a.name = "LeadVonE"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dodging Prison and Stealing Witches - Revenge is Best Served Raw" AND t.name = "Romance" AND a.name = "LeadVonE"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lily Potter and the Witches of Salem" AND t.name = "Romance" AND a.name = "XDreamlessx"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lily Potter and the Witches of Salem" AND t.name = "Humor" AND a.name = "XDreamlessx"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Christmas Holiday" AND t.name = "Romance" AND a.name = "Dizzy - in - the - izzy"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Christmas Holiday" AND t.name = "Humor" AND a.name = "Dizzy - in - the - izzy"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Christmas Holiday" AND t.name = "One-shot" AND a.name = "Dizzy - in - the - izzy"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fur and Feathers" AND t.name = "Romance" AND a.name = "Shdwqueen"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fur and Feathers" AND t.name = "Adventure" AND a.name = "Shdwqueen"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Deck the Halls" AND t.name = "Romance" AND a.name = "Sheltie1987"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Deck the Halls" AND t.name = "One-shot" AND a.name = "Sheltie1987"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sweet seduction" AND t.name = "Romance" AND a.name = "Antjex3"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sweet seduction" AND t.name = "Family" AND a.name = "Antjex3"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sweet seduction" AND t.name = "One-shot" AND a.name = "Antjex3"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "More Than Equal" AND t.name = "Adventure" AND a.name = "Ordinarily Prudent"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Tuesday Night" AND t.name = "One-shot" AND a.name = "JLvE"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Purebloods and Their Tedious Traditions" AND t.name = "Romance" AND a.name = "Argo0"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Twisting Time" AND t.name = "Angst" AND a.name = "The-writer1988"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Twisting Time" AND t.name = "Family" AND a.name = "The-writer1988"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love Multiplied" AND t.name = "Romance" AND a.name = "Flowerchild33"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love Multiplied" AND t.name = "Family" AND a.name = "Flowerchild33"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Gods Amongst Men" AND t.name = "Romance" AND a.name = "Slimah"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Gods Amongst Men" AND t.name = "Adventure" AND a.name = "Slimah"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Changing Fate's Plans" AND t.name = "Adventure" AND a.name = "Golasgil Sindar"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Changing Fate's Plans" AND t.name = "Romance" AND a.name = "Golasgil Sindar"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Stay" AND t.name = "Family" AND a.name = "HannahFranziska"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Stay" AND t.name = "Drama" AND a.name = "HannahFranziska"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Termination Without" AND t.name = "Tragedy" AND a.name = "Alex Moss"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Termination Without" AND t.name = "Romance" AND a.name = "Alex Moss"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "To Reach Without" AND t.name = "Drama" AND a.name = "Inwardtransience"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "To Reach Without" AND t.name = "Romance" AND a.name = "Inwardtransience"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Rune Stone Path" AND t.name = "Adventure" AND a.name = "Temporal Knight"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Playdate" AND t.name = "Drama" AND a.name = "ThatsRealMagic"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Playdate" AND t.name = "Romance" AND a.name = "ThatsRealMagic"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Playdate" AND t.name = "One-shot" AND a.name = "ThatsRealMagic"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Amalgum – Lockhart's Folly" AND t.name = "Adventure" AND a.name = "Tkepner"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Amalgum – Lockhart's Folly" AND t.name = "Humor" AND a.name = "Tkepner"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Gothic" AND t.name = "Adventure" AND a.name = "Brennus"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Last Chance" AND t.name = "Adventure" AND a.name = "LeQuin"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Last Chance" AND t.name = "Romance" AND a.name = "LeQuin"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "When Fate Intervened" AND t.name = "Adventure" AND a.name = "LordVishnu"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "When Fate Intervened" AND t.name = "Romance" AND a.name = "LordVishnu"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "An Invisible Mishap" AND t.name = "One-shot" AND a.name = "Elven Sorcerer"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Prefect's Bathroom" AND t.name = "Romance" AND a.name = "MobBob"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Prefect's Bathroom" AND t.name = "Humor" AND a.name = "MobBob"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Prefect's Bathroom" AND t.name = "One-shot" AND a.name = "MobBob"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love Under the Invisibility Cloak" AND t.name = "Romance" AND a.name = "MobBob"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love Under the Invisibility Cloak" AND t.name = "One-shot" AND a.name = "MobBob"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Witch 3" AND t.name = "Romance" AND a.name = "Argo0"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Witch 3" AND t.name = "One-shot" AND a.name = "Argo0"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Ilvermorny Champion" AND t.name = "Romance" AND a.name = "VMFanfiction"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Ilvermorny Champion" AND t.name = "Adventure" AND a.name = "VMFanfiction"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Power of the Potters" AND t.name = "Family" AND a.name = "RockIll"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Happy Birthday Harry" AND t.name = "Romance" AND a.name = "Epeefencer"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Happy Birthday Harry" AND t.name = "Family" AND a.name = "Epeefencer"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Happy Birthday Harry" AND t.name = "One-shot" AND a.name = "Epeefencer"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Magical Puberty" AND t.name = "Romance" AND a.name = "Fantasy1290"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Magical Puberty" AND t.name = "Fantasy" AND a.name = "Fantasy1290"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Honour Thy Blood" AND t.name = "Drama" AND a.name = "TheBlack'sResurgence"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Honour Thy Blood" AND t.name = "Romance" AND a.name = "TheBlack'sResurgence"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Celebration" AND t.name = "Romance" AND a.name = "ThatsRealMagic"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Celebration" AND t.name = "One-shot" AND a.name = "ThatsRealMagic"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Closer You Look" AND t.name = "Adventure" AND a.name = "Tony Samuels"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Closer You Look" AND t.name = "Humor" AND a.name = "Tony Samuels"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Law" AND t.name = "Romance" AND a.name = "Harry50"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Law" AND t.name = "Family" AND a.name = "Harry50"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Heroes Assemble!" AND t.name = "Adventure" AND a.name = "Stargon1"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "As Ron Likes It" AND t.name = "Friendship" AND a.name = "NickieButterfly"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "As Ron Likes It" AND t.name = "Romance" AND a.name = "NickieButterfly"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "As Ron Likes It" AND t.name = "One-shot" AND a.name = "NickieButterfly"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Late Night Revelations" AND t.name = "Mystery" AND a.name = "Epeefencer"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Late Night Revelations" AND t.name = "Romance" AND a.name = "Epeefencer"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Late Night Revelations" AND t.name = "One-shot" AND a.name = "Epeefencer"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Soul Scars" AND t.name = "Romance" AND a.name = "Rtnwriter"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Soul Scars" AND t.name = "Drama" AND a.name = "Rtnwriter"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "One lucky Wife" AND t.name = "Romance" AND a.name = "Rivia"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "One lucky Wife" AND t.name = "One-shot" AND a.name = "Rivia"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cure for Nightmares" AND t.name = "One-shot" AND a.name = "Avain1991"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Beautiful Lie" AND t.name = "Fantasy" AND a.name = "MaybeMayba"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Beautiful Lie" AND t.name = "Drama" AND a.name = "MaybeMayba"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and The Old Friend" AND t.name = "Adventure" AND a.name = "Sinyk"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and The Old Friend" AND t.name = "Crime" AND a.name = "Sinyk"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Godfather's Promise" AND t.name = "Romance" AND a.name = "The Metal Sage"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Lonely Letters" AND t.name = "Romance" AND a.name = "JusticeRings"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Lonely Letters" AND t.name = "Friendship" AND a.name = "JusticeRings"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sling Shots" AND t.name = "Mystery" AND a.name = "Illjwamh"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Unexpected Happiness" AND t.name = "Romance" AND a.name = "SehunsBae37"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Unexpected Happiness" AND t.name = "Drama" AND a.name = "SehunsBae37"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Guardian" AND t.name = "Romance" AND a.name = "Swat303810"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Guardian" AND t.name = "Hurt | Comfort" AND a.name = "Swat303810"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "From Ruin" AND t.name = "Adventure" AND a.name = "GraeFoxx"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "From Ruin" AND t.name = "Angst" AND a.name = "GraeFoxx"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Watching and Waiting Reloaded" AND t.name = "Romance" AND a.name = "LilyevansJan30"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Watching and Waiting Reloaded" AND t.name = "Family" AND a.name = "LilyevansJan30"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Only You" AND t.name = "Romance" AND a.name = "Averlovi"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Only You" AND t.name = "Friendship" AND a.name = "Averlovi"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Save Me" AND t.name = "Romance" AND a.name = "Dorothea_Greengrass"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Save Me" AND t.name = "One-shot" AND a.name = "Dorothea_Greengrass"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Three little words" AND t.name = "Family" AND a.name = "Rouven Singer"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Three little words" AND t.name = "Adventure" AND a.name = "Rouven Singer"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Black Lord" AND t.name = "Family" AND a.name = "Irislafey"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Black Lord" AND t.name = "Adventure" AND a.name = "Irislafey"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dragon Chronicles 1: Muggle-Raised Champion" AND t.name = "Adventure" AND a.name = "Stargon1"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dragon Chronicles 2: Harry Potter, Dragon Whisperer" AND t.name = "Adventure" AND a.name = "Stargon1"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dying Light" AND t.name = "Adventure" AND a.name = "Darkw01fie"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dying Light" AND t.name = "Fantasy" AND a.name = "Darkw01fie"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Albus and Harry's World Trip" AND t.name = "Humor" AND a.name = "ZebJeb"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Albus and Harry's World Trip" AND t.name = "Adventure" AND a.name = "ZebJeb"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Beat Your Heart Out" AND t.name = "Drama" AND a.name = "GleeGeneration23"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Beat Your Heart Out" AND t.name = "Romance" AND a.name = "GleeGeneration23"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Crow From Afar" AND t.name = "Adventure" AND a.name = "WhitherWinds"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Crow From Afar" AND t.name = "Crime" AND a.name = "WhitherWinds"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Head Start" AND t.name = "Adventure" AND a.name = "Kratos1989"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Green Light in the Dark" AND t.name = "Family" AND a.name = "AStrangeHopefulDreamer"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cheating Death" AND t.name = "Family" AND a.name = "Seriously Sam"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cheating Death" AND t.name = "Hurt | Comfort" AND a.name = "Seriously Sam"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "If not for Umbridge" AND t.name = "Romance" AND a.name = "Chris400ad"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "If not for Umbridge" AND t.name = "Drama" AND a.name = "Chris400ad"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Treasure Hunter" AND t.name = "Adventure" AND a.name = "TimeTraveller-1900"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Weasley Perspective" AND t.name = "Romance" AND a.name = "CharmHazel"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Weasley Perspective" AND t.name = "Family" AND a.name = "CharmHazel"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Power He Knows Not" AND t.name = "Romance" AND a.name = "Shivam Jha"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Power He Knows Not" AND t.name = "Adventure" AND a.name = "Shivam Jha"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Boy Who Lived, The Brightest Witch and The Boy Who Wasn't" AND t.name = "Friendship" AND a.name = "Dragonfly117"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Boy Who Lived, The Brightest Witch and The Boy Who Wasn't" AND t.name = "Romance" AND a.name = "Dragonfly117"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "River Deep, Mountain High" AND t.name = "Drama" AND a.name = "Dorothea_Greengrass"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "River Deep, Mountain High" AND t.name = "Romance" AND a.name = "Dorothea_Greengrass"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Brontide" AND t.name = "Hurt | Comfort" AND a.name = "SeriouslySam"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Brontide" AND t.name = "Family" AND a.name = "SeriouslySam"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Need Protection?" AND t.name = "Romance" AND a.name = "Enchantra35"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Need Protection?" AND t.name = "Mystery" AND a.name = "Enchantra35"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Quidditch Tales" AND t.name = "Drama" AND a.name = "Potterlad81"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Quidditch Tales" AND t.name = "Romance" AND a.name = "Potterlad81"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "By the Moon Light" AND t.name = "Romance" AND a.name = "WolfgangNH"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Better Than Cake" AND t.name = "Romance" AND a.name = "Madrosewriting"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Better Than Cake" AND t.name = "Friendship" AND a.name = "Madrosewriting"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Better Than Cake" AND t.name = "One-shot" AND a.name = "Madrosewriting"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Shagging Psychology" AND t.name = "Romance" AND a.name = "Tweety-src-clt9"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Shagging Psychology" AND t.name = "Humor" AND a.name = "Tweety-src-clt9"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Brothers" AND t.name = "Family" AND a.name = "Writing Sins Not Tragedies"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Brothers" AND t.name = "Romance" AND a.name = "Writing Sins Not Tragedies"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Castles" AND t.name = "Angst" AND a.name = "Pebblysand"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Purpose of Wings" AND t.name = "Romance" AND a.name = "Charlennette"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Purpose of Wings" AND t.name = "Family" AND a.name = "Charlennette"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Through Shadows" AND t.name = "Angst" AND a.name = "Hpfangal"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Through Shadows" AND t.name = "Hurt | Comfort" AND a.name = "Hpfangal"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter: Thinking like a Thief" AND t.name = "Crime" AND a.name = "TimeTraveller-1900"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Gabrielle's Most Joyous Noël" AND t.name = "Romance" AND a.name = "CesareBorgiaWrites"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Gabrielle's Most Joyous Noël" AND t.name = "One-shot" AND a.name = "CesareBorgiaWrites"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Learning from Lily" AND t.name = "Family" AND a.name = "Cyan93"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Taken and Forgotten" AND t.name = "Friendship" AND a.name = "Tismy 101"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lifetimes of July" AND t.name = "Romance" AND a.name = "Vanderlustwords"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lifetimes of July" AND t.name = "Drama" AND a.name = "Vanderlustwords"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Entombed" AND t.name = "Drama" AND a.name = "SeriouslySam"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Entombed" AND t.name = "Angst" AND a.name = "SeriouslySam"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Different Type of Bond" AND t.name = "Hurt | Comfort" AND a.name = "WolfgangNH"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Different Type of Bond" AND t.name = "Drama" AND a.name = "WolfgangNH"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A King's Path" AND t.name = "Adventure" AND a.name = "521-DREAM"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A King's Path" AND t.name = "Romance" AND a.name = "521-DREAM"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Brothers: The Second Chapter" AND t.name = "Family" AND a.name = "Writing Sins Not Tragedies"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Brothers: The Second Chapter" AND t.name = "Romance" AND a.name = "Writing Sins Not Tragedies"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Your Arse Is Mine!" AND t.name = "Romance" AND a.name = "Thedirtymind"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Your Arse Is Mine!" AND t.name = "Family" AND a.name = "Thedirtymind"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Your Arse Is Mine!" AND t.name = "One-shot" AND a.name = "Thedirtymind"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Head Boy's Room" AND t.name = "Romance" AND a.name = "Ducksonparade"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Head Boy's Room" AND t.name = "One-shot" AND a.name = "Ducksonparade"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Survivors" AND t.name = "Crime" AND a.name = "OrionB15"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Survivors" AND t.name = "Drama" AND a.name = "OrionB15"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "An Avenger's Anguish" AND t.name = "Drama" AND a.name = "Saliient91"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "An Avenger's Anguish" AND t.name = "Adventure" AND a.name = "Saliient91"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Melting the Ice" AND t.name = "Romance" AND a.name = "Theoneandonly99"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Melting the Ice" AND t.name = "Hurt | Comfort" AND a.name = "Theoneandonly99"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Focus of a Healer" AND t.name = "Adventure" AND a.name = "OfficeSloth"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Focus of a Healer" AND t.name = "Romance" AND a.name = "OfficeSloth"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Hogwarts Lonely Hearts Club" AND t.name = "Friendship" AND a.name = "Th3Alchemist"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Hogwarts Lonely Hearts Club" AND t.name = "Romance" AND a.name = "Th3Alchemist"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "How Silently She Sings" AND t.name = "Romance" AND a.name = "Charlennette"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "How Silently She Sings" AND t.name = "Hurt | Comfort" AND a.name = "Charlennette"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Pray For The Wicked" AND t.name = "Drama" AND a.name = "Kapiushon"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Pray For The Wicked" AND t.name = "Romance" AND a.name = "Kapiushon"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Organic" AND t.name = "Friendship" AND a.name = "Akamoroti"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Organic" AND t.name = "Romance" AND a.name = "Akamoroti"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Strange Case of Love" AND t.name = "Romance" AND a.name = "Thedirtymind"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Strange Case of Love" AND t.name = "Family" AND a.name = "Thedirtymind"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fire and Ice" AND t.name = "Romance" AND a.name = "ACI100"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fire and Ice" AND t.name = "Hurt | Comfort" AND a.name = "ACI100"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fire and Ice" AND t.name = "One-shot" AND a.name = "ACI100"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Family that Chooses You" AND t.name = "Family" AND a.name = "WokFriedIce"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Family that Chooses You" AND t.name = "Hurt | Comfort" AND a.name = "WokFriedIce"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Family that Heals" AND t.name = "Family" AND a.name = "WokFriedIce"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Family that Heals" AND t.name = "Hurt | Comfort" AND a.name = "WokFriedIce"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Extended Family" AND t.name = "Friendship" AND a.name = "WokFriedIce"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fleur De Lis" AND t.name = "Romance" AND a.name = "OrionB15"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fleur De Lis" AND t.name = "Adventure" AND a.name = "OrionB15"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Winding Road" AND t.name = "Drama" AND a.name = "NotAWriter1981"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Winding Road" AND t.name = "Adventure" AND a.name = "NotAWriter1981"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Winding Road" AND t.name = "AU" AND a.name = "NotAWriter1981"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Lion and The Lioness" AND t.name = "Romance" AND a.name = "TigerGirl14"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Lion and The Lioness" AND t.name = "Drama" AND a.name = "TigerGirl14"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Thrown Back" AND t.name = "Romance" AND a.name = "ProfessorQuill101"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Thrown Back" AND t.name = "Time-travel" AND a.name = "ProfessorQuill101"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Call Me Edward" AND t.name = "Adventure" AND a.name = "CelesteMagnolia"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Call Me Edward" AND t.name = "Family" AND a.name = "CelesteMagnolia"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Dark Year" AND t.name = "Drama" AND a.name = "Alwaysendwithakiss"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Dark Year" AND t.name = "Suspense" AND a.name = "Alwaysendwithakiss"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "On The Hunt" AND t.name = "Romance" AND a.name = "Vedros"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "On The Hunt" AND t.name = "Adventure" AND a.name = "Vedros"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Reading HP - 1" AND t.name = "Friendship" AND a.name = "Lorixjake"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Reading HP - 1" AND t.name = "Humor" AND a.name = "Lorixjake"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Agent Potter: The Wizard of WAND" AND t.name = "Mystery" AND a.name = "HPfanfictioner66"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Agent Potter: The Wizard of WAND" AND t.name = "Adventure" AND a.name = "HPfanfictioner66"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Daphne Greengrass and the Boy Who Lived" AND t.name = "Adventure" AND a.name = "KatonRyu"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Daphne Greengrass and the Boy Who Lived" AND t.name = "Friendship" AND a.name = "KatonRyu"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Delicate Art of Raising Thestrals" AND t.name = "Drama" AND a.name = "AppoApples"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Ritual of Love's Memory" AND t.name = "Romance" AND a.name = "CampDBow"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Written in the Stars" AND t.name = "Drama" AND a.name = "TheBlack'sResurgence"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Written in the Stars" AND t.name = "Adventure" AND a.name = "TheBlack'sResurgence"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Never Silence A Lion's Roar" AND t.name = "Drama" AND a.name = "Aeyliana"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Never Silence A Lion's Roar" AND t.name = "Angst" AND a.name = "Aeyliana"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Lost Horcrux" AND t.name = "Romance" AND a.name = "LilyevansJan30"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Lost Horcrux" AND t.name = "Family" AND a.name = "LilyevansJan30"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A short life full of long years" AND t.name = "Adventure" AND a.name = "RMWB"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A short life full of long years" AND t.name = "Romance" AND a.name = "RMWB"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Evans: Memoirs of a well-lived Death (SI)" AND t.name = "Adventure" AND a.name = "Bor902"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Taste of Magic" AND t.name = "Friendship" AND a.name = "WokFriedIce"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Taste of Magic" AND t.name = "Family" AND a.name = "WokFriedIce"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Side Dishes" AND t.name = "Friendship" AND a.name = "WokFriedIce"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Side Dishes" AND t.name = "Family" AND a.name = "WokFriedIce"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Intrinsicality" AND t.name = "Romance" AND a.name = "RileyOR"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "We're Home" AND t.name = "Romance" AND a.name = "Hatebelow"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "We're Home" AND t.name = "One-shot" AND a.name = "Hatebelow"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hatal Fart Attack" AND t.name = "Humor" AND a.name = "Corwalch"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hatal Fart Attack" AND t.name = "One-shot" AND a.name = "Corwalch"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Beautiful" AND t.name = "Romance" AND a.name = "Michelle Moonshine"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Beautiful" AND t.name = "Drama" AND a.name = "Michelle Moonshine"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Beautiful" AND t.name = "One-shot" AND a.name = "Michelle Moonshine"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Parce que" AND t.name = "Romance" AND a.name = "Feymist"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Parce que" AND t.name = "One-shot" AND a.name = "Feymist"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Back Again, Harry?" AND t.name = "Drama" AND a.name = "Jedi Buttercup"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Harmony Bond" AND t.name = "Angst" AND a.name = "Brigrove"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Harmony Bond" AND t.name = "Hurt | Comfort" AND a.name = "Brigrove"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Obligatory Marriage Law Fic" AND t.name = "Romance" AND a.name = "Bobmin356"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Obligatory Marriage Law Fic" AND t.name = "Drama" AND a.name = "Bobmin356"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Obligatory Marriage Law Fic" AND t.name = "One-shot" AND a.name = "Bobmin356"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Knowing Where to Look" AND t.name = "Hurt | Comfort" AND a.name = "La baguette"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Knowing Where to Look" AND t.name = "Mystery" AND a.name = "La baguette"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Seduced by a Veela" AND t.name = "Romance" AND a.name = "Hphglover"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Seduced by a Veela" AND t.name = "Angst" AND a.name = "Hphglover"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ron's Howler" AND t.name = "Humor" AND a.name = "Stick97"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ron's Howler" AND t.name = "Romance" AND a.name = "Stick97"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ron's Howler" AND t.name = "One-shot" AND a.name = "Stick97"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Unmentionables?" AND t.name = "Humor" AND a.name = "Stick97"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Unmentionables?" AND t.name = "Parody" AND a.name = "Stick97"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Betrothal Contract" AND t.name = "Romance" AND a.name = "James Spookie"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Betrothal Contract" AND t.name = "Adventure" AND a.name = "James Spookie"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Accidental Bond" AND t.name = "Drama" AND a.name = "Kb0"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Accidental Bond" AND t.name = "Adventure" AND a.name = "Kb0"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Heart and Soul" AND t.name = "Drama" AND a.name = "Sillimaure"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Heart and Soul" AND t.name = "Romance" AND a.name = "Sillimaure"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cold blood" AND t.name = "Drama" AND a.name = "DerLaCroix"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cold blood" AND t.name = "Romance" AND a.name = "DerLaCroix"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Return of the Marauders" AND t.name = "Romance" AND a.name = "TheLastZion"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Return of the Marauders" AND t.name = "Adventure" AND a.name = "TheLastZion"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fine Then!" AND t.name = "Humor" AND a.name = "Alpha-The-Omega"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fine Then!" AND t.name = "Friendship" AND a.name = "Alpha-The-Omega"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fine Then!" AND t.name = "One-shot" AND a.name = "Alpha-The-Omega"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "BitterSweet Irony" AND t.name = "Romance" AND a.name = "Sqwiz"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "BitterSweet Irony" AND t.name = "Angst" AND a.name = "Sqwiz"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter After the War" AND t.name = "Drama" AND a.name = "PotterFanSteve"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter After the War" AND t.name = "Romance" AND a.name = "PotterFanSteve"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lucky Harry" AND t.name = "Adventure" AND a.name = "Pyrgus"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "For the Best" AND t.name = "Romance" AND a.name = "Deliver.me"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "For the Best" AND t.name = "One-shot" AND a.name = "Deliver.me"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Death's Doorbell" AND t.name = "Humor" AND a.name = "Paladeus"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Death's Doorbell" AND t.name = "Romance" AND a.name = "Paladeus"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Death's Doorbell" AND t.name = "One-shot" AND a.name = "Paladeus"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "From The Ashes Of Magic" AND t.name = "Romance" AND a.name = "Dreetje"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Pureblood Princess" AND t.name = "Romance" AND a.name = "TheEndless7"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "On Teenagers And Love" AND t.name = "Romance" AND a.name = "Anamatics"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "For the Love of Ginny" AND t.name = "One-shot" AND a.name = "Jesrod82"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "She Who Holds the Strings" AND t.name = "Romance" AND a.name = "Romantic Silence"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "She Who Holds the Strings" AND t.name = "Horror" AND a.name = "Romantic Silence"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "She Who Holds the Strings" AND t.name = "One-shot" AND a.name = "Romantic Silence"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Harry Potter Writers Circle" AND t.name = "Humor" AND a.name = "Pettybureaucrat"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Harry Potter Writers Circle" AND t.name = "Friendship" AND a.name = "Pettybureaucrat"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Harry Potter Writers Circle" AND t.name = "One-shot" AND a.name = "Pettybureaucrat"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "One Night" AND t.name = "Romance" AND a.name = "Sugarbubbleslove"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "One Night" AND t.name = "Humor" AND a.name = "Sugarbubbleslove"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "One Night" AND t.name = "One-shot" AND a.name = "Sugarbubbleslove"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Nanny Wanted" AND t.name = "Romance" AND a.name = "Miscard"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Nanny Wanted" AND t.name = "Drama" AND a.name = "Miscard"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Set Up Gone Wrong" AND t.name = "Romance" AND a.name = "Jojor99"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Set Up Gone Wrong" AND t.name = "Friendship" AND a.name = "Jojor99"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "No Regrets" AND t.name = "Romance" AND a.name = "WandaXmaximoff"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "No Regrets" AND t.name = "Drama" AND a.name = "WandaXmaximoff"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "No Regrets" AND t.name = "One-shot" AND a.name = "WandaXmaximoff"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Autumn Swan" AND t.name = "Romance" AND a.name = "Lord Akiyama"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Autumn Swan" AND t.name = "Drama" AND a.name = "Lord Akiyama"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Snake in the Chestnut" AND t.name = "Family" AND a.name = "Nauro"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Snake in the Chestnut" AND t.name = "Tragedy" AND a.name = "Nauro"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Elusive Prince" AND t.name = "Humor" AND a.name = "The Purple Critic"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Elusive Prince" AND t.name = "Romance" AND a.name = "The Purple Critic"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Call to Arms" AND t.name = "Drama" AND a.name = "My Dear Professor McGonagall"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Call to Arms" AND t.name = "Friendship" AND a.name = "My Dear Professor McGonagall"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Is this fate?" AND t.name = "Romance" AND a.name = "Elvenkendra"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Past Always Catches Up" AND t.name = "Romance" AND a.name = "Hopefulled"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Past Always Catches Up" AND t.name = "Hurt | Comfort" AND a.name = "Hopefulled"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Unatoned" AND t.name = "Crime" AND a.name = "SeriousScribble"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Unatoned" AND t.name = "Drama" AND a.name = "SeriousScribble"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Coach Granger" AND t.name = "Drama" AND a.name = "LuanMao"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Coach Granger" AND t.name = "Romance" AND a.name = "LuanMao"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Never Let Me Go" AND t.name = "Romance" AND a.name = "Orlandraopal29"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Never Let Me Go" AND t.name = "Hurt | Comfort" AND a.name = "Orlandraopal29"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "No Thinking Thing" AND t.name = "Romance" AND a.name = "Aya8"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "No Thinking Thing" AND t.name = "Drama" AND a.name = "Aya8"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Passionate Interlude" AND t.name = "Romance" AND a.name = "Aya8"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Passionate Interlude" AND t.name = "One-shot" AND a.name = "Aya8"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dance Your Heart Out" AND t.name = "Romance" AND a.name = "Butterfly Kisses 22"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dance Your Heart Out" AND t.name = "One-shot" AND a.name = "Butterfly Kisses 22"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Plus One" AND t.name = "Romance" AND a.name = "Maia.maiestas"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Plus One" AND t.name = "One-shot" AND a.name = "Maia.maiestas"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Quidditch pitch and five Galleons" AND t.name = "Romance" AND a.name = "Onecelestialbeing"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Quidditch pitch and five Galleons" AND t.name = "Humor" AND a.name = "Onecelestialbeing"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Quidditch pitch and five Galleons" AND t.name = "One-shot" AND a.name = "Onecelestialbeing"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Stregati" AND t.name = "Romance" AND a.name = "Ely-Baby"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Stregati" AND t.name = "One-shot" AND a.name = "Ely-Baby"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Addiction" AND t.name = "Romance" AND a.name = "BeaumontRulz"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Addiction" AND t.name = "One-shot" AND a.name = "BeaumontRulz"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Purple" AND t.name = "Romance" AND a.name = "Unicornball"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Touch Me" AND t.name = "Romance" AND a.name = "Alexandri"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Touch Me" AND t.name = "Humor" AND a.name = "Alexandri"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Touch Me" AND t.name = "One-shot" AND a.name = "Alexandri"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The List" AND t.name = "Romance" AND a.name = "9876grpc"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The List" AND t.name = "Angst" AND a.name = "9876grpc"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Potter's Angels" AND t.name = "Romance" AND a.name = "Takao1160"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Potter's Angels" AND t.name = "Adventure" AND a.name = "Takao1160"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Potter's Angels" AND t.name = "One-shot" AND a.name = "Takao1160"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Power of the Press" AND t.name = "Romance" AND a.name = "Bobmin356"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Power of the Press" AND t.name = "Drama" AND a.name = "Bobmin356"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "One-Ness" AND t.name = "Adventure" AND a.name = "HermiHugs"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "One-Ness" AND t.name = "Romance" AND a.name = "HermiHugs"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Wizards Fall" AND t.name = "Drama" AND a.name = "Bobmin356"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Wizards Fall" AND t.name = "Sci-Fi" AND a.name = "Bobmin356"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "In the Library" AND t.name = "Romance" AND a.name = "Vox ad umbram sum"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "In the Library" AND t.name = "Drama" AND a.name = "Vox ad umbram sum"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "In the Library" AND t.name = "One-shot" AND a.name = "Vox ad umbram sum"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Box" AND t.name = "Romance" AND a.name = "SkyHigh17"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Box" AND t.name = "One-shot" AND a.name = "SkyHigh17"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Four Heirs" AND t.name = "Adventure" AND a.name = "Sinyk"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Intervention" AND t.name = "One-shot" AND a.name = "Simon Flower"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Temptation" AND t.name = "Romance" AND a.name = "Simon Flower"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Temptation" AND t.name = "One-shot" AND a.name = "Simon Flower"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Working Late" AND t.name = "Romance" AND a.name = "Simon Flower"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Working Late" AND t.name = "One-shot" AND a.name = "Simon Flower"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "For The First Time" AND t.name = "Drama" AND a.name = "Anjie"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "For The First Time" AND t.name = "Romance" AND a.name = "Anjie"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The ShampooDragon Seduction" AND t.name = "Romance" AND a.name = "LJlashlarue"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The ShampooDragon Seduction" AND t.name = "One-shot" AND a.name = "LJlashlarue"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Discretion" AND t.name = "Romance" AND a.name = "LJlashlarue"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Discretion" AND t.name = "Family" AND a.name = "LJlashlarue"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Discretion" AND t.name = "One-shot" AND a.name = "LJlashlarue"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Forgotten But Not Gone" AND t.name = "Romance" AND a.name = "Harmonyromionedramione"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Forgotten But Not Gone" AND t.name = "Drama" AND a.name = "Harmonyromionedramione"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Stress Relieving Breakfast" AND t.name = "Romance" AND a.name = "The-void of Emotions"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Stress Relieving Breakfast" AND t.name = "Humor" AND a.name = "The-void of Emotions"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Stress Relieving Breakfast" AND t.name = "One-shot" AND a.name = "The-void of Emotions"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Perils of Prospective Pregnancy" AND t.name = "Romance" AND a.name = "StrongHermione"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Perils of Prospective Pregnancy" AND t.name = "Humor" AND a.name = "StrongHermione"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Perils of Prospective Pregnancy" AND t.name = "One-shot" AND a.name = "StrongHermione"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Love of Your Life" AND t.name = "Romance" AND a.name = "Fantasy1290"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Witchunters of London" AND t.name = "Crime" AND a.name = "Rusty Weasley"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Witchunters of London" AND t.name = "Romance" AND a.name = "Rusty Weasley"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Insta-Family Effect" AND t.name = "Drama" AND a.name = "Harmonyromionedramione"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Insta-Family Effect" AND t.name = "Romance" AND a.name = "Harmonyromionedramione"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Secret Desire" AND t.name = "Romance" AND a.name = "DarkEagle69"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Secret Desire" AND t.name = "One-shot" AND a.name = "DarkEagle69"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Come Back and Haunt Me" AND t.name = "Romance" AND a.name = "Elliehigginbottom"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Two Flowers" AND t.name = "Romance" AND a.name = "Azaron"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Two Flowers" AND t.name = "Adventure" AND a.name = "Azaron"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Alternative Rebirth" AND t.name = "Hurt | Comfort" AND a.name = "Nellark"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Alternative Rebirth" AND t.name = "Romance" AND a.name = "Nellark"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Nameless Man" AND t.name = "Mystery" AND a.name = "Brennus"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the Nameless Man" AND t.name = "Romance" AND a.name = "Brennus"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Success!" AND t.name = "Romance" AND a.name = "FamousNoOne"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Success!" AND t.name = "Humor" AND a.name = "FamousNoOne"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Success!" AND t.name = "One-shot" AND a.name = "FamousNoOne"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Happy Birthday, Harry!" AND t.name = "Romance" AND a.name = "Onyx Obsidian"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Happy Birthday, Harry!" AND t.name = "One-shot" AND a.name = "Onyx Obsidian"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Following Instinct" AND t.name = "Romance" AND a.name = "GreenEvans"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Following Instinct" AND t.name = "One-shot" AND a.name = "GreenEvans"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Served Cold" AND t.name = "Drama" AND a.name = "Harmonyromionedramione"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Served Cold" AND t.name = "Romance" AND a.name = "Harmonyromionedramione"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the 11th Commandment" AND t.name = "Adventure" AND a.name = "Insert Valid Author Name"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry Potter and the 11th Commandment" AND t.name = "Friendship" AND a.name = "Insert Valid Author Name"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Any Way You Want It" AND t.name = "Romance" AND a.name = "KiyoFaye"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Any Way You Want It" AND t.name = "Humor" AND a.name = "KiyoFaye"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry's Veela" AND t.name = "Romance" AND a.name = "Colormonk"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry's Veela" AND t.name = "Angst" AND a.name = "Colormonk"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Benefits" AND t.name = "Hurt | Comfort" AND a.name = "Bl4ckC0bra"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Benefits" AND t.name = "Adventure" AND a.name = "Bl4ckC0bra"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mine" AND t.name = "One-shot" AND a.name = "LJlashlarue"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Four Champions" AND t.name = "Romance" AND a.name = "RandReborn"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Four Champions" AND t.name = "Friendship" AND a.name = "RandReborn"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Four Champions" AND t.name = "One-shot" AND a.name = "RandReborn"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Burning Love" AND t.name = "Romance" AND a.name = "Uniquely Named"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Burning Love" AND t.name = "One-shot" AND a.name = "Uniquely Named"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry, Hermione and Lily" AND t.name = "Romance" AND a.name = "Broomstick flyer"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harry, Hermione and Lily" AND t.name = "One-shot" AND a.name = "Broomstick flyer"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Unexpected" AND t.name = "Romance" AND a.name = "Sharp Angles"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Unexpected" AND t.name = "Drama" AND a.name = "Sharp Angles"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Charlie's Child" AND t.name = "Family" AND a.name = "Harry50"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Charlie's Child" AND t.name = "Romance" AND a.name = "Harry50"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "What We're Fighting For" AND t.name = "Romance" AND a.name = "James Spookie"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Pleasurable Jealousy" AND t.name = "Romance" AND a.name = "A Love So Strong"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Pleasurable Jealousy" AND t.name = "One-shot" AND a.name = "A Love So Strong"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Legacy" AND t.name = "Drama" AND a.name = "StorytellerSpW"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Legacy" AND t.name = "Friendship" AND a.name = "StorytellerSpW"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Welcome to Burlesque" AND t.name = "Romance" AND a.name = "Abigail Belle"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Welcome to Burlesque" AND t.name = "One-shot" AND a.name = "Abigail Belle"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Muggleborn Teacher" AND t.name = "Family" AND a.name = "White Angel of Auralon"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Muggleborn Teacher" AND t.name = "Hurt | Comfort" AND a.name = "White Angel of Auralon"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I told him, Gaby I told him that I loved you" AND t.name = "Romance" AND a.name = "Floaw"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I told him, Gaby I told him that I loved you" AND t.name = "One-shot" AND a.name = "Floaw"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Christmas FemSlash Special" AND t.name = "Suspense" AND a.name = "WhereTheBerriesBloom"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Christmas FemSlash Special" AND t.name = "Romance" AND a.name = "WhereTheBerriesBloom"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Christmas FemSlash Special" AND t.name = "One-shot" AND a.name = "WhereTheBerriesBloom"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "How it all started" AND t.name = "Romance" AND a.name = "Floaw"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "How it all started" AND t.name = "Drama" AND a.name = "Floaw"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "How it all started" AND t.name = "One-shot" AND a.name = "Floaw"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Second Time Around" AND t.name = "Adventure" AND a.name = "ZilchNil"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Second Time Around" AND t.name = "Humor" AND a.name = "ZilchNil"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Baby, It's Cold Outside" AND t.name = "Romance" AND a.name = "Itakethewords"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Baby, It's Cold Outside" AND t.name = "One-shot" AND a.name = "Itakethewords"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Seasons of Change" AND t.name = "Friendship" AND a.name = "MPRose"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "You and I Collide" AND t.name = "Romance" AND a.name = "Scarlet-Angel-Blonde-Devil"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "You and I Collide" AND t.name = "Friendship" AND a.name = "Scarlet-Angel-Blonde-Devil"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "You and I Collide" AND t.name = "One-shot" AND a.name = "Scarlet-Angel-Blonde-Devil"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Very Merry Christmas Indeed" AND t.name = "One-shot" AND a.name = "Grace Kay (Drummerchick7)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "That Which Matters Most" AND t.name = "Romance" AND a.name = "Grace Kay (Drummerchick7)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "That Which Matters Most" AND t.name = "Sci-Fi" AND a.name = "Grace Kay (Drummerchick7)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "That Which Matters Most" AND t.name = "One-shot" AND a.name = "Grace Kay (Drummerchick7)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Moving On" AND t.name = "One-shot" AND a.name = "Grace Kay (Drummerchick7)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sharing" AND t.name = "Romance" AND a.name = "Grace Kay (Drummerchick7)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sharing" AND t.name = "Drama" AND a.name = "Grace Kay (Drummerchick7)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sharing" AND t.name = "One-shot" AND a.name = "Grace Kay (Drummerchick7)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Tomorrow" AND t.name = "Lesbian | Yuri" AND a.name = "Masserect"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Tomorrow" AND t.name = "One-shot" AND a.name = "Masserect"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "What Miranda Wants" AND t.name = "Romance" AND a.name = "RaeDMagdon"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "What Miranda Wants" AND t.name = "One-shot" AND a.name = "RaeDMagdon"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I Hate It When She Does That" AND t.name = "Humor" AND a.name = "Coolant"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I Hate It When She Does That" AND t.name = "One-shot" AND a.name = "Coolant"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Asari Nights" AND t.name = "Sexual content" AND a.name = "Psychotic_cat17"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Asari Nights" AND t.name = "Harem" AND a.name = "Psychotic_cat17"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Asari Nights" AND t.name = "AU" AND a.name = "Psychotic_cat17"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Asari Nights" AND t.name = "Multi" AND a.name = "Psychotic_cat17"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Asari Nights" AND t.name = "Lesbian | Yuri" AND a.name = "Psychotic_cat17"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Doctor's Prescription" AND t.name = "Romance" AND a.name = "Lyaksandra"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Doctor's Prescription" AND t.name = "Hurt | Comfort" AND a.name = "Lyaksandra"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Doctor's Prescription" AND t.name = "One-shot" AND a.name = "Lyaksandra"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Life's a Catch" AND t.name = "AU" AND a.name = "Luthor"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Life's a Catch" AND t.name = "Lesbian | Yuri" AND a.name = "Luthor"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Saving Nezzy" AND t.name = "AU" AND a.name = "BlueRaith"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Saving Nezzy" AND t.name = "Lesbian | Yuri" AND a.name = "BlueRaith"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Saving Sanity" AND t.name = "Fluff" AND a.name = "BlueRaith"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Saving Sanity" AND t.name = "Hurt | Comfort" AND a.name = "BlueRaith"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Saving Sanity" AND t.name = "One-shot" AND a.name = "BlueRaith"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Samantha's New Game" AND t.name = "Sexual content" AND a.name = "Raptor4d4"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Samantha's New Game" AND t.name = "Multi" AND a.name = "Raptor4d4"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Samantha's New Game" AND t.name = "Lesbian | Yuri" AND a.name = "Raptor4d4"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Samantha's New Game" AND t.name = "One-shot" AND a.name = "Raptor4d4"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Apology" AND t.name = "Sexual content" AND a.name = "Raptor4d4"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Apology" AND t.name = "One-shot" AND a.name = "Raptor4d4"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Personal Growth" AND t.name = "Fluff" AND a.name = "RaeDMagdon"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Personal Growth" AND t.name = "Sexual content" AND a.name = "RaeDMagdon"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Personal Growth" AND t.name = "Hurt | Comfort" AND a.name = "RaeDMagdon"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Personal Growth" AND t.name = "One-shot" AND a.name = "RaeDMagdon"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "This Body Is Yours" AND t.name = "Romance" AND a.name = "Fight-sister-fight"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "This Body Is Yours" AND t.name = "One-shot" AND a.name = "Fight-sister-fight"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mass Effect: End of Days" AND t.name = "Sci-Fi" AND a.name = "Postmeat"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mass Effect: End of Days" AND t.name = "Suspense" AND a.name = "Postmeat"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mass Effect: The Paths We Take (Discontinued)" AND t.name = "Drama" AND a.name = "Nothinginreturn"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mass Effect: The Paths We Take (Discontinued)" AND t.name = "Romance" AND a.name = "Nothinginreturn"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Breaking Point" AND t.name = "Romance" AND a.name = "Revan's Mask"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Breaking Point" AND t.name = "Hurt | Comfort" AND a.name = "Revan's Mask"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Breaking Point" AND t.name = "One-shot" AND a.name = "Revan's Mask"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Innocence Asunder" AND t.name = "One-shot" AND a.name = "Grace Kay (Drummerchick7)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Check... and Mate" AND t.name = "Romance" AND a.name = "Grace Kay (Drummerchick7)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Check... and Mate" AND t.name = "Sci-Fi" AND a.name = "Grace Kay (Drummerchick7)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Check... and Mate" AND t.name = "One-shot" AND a.name = "Grace Kay (Drummerchick7)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Of Heartache and Second Chances" AND t.name = "Romance" AND a.name = "Massfreak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Of Heartache and Second Chances" AND t.name = "Hurt | Comfort" AND a.name = "Massfreak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Justified Means" AND t.name = "Adventure" AND a.name = "Spectre-058"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Justified Means" AND t.name = "Romance" AND a.name = "Spectre-058"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Project Delta" AND t.name = "Sci-Fi" AND a.name = "5th Legion"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Short Road Home" AND t.name = "Adventure" AND a.name = "Amber Penglass"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Short Road Home" AND t.name = "Romance" AND a.name = "Amber Penglass"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Anti-Agathics War" AND t.name = "Suspense" AND a.name = "AManAdrift"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Anti-Agathics War" AND t.name = "Sci-Fi" AND a.name = "AManAdrift"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Uncommon Bonds" AND t.name = "Romance" AND a.name = "Tayg"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Uncommon Bonds" AND t.name = "Hurt | Comfort" AND a.name = "Tayg"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Seduction Theory" AND t.name = "Romance" AND a.name = "ShadowBlazer"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Seduction Theory" AND t.name = "Humor" AND a.name = "ShadowBlazer"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "From Ashes" AND t.name = "Romance" AND a.name = "Thessian Shadow"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "From Ashes" AND t.name = "Drama" AND a.name = "Thessian Shadow"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Better Angels: A Call to Arms" AND t.name = "Drama" AND a.name = "Wyles77"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Better Angels: A Call to Arms" AND t.name = "Sci-Fi" AND a.name = "Wyles77"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Catch" AND t.name = "Romance" AND a.name = "A. LaRosa"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Catch" AND t.name = "One-shot" AND a.name = "A. LaRosa"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Branded" AND t.name = "Romance" AND a.name = "A. LaRosa"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Branded" AND t.name = "One-shot" AND a.name = "A. LaRosa"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mistress Nana" AND t.name = "Romance" AND a.name = "Draco38"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mistress Nana" AND t.name = "Humor" AND a.name = "Draco38"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mistress Nana" AND t.name = "One-shot" AND a.name = "Draco38"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Exhilaration" AND t.name = "Romance" AND a.name = "A. LaRosa"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Exhilaration" AND t.name = "Humor" AND a.name = "A. LaRosa"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Eat You Up" AND t.name = "AU" AND a.name = "Thekatthatbarks"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Eat You Up" AND t.name = "Sexual content" AND a.name = "Thekatthatbarks"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Eat You Up" AND t.name = "Fluff" AND a.name = "Thekatthatbarks"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Eat You Up" AND t.name = "One-shot" AND a.name = "Thekatthatbarks"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Wherein Ino Yamanaka Regales Sakura Haruno With Her Long List of Conquests" AND t.name = "AU" AND a.name = "Epsilonics"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Wherein Ino Yamanaka Regales Sakura Haruno With Her Long List of Conquests" AND t.name = "Sexual content" AND a.name = "Epsilonics"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Wherein Ino Yamanaka Regales Sakura Haruno With Her Long List of Conquests" AND t.name = "One-shot" AND a.name = "Epsilonics"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Honeymooners" AND t.name = "Romance" AND a.name = "VampbaitInfinity"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Honeymooners" AND t.name = "Sexual content" AND a.name = "VampbaitInfinity"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Honeymooners" AND t.name = "One-shot" AND a.name = "VampbaitInfinity"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mother/Daughter Love: Sequel One" AND t.name = "Sexual content" AND a.name = "McCrazy23"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mother/Daughter Love: Sequel One" AND t.name = "Lesbian | Yuri" AND a.name = "McCrazy23"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mother/Daughter Love: Sequel One" AND t.name = "Multi" AND a.name = "McCrazy23"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mother/Daughter Love: Sequel One" AND t.name = "One-shot" AND a.name = "McCrazy23"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mother/Daughter Love" AND t.name = "Sexual content" AND a.name = "McCrazy23"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mother/Daughter Love" AND t.name = "Multi" AND a.name = "McCrazy23"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mother/Daughter Love" AND t.name = "One-shot" AND a.name = "McCrazy23"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Friends with Benefits" AND t.name = "Sexual content" AND a.name = "AnimeLover4Life"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Friends with Benefits" AND t.name = "Humor" AND a.name = "AnimeLover4Life"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Friends with Benefits" AND t.name = "Romance" AND a.name = "AnimeLover4Life"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Friends with Benefits" AND t.name = "One-shot" AND a.name = "AnimeLover4Life"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Birthday Surprise" AND t.name = "Sexual content" AND a.name = "Rikuren"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Birthday Surprise" AND t.name = "AU" AND a.name = "Rikuren"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Birthday Surprise" AND t.name = "Romance" AND a.name = "Rikuren"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Birthday Surprise" AND t.name = "One-shot" AND a.name = "Rikuren"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Waterfall of Love" AND t.name = "Sexual content" AND a.name = "AnimeLover4Life"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Waterfall of Love" AND t.name = "Hurt | Comfort" AND a.name = "AnimeLover4Life"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Waterfall of Love" AND t.name = "Humor" AND a.name = "AnimeLover4Life"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Waterfall of Love" AND t.name = "Romance" AND a.name = "AnimeLover4Life"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Waterfall of Love" AND t.name = "One-shot" AND a.name = "AnimeLover4Life"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Warped" AND t.name = "Sexual content" AND a.name = "BountifullyBeautifullyBlessed"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Warped" AND t.name = "AU" AND a.name = "BountifullyBeautifullyBlessed"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Warped" AND t.name = "Romance" AND a.name = "BountifullyBeautifullyBlessed"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Warped" AND t.name = "One-shot" AND a.name = "BountifullyBeautifullyBlessed"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Silver and Gold" AND t.name = "Sexual content" AND a.name = "Hobgoblin"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Silver and Gold" AND t.name = "One-shot" AND a.name = "Hobgoblin"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Moonlight Sonata Antarctica" AND t.name = "Sexual content" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Moonlight Sonata Antarctica" AND t.name = "Lesbian | Yuri" AND a.name = ""
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Follow The Leader" AND t.name = "Romance" AND a.name = "AstroLatte"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Follow The Leader" AND t.name = "Pwp" AND a.name = "AstroLatte"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Follow The Leader" AND t.name = "One-shot" AND a.name = "AstroLatte"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "One Day in December" AND t.name = "Lesbian | Yuri" AND a.name = "Night_Being"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "One Day in December" AND t.name = "Sexual content" AND a.name = "Night_Being"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "One Day in December" AND t.name = "One-shot" AND a.name = "Night_Being"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Accounts of Perversion and Obscenity" AND t.name = "Lesbian | Yuri" AND a.name = "EvilFuzzy9"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Accounts of Perversion and Obscenity" AND t.name = "Sexual content" AND a.name = "EvilFuzzy9"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Accounts of Perversion and Obscenity" AND t.name = "Fluff" AND a.name = "EvilFuzzy9"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Accounts of Perversion and Obscenity" AND t.name = "AU" AND a.name = "EvilFuzzy9"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Accounts of Perversion and Obscenity" AND t.name = "Multi" AND a.name = "EvilFuzzy9"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I Am NOT Going Through Puberty Again!" AND t.name = "Time travel" AND a.name = "EvilFuzzy9"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I Am NOT Going Through Puberty Again!" AND t.name = "Humor" AND a.name = "EvilFuzzy9"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I Am NOT Going Through Puberty Again!" AND t.name = "Post-canon" AND a.name = "EvilFuzzy9"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto's Date" AND t.name = "Romance" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto's Date" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto's Date" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Boys And Their Toys" AND t.name = "Femdom" AND a.name = "6th_Street"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Boys And Their Toys" AND t.name = "Sexual content" AND a.name = "6th_Street"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Boys And Their Toys" AND t.name = "AU" AND a.name = "6th_Street"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Boys And Their Toys" AND t.name = "One-shot" AND a.name = "6th_Street"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Safe and sound" AND t.name = "Sexual content" AND a.name = "Walkingonempty"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Few Extra Minutes" AND t.name = "One-shot" AND a.name = "Blossomdreams"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Pink Medical Kunoichi" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Pink Medical Kunoichi" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Pink Medical Kunoichi" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Violet Flower" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Violet Flower" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Violet Flower" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Red Flute Player" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Red Flute Player" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Red Flute Player" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Purple Snake" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Purple Snake" AND t.name = "Romance" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Purple Snake" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Yellow Sand Sickle" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Yellow Sand Sickle" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Yellow Sand Sickle" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Maroon Vixen" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Maroon Vixen" AND t.name = "Romance" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Maroon Vixen" AND t.name = "Friendship" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Maroon Vixen" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Golden Firefly" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Golden Firefly" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Golden Firefly" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Mint Beetle" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Mint Beetle" AND t.name = "Romance" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Mint Beetle" AND t.name = "Friendship" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Mint Beetle" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Mint Beetle" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Russet Doctor" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Russet Doctor" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Russet Doctor" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Brown Hound" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Brown Hound" AND t.name = "Romance" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Brown Hound" AND t.name = "Friendship" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Brown Hound" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Brown Hound" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Lavender Byakugan Hime" AND t.name = "Romance" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Lavender Byakugan Hime" AND t.name = "Adventure" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Lavender Byakugan Hime" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Lavender Byakugan Hime" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Blue Origami Angel" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Blue Origami Angel" AND t.name = "Romance" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Blue Origami Angel" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Blue Origami Angel" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Auburn Mizukage" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Auburn Mizukage" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Hokage and the Auburn Mizukage" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Black Nadeshiko Warrior" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Black Nadeshiko Warrior" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Black Nadeshiko Warrior" AND t.name = "Romance" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Black Nadeshiko Warrior" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Crimson Healer" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Crimson Healer" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Crimson Healer" AND t.name = "Romance" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Crimson Healer" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Glacial Princess" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Glacial Princess" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Glacial Princess" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Carmine Queen" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Carmine Queen" AND t.name = "Romance" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Carmine Queen" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Jasmine Legendary Sucker" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Jasmine Legendary Sucker" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Jasmine Legendary Sucker" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Chestnut Weapons Minx" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Chestnut Weapons Minx" AND t.name = "Romance" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Chestnut Weapons Minx" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Chocolate Strawberry" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Chocolate Strawberry" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just Like the Folks: The Orange Fox and the Chocolate Strawberry" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Seductress In Red" AND t.name = "Sexual content" AND a.name = "Kyuubi16"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Seductress In Red" AND t.name = "One-shot" AND a.name = "Kyuubi16"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "New Rules" AND t.name = "One-shot" AND a.name = "Greentea815"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "New Rules" AND t.name = "Sexual content" AND a.name = "Greentea815"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A False Assumption" AND t.name = "Post-canon" AND a.name = "Luvsanime02"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A False Assumption" AND t.name = "One-shot" AND a.name = "Luvsanime02"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Unplanned" AND t.name = "Drama" AND a.name = "KuriQuinn"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Unplanned" AND t.name = "Humor" AND a.name = "KuriQuinn"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Unplanned" AND t.name = "Romance" AND a.name = "KuriQuinn"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Unplanned" AND t.name = "Friendship" AND a.name = "KuriQuinn"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Counterpoise" AND t.name = "AU" AND a.name = "Boxparade"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Counterpoise" AND t.name = "Multi" AND a.name = "Boxparade"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Counterpoise" AND t.name = "Sexual content" AND a.name = "Boxparade"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Snake and Toad" AND t.name = "One-shot" AND a.name = "Tonlor"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Snake and Toad" AND t.name = "Sexual content" AND a.name = "Tonlor"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Pervy Futa Party Games" AND t.name = "Lesbian | Yuri" AND a.name = "EvilFuzzy9"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Pervy Futa Party Games" AND t.name = "One-shot" AND a.name = "EvilFuzzy9"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Pervy Futa Party Games" AND t.name = "Sexual content" AND a.name = "EvilFuzzy9"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Completely Ruined" AND t.name = "One-shot" AND a.name = "GalacticSaz"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Us Into Pieces." AND t.name = "Pwp" AND a.name = "CountlessUntruths (KaliCephirot)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Us Into Pieces." AND t.name = "Sexual content" AND a.name = "CountlessUntruths (KaliCephirot)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Us Into Pieces." AND t.name = "One-shot" AND a.name = "CountlessUntruths (KaliCephirot)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Artwork" AND t.name = "Sexual content" AND a.name = "Sakiku"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Artwork" AND t.name = "One-shot" AND a.name = "Sakiku"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Demon's Dirty Dreams" AND t.name = "Sexual content" AND a.name = "SleepyMatt"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Secret Technique" AND t.name = "Sexual content" AND a.name = "SleepyMatt"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Saturday Night" AND t.name = "Sexual content" AND a.name = "Punkguy82"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Saturday Night" AND t.name = "One-shot" AND a.name = "Punkguy82"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Family Secrets" AND t.name = "Sexual content" AND a.name = "Crazelegs12"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Family Secrets" AND t.name = "One-shot" AND a.name = "Crazelegs12"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "She Made Him Wait" AND t.name = "Sexual content" AND a.name = "Tomcat171"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "She Made Him Wait" AND t.name = "One-shot" AND a.name = "Tomcat171"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cuckolding Konoha" AND t.name = "Sexual content" AND a.name = "WhiteWhiskey"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cuckolding Konoha" AND t.name = "One-shot" AND a.name = "WhiteWhiskey"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Trouble In Paradise" AND t.name = "Sexual content" AND a.name = "DevilHeart435"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Trouble In Paradise" AND t.name = "One-shot" AND a.name = "DevilHeart435"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sakura's Plan" AND t.name = "Sexual content" AND a.name = "TheInspector"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sakura's Plan" AND t.name = "One-shot" AND a.name = "TheInspector"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Feeling Her" AND t.name = "Sexual content" AND a.name = "Andromeda"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Feeling Her" AND t.name = "Lesbian | Yuri" AND a.name = "Andromeda"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Feeling Her" AND t.name = "One-shot" AND a.name = "Andromeda"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I Kissed A Girl" AND t.name = "Sexual content" AND a.name = "AshleyTrecartin"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I Kissed A Girl" AND t.name = "One-shot" AND a.name = "AshleyTrecartin"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hinata, It can't be helped!" AND t.name = "Sexual content" AND a.name = "Nacholant"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hinata, It can't be helped!" AND t.name = "One-shot" AND a.name = "Nacholant"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hands Tied" AND t.name = "Sexual content" AND a.name = "InTheMist032000"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hands Tied" AND t.name = "One-shot" AND a.name = "InTheMist032000"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dorks." AND t.name = "Sexual content" AND a.name = "EroPrincess"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dorks." AND t.name = "One-shot" AND a.name = "EroPrincess"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Kage Sexbomb" AND t.name = "Sexual content" AND a.name = "SniperJoe"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Kage Sexbomb" AND t.name = "One-shot" AND a.name = "SniperJoe"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto the Kunoichi Toy" AND t.name = "Sexual content" AND a.name = "TheDogSage"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto the Kunoichi Toy" AND t.name = "One-shot" AND a.name = "TheDogSage"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sarada's Suprise" AND t.name = "Sexual content" AND a.name = "Stormwolf3710"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sarada's Suprise" AND t.name = "One-shot" AND a.name = "Stormwolf3710"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Conquering Hero" AND t.name = "Sexual content" AND a.name = "CyberXIII"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Conquering Hero" AND t.name = "One-shot" AND a.name = "CyberXIII"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hinata's Little Bitch Boy" AND t.name = "Sexual content" AND a.name = "TheDogSage"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hinata's Little Bitch Boy" AND t.name = "Multi" AND a.name = "TheDogSage"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hinata's Little Bitch Boy" AND t.name = "One-shot" AND a.name = "TheDogSage"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Shota CRA" AND t.name = "Sexual content" AND a.name = "Mantis137"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Shota CRA" AND t.name = "One-shot" AND a.name = "Mantis137"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Man's Responsibility" AND t.name = "Sexual content" AND a.name = "CompassOpposites"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Man's Responsibility" AND t.name = "One-shot" AND a.name = "CompassOpposites"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Woman's Touch" AND t.name = "Femdom" AND a.name = "HeavenHeaven"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Woman's Touch" AND t.name = "Multi" AND a.name = "HeavenHeaven"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Woman's Touch" AND t.name = "Sexual content" AND a.name = "HeavenHeaven"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Woman's Touch" AND t.name = "One-shot" AND a.name = "HeavenHeaven"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Pathos of the Shinobi" AND t.name = "AU" AND a.name = "Naratu"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Pathos of the Shinobi" AND t.name = "Friendship" AND a.name = "Naratu"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hidden From Sunlight" AND t.name = "AU" AND a.name = "BunnyHoodlum"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Last Prayer" AND t.name = "AU" AND a.name = "GraeFoxx"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Last Prayer" AND t.name = "Sexual content" AND a.name = "GraeFoxx"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Last Prayer" AND t.name = "Time travel" AND a.name = "GraeFoxx"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Last Prayer" AND t.name = "Harem" AND a.name = "GraeFoxx"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fun With Clones" AND t.name = "Multi" AND a.name = "Brujx (FallingForKonoha)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fun With Clones" AND t.name = "Sexual content" AND a.name = "Brujx (FallingForKonoha)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Home is where my team is" AND t.name = "Slices of life" AND a.name = "Tentendeservedbetter"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Home is where my team is" AND t.name = "Fluff" AND a.name = "Tentendeservedbetter"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Home is where my team is" AND t.name = "Angst" AND a.name = "Tentendeservedbetter"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Salvage" AND t.name = "Sexual content" AND a.name = "WaterRolls"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Salvage" AND t.name = "Post-canon" AND a.name = "WaterRolls"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Life Without Kurama" AND t.name = "AU" AND a.name = "AxleBoost"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Life Without Kurama" AND t.name = "Fluff" AND a.name = "AxleBoost"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Life Without Kurama" AND t.name = "Angst" AND a.name = "AxleBoost"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Misconceptions" AND t.name = "Romance" AND a.name = "WaterRolls"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Misconceptions" AND t.name = "One-shot" AND a.name = "WaterRolls"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Misconceptions" AND t.name = "Sexual content" AND a.name = "WaterRolls"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Misconceptions" AND t.name = "Fluff" AND a.name = "WaterRolls"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Misconceptions" AND t.name = "Humor" AND a.name = "WaterRolls"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Unusual Lesson" AND t.name = "Friendship" AND a.name = "PhantomKeeperQazs"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Chasing You" AND t.name = "Sexual content" AND a.name = "Wonderfuloz"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Chasing You" AND t.name = "Fluff" AND a.name = "Wonderfuloz"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Chasing You" AND t.name = "Angst" AND a.name = "Wonderfuloz"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Chasing You" AND t.name = "Humor" AND a.name = "Wonderfuloz"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Chasing You" AND t.name = "Post-canon" AND a.name = "Wonderfuloz"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blood does not make a Family" AND t.name = "AU" AND a.name = "KowaiCharacter"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hinata's Plan" AND t.name = "Romance" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hinata's Plan" AND t.name = "Sexual content" AND a.name = ""
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Post-War Passions" AND t.name = "Sexual content" AND a.name = "RosyPalms"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Post-War Passions" AND t.name = "Multi" AND a.name = "RosyPalms"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND t.name = "Pwp" AND a.name = "VulgarAssassin"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND t.name = "Sexual content" AND a.name = "VulgarAssassin"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND t.name = "Femdom" AND a.name = "VulgarAssassin"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Chicken Ramen for the Pervert's Soul" AND t.name = "Multi" AND a.name = "VulgarAssassin"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Icha Icha Starlet" AND t.name = "Pwp" AND a.name = ""
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Icha Icha Starlet" AND t.name = "Sexual content" AND a.name = ""
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Invisible Favors" AND t.name = "Sexual content" AND a.name = "DimiComi"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Best for Us" AND t.name = "Family" AND a.name = "Asriah"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Best for Us" AND t.name = "Drama" AND a.name = "Asriah"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Best for Us" AND t.name = "AU" AND a.name = "Asriah"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Best for Us" AND t.name = "Angst" AND a.name = "Asriah"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Best for Us" AND t.name = "Fluff" AND a.name = "Asriah"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Best for Us" AND t.name = "Sexual content" AND a.name = "Asriah"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Seasons of Life" AND t.name = "Slices of life" AND a.name = "Bom_Bidi_Bom"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Seasons of Life" AND t.name = "Angst" AND a.name = "Bom_Bidi_Bom"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Seasons of Life" AND t.name = "Fluff" AND a.name = "Bom_Bidi_Bom"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Vacation" AND t.name = "Sexual content" AND a.name = "KarlMower2003 (Entertainmensch)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Vacation" AND t.name = "One-shot" AND a.name = "KarlMower2003 (Entertainmensch)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Cloud" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Cloud" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Cloud" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Yellow Flash and The Golden Goddess" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Yellow Flash and The Golden Goddess" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Yellow Flash and The Golden Goddess" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Firefly Heiress" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Firefly Heiress" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Firefly Heiress" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: Two Leaves" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: Two Leaves" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: Two Leaves" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Sand" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Sand" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Fox and The Cat" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Fox and The Cat" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Fox and The Cat" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and Two Clouds" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and Two Clouds" AND t.name = "Multi" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and Two Clouds" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: Two Leaves and The Sand" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: Two Leaves and The Sand" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: Two Leaves and The Sand" AND t.name = "Multi" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: Two Leaves and The Sand" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf, The Cloud, and The Firefly" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf, The Cloud, and The Firefly" AND t.name = "Multi" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf, The Cloud, and The Firefly" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf, The Cloud, and The Firefly" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Heavenly Harem" AND t.name = "Sexual content" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Heavenly Harem" AND t.name = "AU" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blondes in Bed: The Leaf and The Heavenly Harem" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lunch Break" AND t.name = "One-shot" AND a.name = "Balddog4"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lunch Break" AND t.name = "Sexual content" AND a.name = "Balddog4"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Window Shopping" AND t.name = "One-shot" AND a.name = "FieldDranzer"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Window Shopping" AND t.name = "Sexual content" AND a.name = "FieldDranzer"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Eternal Torment of Tayuya Uzumaki" AND t.name = "Friendship" AND a.name = "Ensou"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Eternal Torment of Tayuya Uzumaki" AND t.name = "Romance" AND a.name = "Ensou"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Eternal Torment of Tayuya Uzumaki" AND t.name = "AU" AND a.name = "Ensou"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Uzumaki Family Values" AND t.name = "One-shot" AND a.name = "EvilFuzzy9"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Uzumaki Family Values" AND t.name = "Sexual content" AND a.name = "EvilFuzzy9"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto and Anko" AND t.name = "One-shot" AND a.name = "Steamy Naruto Writer"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Master of Jiongu" AND t.name = "Adventure" AND a.name = "The Dark Dragon Emperor"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Master of Jiongu" AND t.name = "Romance" AND a.name = "The Dark Dragon Emperor"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Ninth Demon Lord: A Naruto Story" AND t.name = "Romance" AND a.name = "RyoshiMorino"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Ninth Demon Lord: A Naruto Story" AND t.name = "Supernatural" AND a.name = "RyoshiMorino"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naughty Naruto" AND t.name = "Romance" AND a.name = "Atsuzi Tano"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Red" AND t.name = "Romance" AND a.name = "DandelionDreaming"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Red" AND t.name = "One-shot" AND a.name = "DandelionDreaming"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Tone And Stroke" AND t.name = "Romance" AND a.name = "Timberwolfe"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Uzumaki Naruko: To the Victor, the Spoils V2" AND t.name = "Romance" AND a.name = "SeerKing"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Uzumaki Naruko: To the Victor, the Spoils V2" AND t.name = "Adventure" AND a.name = "SeerKing"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Futas' boy Naruto" AND t.name = "Romance" AND a.name = "Skanmp"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Futas' boy Naruto" AND t.name = "Hurt | Comfort" AND a.name = "Skanmp"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Transcending" AND t.name = "Adventure" AND a.name = "Snapers"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Transcending" AND t.name = "Friendship" AND a.name = "Snapers"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Our Bond" AND t.name = "Romance" AND a.name = "Spazzgirl"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Our Bond" AND t.name = "One-shot" AND a.name = "Spazzgirl"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Meet the Hyuga" AND t.name = "Adventure" AND a.name = "Solvdrage"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Meet the Hyuga" AND t.name = "Romance" AND a.name = "Solvdrage"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "More than enough (M-Rated version)" AND t.name = "Romance" AND a.name = "Petran"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "More than enough (M-Rated version)" AND t.name = "Humor" AND a.name = "Petran"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Life is Good" AND t.name = "Romance" AND a.name = "Lancecomwar"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Life is Good" AND t.name = "One-shot" AND a.name = "Lancecomwar"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto & Hinata Harem Hunters" AND t.name = "Romance" AND a.name = "MongolKahn"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Kinky Konoha" AND t.name = "Romance" AND a.name = "Crimson Red Ghost"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Kinky Konoha" AND t.name = "Adventure" AND a.name = "Crimson Red Ghost"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Rub it Out" AND t.name = "Humor" AND a.name = "MyUsedRomance"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Rub it Out" AND t.name = "Romance" AND a.name = "MyUsedRomance"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Rub it Out" AND t.name = "One-shot" AND a.name = "MyUsedRomance"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto's Weakness" AND t.name = "Romance" AND a.name = "Satoorihoya"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto's Weakness" AND t.name = "Drama" AND a.name = "Satoorihoya"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love Me Right" AND t.name = "Romance" AND a.name = "Tinyraver"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love Me Right" AND t.name = "Friendship" AND a.name = "Tinyraver"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Treatments for Ecstasy" AND t.name = "Romance" AND a.name = "Blackkitten23"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Diary of a White-Eyed Girl" AND t.name = "Romance" AND a.name = "Zaphi Nashii"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Diary of a White-Eyed Girl" AND t.name = "Drama" AND a.name = "Zaphi Nashii"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "In Charge" AND t.name = "Romance" AND a.name = "LovelyLori"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "In Charge" AND t.name = "One-shot" AND a.name = "LovelyLori"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fun at Resort" AND t.name = "Romance" AND a.name = "Kairauchiha"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fun at Resort" AND t.name = "One-shot" AND a.name = "Kairauchiha"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto's Birthday Treat" AND t.name = "Romance" AND a.name = "Thesaiyanjedi"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto's Birthday Treat" AND t.name = "One-shot" AND a.name = "Thesaiyanjedi"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Particles of Dust" AND t.name = "Romance" AND a.name = "Team Dragon Star"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Particles of Dust" AND t.name = "One-shot" AND a.name = "Team Dragon Star"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Hormone" AND t.name = "Romance" AND a.name = "Opkisofg"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Hormone" AND t.name = "One-shot" AND a.name = "Opkisofg"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "By Your Side (One Shot)" AND t.name = "Romance" AND a.name = "TMark260"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "By Your Side (One Shot)" AND t.name = "Hurt | Comfort" AND a.name = "TMark260"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mom's Disappointment, Son's Enjoyment" AND t.name = "Romance" AND a.name = "Opkisofg"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mom's Disappointment, Son's Enjoyment" AND t.name = "One-shot" AND a.name = "Opkisofg"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love In Bloom" AND t.name = "Romance" AND a.name = "GirlsAndTwirls"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love In Bloom" AND t.name = "Angst" AND a.name = "GirlsAndTwirls"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sister's Always Share REUPLOADED" AND t.name = "Romance" AND a.name = "The Four Crosses"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sister's Always Share REUPLOADED" AND t.name = "Humor" AND a.name = "The Four Crosses"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Loving Massage" AND t.name = "Romance" AND a.name = "Kanaelunmoon"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto: Re" AND t.name = "Fantasy" AND a.name = "Lord Winterman"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ino's Revenge on Sakura" AND t.name = "Romance" AND a.name = "1Sakura-Haruno1"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ino's Revenge on Sakura" AND t.name = "One-shot" AND a.name = "1Sakura-Haruno1"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Tale of Gallant Naruto" AND t.name = "Romance" AND a.name = "Super-Pervert Toad Sage"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Tale of Gallant Naruto" AND t.name = "Parody" AND a.name = "Super-Pervert Toad Sage"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Come In From The Rain" AND t.name = "Romance" AND a.name = "MrFanFictionFreak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Shower Fun" AND t.name = "Romance" AND a.name = "Lagseeing1123"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Shower Fun" AND t.name = "One-shot" AND a.name = "Lagseeing1123"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "If I Could Do It Over" AND t.name = "Romance" AND a.name = "NarHina"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "If I Could Do It Over" AND t.name = "Drama" AND a.name = "NarHina"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Family Time" AND t.name = "Family" AND a.name = "NHlemonfan"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Family Time" AND t.name = "One-shot" AND a.name = "NHlemonfan"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "My Dear Weapons Mistress" AND t.name = "Romance" AND a.name = "TsukikoUchu"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "My Dear Weapons Mistress" AND t.name = "Humor" AND a.name = "TsukikoUchu"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Yajuu Sannin" AND t.name = "Adventure" AND a.name = "Shredjeep777"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Yajuu Sannin" AND t.name = "Friendship" AND a.name = "Shredjeep777"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Friendly Advice" AND t.name = "Romance" AND a.name = "Bucket of Holding"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Friendly Advice" AND t.name = "Friendship" AND a.name = "Bucket of Holding"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Friendly Advice" AND t.name = "One-shot" AND a.name = "Bucket of Holding"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Birthday Gift" AND t.name = "Romance" AND a.name = "Blossom-M"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Birthday Gift" AND t.name = "Family" AND a.name = "Blossom-M"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Birthday Gift" AND t.name = "One-shot" AND a.name = "Blossom-M"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sister in law, to sister in love!" AND t.name = "Romance" AND a.name = "Robin.exe"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sister in law, to sister in love!" AND t.name = "Drama" AND a.name = "Robin.exe"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sense of Duty" AND t.name = "Romance" AND a.name = "MelodySincerelySong"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sense of Duty" AND t.name = "Family" AND a.name = "MelodySincerelySong"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sense of Duty" AND t.name = "One-shot" AND a.name = "MelodySincerelySong"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "New Things" AND t.name = "Hurt" AND a.name = "LemonJuicer"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "New Things" AND t.name = "Comfort" AND a.name = "LemonJuicer"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "New Things" AND t.name = "Friendship" AND a.name = "LemonJuicer"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "New Things" AND t.name = "One-shot" AND a.name = "LemonJuicer"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lemonade" AND t.name = "Romance" AND a.name = "Cszimm"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lemonade" AND t.name = "Humor" AND a.name = "Cszimm"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Within Interest" AND t.name = "Adventure" AND a.name = "Silent Songbird"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "More Than One Life" AND t.name = "Romance" AND a.name = "Its-Levioooosaa"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Thunder Clap" AND t.name = "Adventure" AND a.name = "Free Drinks"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Caged Bird" AND t.name = "Adventure" AND a.name = "Kagami1228"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Caged Bird" AND t.name = "Humor" AND a.name = "Kagami1228"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Home with the Uzumakis" AND t.name = "Romance" AND a.name = "TheKingofAnimeandManga"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Home with the Uzumakis" AND t.name = "One-shot" AND a.name = "TheKingofAnimeandManga"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "What happens in secret" AND t.name = "Mystery" AND a.name = "FanFictionBard2"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "What happens in secret" AND t.name = "Fantasy" AND a.name = "FanFictionBard2"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto Uzumaki Ero-Ninja" AND t.name = "Adventure" AND a.name = "Imperial-samaB"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto Uzumaki Ero-Ninja" AND t.name = "Romance" AND a.name = "Imperial-samaB"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Addict" AND t.name = "Romance" AND a.name = "BigE2955"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Addict" AND t.name = "Humor" AND a.name = "BigE2955"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Secrets of the Gentle Fist(ing)" AND t.name = "Humor" AND a.name = "TotoroX92"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Secrets of the Gentle Fist(ing)" AND t.name = "One-shot" AND a.name = "TotoroX92"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sensei-kun" AND t.name = "Romance" AND a.name = "Wanker - King of Wank Peasants"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sensei-kun" AND t.name = "Humor" AND a.name = "Wanker - King of Wank Peasants"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Ripe Habanero" AND t.name = "Drama" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Ripe Habanero" AND t.name = "Romance" AND a.name = "Raptorcloak"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Ripe Habanero" AND t.name = "One-shot" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Yesterday Morning" AND t.name = "Romance" AND a.name = "Midnight Rain19"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Yesterday Morning" AND t.name = "Family" AND a.name = "Midnight Rain19"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ninth" AND t.name = "Adventure" AND a.name = "Sulphur99"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ninth" AND t.name = "Humor" AND a.name = "Sulphur99"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harmless Attraction" AND t.name = "Drama" AND a.name = "DemonOfTheFridge"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Harmless Attraction" AND t.name = "Romance" AND a.name = "DemonOfTheFridge"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Unusual Lessons" AND t.name = "Friendship" AND a.name = "The Phantom Keeper"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Unusual Lessons" AND t.name = "Fantasy" AND a.name = "The Phantom Keeper"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Journal of Hope" AND t.name = "Adventure" AND a.name = "Masseffect-TxS"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Journal of Hope" AND t.name = "Supernatural" AND a.name = "Masseffect-TxS"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Always the quiet one" AND t.name = "One-shot" AND a.name = "DingyLilith"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Jinchuuriki's Brother" AND t.name = "Adventure" AND a.name = "Gogos14"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Jinchuuriki's Brother" AND t.name = "Family" AND a.name = "Gogos14"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Single Effect" AND t.name = "Romance" AND a.name = "Midnight Rain19"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Single Effect" AND t.name = "Drama" AND a.name = "Midnight Rain19"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love Is Not A Cage" AND t.name = "Romance" AND a.name = "NightOwl27"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love Is Not A Cage" AND t.name = "Drama" AND a.name = "NightOwl27"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Red Thread" AND t.name = "Romance" AND a.name = "Midnight Rain19"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Red Thread" AND t.name = "Drama" AND a.name = "Midnight Rain19"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Better Beginning" AND t.name = "Adventure" AND a.name = "Thundos"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Legion of Naruto" AND t.name = "Adventure" AND a.name = "DarkWolfy"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Legion of Naruto" AND t.name = "Humor" AND a.name = "DarkWolfy"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto Femdom Stories" AND t.name = "Romance" AND a.name = "FetishFiend69"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto Femdom Stories" AND t.name = "Hurt | Comfort" AND a.name = "FetishFiend69"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Orange Spark" AND t.name = "Adventure" AND a.name = "LC Namikaze"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Orange Spark" AND t.name = "Romance" AND a.name = "LC Namikaze"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Secrets and smiles" AND t.name = "Romance" AND a.name = "Sabersoul13"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Secrets and smiles" AND t.name = "Friendship" AND a.name = "Sabersoul13"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Cycle of Hatred: A Naruto Insert" AND t.name = "Drama" AND a.name = "Eternal Yujin"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Cycle of Hatred: A Naruto Insert" AND t.name = "Supernatural" AND a.name = "Eternal Yujin"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Sage Who Leapt Through Time" AND t.name = "Adventure" AND a.name = "SarthakBikramPanta"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Sage Who Leapt Through Time" AND t.name = "Family" AND a.name = "SarthakBikramPanta"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Demon Shinobi of Konoha" AND t.name = "Adventure" AND a.name = "Thelow"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Demon Shinobi of Konoha" AND t.name = "Drama" AND a.name = "Thelow"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "In Her Bed" AND t.name = "Romance" AND a.name = "KeumbangGoela"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "In Her Bed" AND t.name = "One-shot" AND a.name = "KeumbangGoela"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "SugarSugar" AND t.name = "Romance" AND a.name = "KeumbangGoela"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "SugarSugar" AND t.name = "One-shot" AND a.name = "KeumbangGoela"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Steam and Sweat" AND t.name = "Romance" AND a.name = "AlphaDelta1001"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Steam and Sweat" AND t.name = "Humor" AND a.name = "AlphaDelta1001"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Memories" AND t.name = "Hurt | Comfort" AND a.name = "TheGreatHibiki"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Memories" AND t.name = "Romance" AND a.name = "TheGreatHibiki"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Instrumental" AND t.name = "Romance" AND a.name = "Wandering Wonderer"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Instrumental" AND t.name = "One-shot" AND a.name = "Wandering Wonderer"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "In The Heat of The Moment" AND t.name = "Romance" AND a.name = "River of the sand"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "In The Heat of The Moment" AND t.name = "One-shot" AND a.name = "River of the sand"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Forgotten Prisoner" AND t.name = "Family" AND a.name = "Robertz"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto's Valentine Day" AND t.name = "Romance" AND a.name = "Bunji the wolf"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Naruto's Valentine Day" AND t.name = "One-shot" AND a.name = "Bunji the wolf"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Lucky Night of Love" AND t.name = "Romance" AND a.name = "Yoshi 2.1"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Lucky Night of Love" AND t.name = "One-shot" AND a.name = "Yoshi 2.1"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fatal Attraction" AND t.name = "Crime" AND a.name = "Aisha12894"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fatal Attraction" AND t.name = "Romance" AND a.name = "Aisha12894"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Drifting" AND t.name = "Adventure" AND a.name = "AlphaDelta1001"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Drifting" AND t.name = "Romance" AND a.name = "AlphaDelta1001"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Opportunities" AND t.name = "Romance" AND a.name = "Prefect Potter"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Opportunities" AND t.name = "Friendship" AND a.name = "Prefect Potter"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Impossible Car Dream" AND t.name = "Drama" AND a.name = "Armageddon Angel"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Impossible Car Dream" AND t.name = "Humor" AND a.name = "Armageddon Angel"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Impossible Car Dream" AND t.name = "One-shot" AND a.name = "Armageddon Angel"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "And Time Again" AND t.name = "Romance" AND a.name = "716799"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "And Time Again" AND t.name = "Humor" AND a.name = "716799"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "And Time Again" AND t.name = "One-shot" AND a.name = "716799"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "No Oath, No Spell" AND t.name = "Adventure" AND a.name = "Ricejames"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "No Oath, No Spell" AND t.name = "Romance" AND a.name = "Ricejames"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Orange Bedroom" AND t.name = "Romance" AND a.name = "Kyuubi's Angel of Darkness"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Orange Bedroom" AND t.name = "One-shot" AND a.name = "Kyuubi's Angel of Darkness"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Want Verus Need" AND t.name = "Romance" AND a.name = "Armageddon Angel"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Want Verus Need" AND t.name = "One-shot" AND a.name = "Armageddon Angel"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sexually Frustrated" AND t.name = "Romance" AND a.name = "OldAsHeck"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sexually Frustrated" AND t.name = "One-shot" AND a.name = "OldAsHeck"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Eternal Love" AND t.name = "Romance" AND a.name = "OldAsHeck"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Eternal Love" AND t.name = "One-shot" AND a.name = "OldAsHeck"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Anko's Roses" AND t.name = "Romance" AND a.name = "TakumaAngel"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Anko's Roses" AND t.name = "Humor" AND a.name = "TakumaAngel"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Ties that Bind Us: A Naruto and Kushina Love Story" AND t.name = "Romance" AND a.name = "Tonlor"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Ties that Bind Us: A Naruto and Kushina Love Story" AND t.name = "Hurt | Comfort" AND a.name = "Tonlor"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Ties that Bind Us: A Naruto and Kushina Love Story" AND t.name = "One-shot" AND a.name = "Tonlor"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Kings of Foreplay" AND t.name = "Friendship" AND a.name = "SaveTheHero"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Kings of Foreplay" AND t.name = "One-shot" AND a.name = "SaveTheHero"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Willingly Snared in the Widow's Web" AND t.name = "Romance" AND a.name = "Major Mike Powell III"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Willingly Snared in the Widow's Web" AND t.name = "One-shot" AND a.name = "Major Mike Powell III"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "When One Domino Falls" AND t.name = "Adventure" AND a.name = "Warchief"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "When One Domino Falls" AND t.name = "Friendship" AND a.name = "Warchief"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "En'leass*" AND t.name = "Romance" AND a.name = "Fen_Assan"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "En'leass*" AND t.name = "Sexual content" AND a.name = "Fen_Assan"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "En'leass*" AND t.name = "Angst" AND a.name = "Fen_Assan"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "En'leass*" AND t.name = "AU" AND a.name = "Fen_Assan"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Yours Truly" AND t.name = "Romance" AND a.name = "Fen_Assan"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Yours Truly" AND t.name = "Fluff" AND a.name = "Fen_Assan"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Yours Truly" AND t.name = "Friendship" AND a.name = "Fen_Assan"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Like a Damn Princess" AND t.name = "Femdom" AND a.name = "Luddleston"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Like a Damn Princess" AND t.name = "One-shot" AND a.name = "Luddleston"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Wager" AND t.name = "One-shot" AND a.name = "Eravalefantasy"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Novigrad: An Interlude" AND t.name = "Drama" AND a.name = "Crimson_Coin"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Novigrad: An Interlude" AND t.name = "Romance" AND a.name = "Crimson_Coin"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Novigrad: An Interlude" AND t.name = "One-shot" AND a.name = "Crimson_Coin"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Too Good to Last" AND t.name = "Romance" AND a.name = "The Assassin's Pen"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Too Good to Last" AND t.name = "Hurt | Comfort" AND a.name = "The Assassin's Pen"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Too Good to Last" AND t.name = "One-shot" AND a.name = "The Assassin's Pen"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blonde" AND t.name = "Romance" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blonde" AND t.name = "Angst" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Blonde" AND t.name = "One-shot" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Cure for All Ills" AND t.name = "Romance" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Cure for All Ills" AND t.name = "One-shot" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Wedding Day" AND t.name = "One-shot" AND a.name = "Whip9063"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Do computers dream of electric armu?" AND t.name = "Humor" AND a.name = "Assbele"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Do computers dream of electric armu?" AND t.name = "One-shot" AND a.name = "Assbele"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Empress' Child" AND t.name = "Angst" AND a.name = "BagofChips"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Other Woman" AND t.name = "Multi" AND a.name = "ColdLuigi"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Other Woman" AND t.name = "Fluff" AND a.name = "ColdLuigi"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Other Woman" AND t.name = "Angst" AND a.name = "ColdLuigi"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Other Woman" AND t.name = "Post-canon" AND a.name = "ColdLuigi"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Other Woman" AND t.name = "Sexual content" AND a.name = "ColdLuigi"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Other Woman" AND t.name = "Romance" AND a.name = "ColdLuigi"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "From Beyond the Sky" AND t.name = "One-shot" AND a.name = "BagofChips"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Afterlife" AND t.name = "Post-canon" AND a.name = "Vargras"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Xenoblade Chronicles 2: Atonement" AND t.name = "AU" AND a.name = "Kiben007"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Shadows of Alrest" AND t.name = "AU" AND a.name = "Kiben007"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Place Called Home" AND t.name = "Hurt/Comfort" AND a.name = "Darandus548"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Place Called Home" AND t.name = "Adventure" AND a.name = "Darandus548"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love in Low Orbit" AND t.name = "Angst" AND a.name = "LotusRootsAndBambooShoots"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love in Low Orbit" AND t.name = "Romance" AND a.name = "LotusRootsAndBambooShoots"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love in Low Orbit" AND t.name = "One-shot" AND a.name = "LotusRootsAndBambooShoots"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Temptation of Rex" AND t.name = "Romance" AND a.name = "LotusRootsAndBambooShoots"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Temptation of Rex" AND t.name = "Angst" AND a.name = "LotusRootsAndBambooShoots"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Temptation of Rex" AND t.name = "One-shot" AND a.name = "LotusRootsAndBambooShoots"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fire Tempered" AND t.name = "Friendship" AND a.name = "LotusRootsAndBambooShoots"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fire Tempered" AND t.name = "One-shot" AND a.name = "LotusRootsAndBambooShoots"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "An Eternal History" AND t.name = "AU" AND a.name = "Seeker38"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Aegis Dish" AND t.name = "One-shot" AND a.name = "Steamedzing"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A King Amongst Paupers" AND t.name = "AU" AND a.name = "Mitternachtwuten"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The One Where Nia (Eventually) Gets Something Nice" AND t.name = "One-shot" AND a.name = "Dragonbutts (Wayward_Dragon)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The One Where Nia (Eventually) Gets Something Nice" AND t.name = "Sexual content" AND a.name = "Dragonbutts (Wayward_Dragon)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Useful" AND t.name = "Romance" AND a.name = "Vogelimkafig120"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Useful" AND t.name = "Fluff" AND a.name = "Vogelimkafig120"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Useful" AND t.name = "One-shot" AND a.name = "Vogelimkafig120"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Titan Eater" AND t.name = "AU" AND a.name = "Sobakiin"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "More Than Just a Memory" AND t.name = "AU" AND a.name = "Starsoarer"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Visit" AND t.name = "Fluff" AND a.name = "Vogelimkafig120"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Visit" AND t.name = "One-shot" AND a.name = "Vogelimkafig120"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I Need a Healer" AND t.name = "AU" AND a.name = "TimeWillNowResume"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Nia telling her secret to Rex early" AND t.name = "Angst" AND a.name = "Worswor"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Nia telling her secret to Rex early" AND t.name = "AU" AND a.name = "Worswor"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Nia telling her secret to Rex early" AND t.name = "One-shot" AND a.name = "Worswor"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "All Three Of Them" AND t.name = "One-shot" AND a.name = "InsideA14YearOldGirl"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "New Frontier" AND t.name = "One-shot" AND a.name = "Kingcrustnip"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The New World" AND t.name = "One-shot" AND a.name = "Kingcrustnip"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Heros Return" AND t.name = "Fluff" AND a.name = "Kingcrustnip"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Settling In" AND t.name = "One-shot" AND a.name = "Kingcrustnip"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Beach!" AND t.name = "One-shot" AND a.name = "Kingcrustnip"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Moving In" AND t.name = "Fluff" AND a.name = "Kingcrustnip"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Let's Go for a Ride" AND t.name = "One-shot" AND a.name = "Kingcrustnip"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I Will Always Be By Your Side" AND t.name = "Angst" AND a.name = "Kingcrustnip"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I Will Always Be By Your Side" AND t.name = "One-shot" AND a.name = "Kingcrustnip"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Popcorn!" AND t.name = "One-shot" AND a.name = "Kingcrustnip"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The House That Rex Built" AND t.name = "Romance" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The House That Rex Built" AND t.name = "Angst" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The House That Rex Built" AND t.name = "Fluff" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "They Talked Later" AND t.name = "One-shot" AND a.name = "Bcd_Xc"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Wake to See Your True Emancipation" AND t.name = "Pwp" AND a.name = "NidoranDuran"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Wake to See Your True Emancipation" AND t.name = "One-shot" AND a.name = "NidoranDuran"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "All of the Above" AND t.name = "One-shot" AND a.name = "Nopeisok"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Her War" AND t.name = "Angst" AND a.name = "PackerDragon"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Her War" AND t.name = "Fluff" AND a.name = "PackerDragon"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Her War" AND t.name = "One-shot" AND a.name = "PackerDragon"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "You're The Greatest Gift I Could Ask For" AND t.name = "Romance" AND a.name = "BlazingSoul500"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "You're The Greatest Gift I Could Ask For" AND t.name = "One-shot" AND a.name = "BlazingSoul500"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lovemaking with a Leftherian" AND t.name = "Romance" AND a.name = "BEWD4133"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lovemaking with a Leftherian" AND t.name = "Sexual content" AND a.name = "BEWD4133"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Lovemaking with a Leftherian" AND t.name = "One-shot" AND a.name = "BEWD4133"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Nia's Sundress Is Too Distracting!" AND t.name = "Sexual content" AND a.name = "Mister_Phoenix"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Nia's Sundress Is Too Distracting!" AND t.name = "One-shot" AND a.name = "Mister_Phoenix"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Early Morning Ramble" AND t.name = "Friendship" AND a.name = "UltraPop"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Early Morning Ramble" AND t.name = "One-shot" AND a.name = "UltraPop"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mistress and Pet" AND t.name = "Sexual content" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mistress and Pet" AND t.name = "One-shot" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Where We Belong" AND t.name = "Fluff" AND a.name = "GayFlyFish"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Teaching Them a Thing or Three" AND t.name = "Lesbian | Yuri" AND a.name = "SmutWizard"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Teaching Them a Thing or Three" AND t.name = "One-shot" AND a.name = "SmutWizard"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Masterpiece" AND t.name = "Sexual content" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Masterpiece" AND t.name = "One-shot" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Caught my sleepy star" AND t.name = "One-shot" AND a.name = "Tbat"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Shard of the Aegis (Future Reborn)" AND t.name = "AU" AND a.name = "ImAgInAtE_404"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Shard of the Aegis (Future Reborn)" AND t.name = "One-shot" AND a.name = "ImAgInAtE_404"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Cloudclear Candy" AND t.name = "One-shot" AND a.name = "AbyssalAriel"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Father Figure" AND t.name = "One-shot" AND a.name = "Optional_adventure"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Returning the Favor" AND t.name = "Romance" AND a.name = "SteamedZing"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Returning the Favor" AND t.name = "Hurt | Comfort" AND a.name = "SteamedZing"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Returning the Favor" AND t.name = "One-shot" AND a.name = "SteamedZing"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Off-Seers Need a Good Laugh Too" AND t.name = "Fluff" AND a.name = "Rainbowwing251"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Off-Seers Need a Good Laugh Too" AND t.name = "One-shot" AND a.name = "Rainbowwing251"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Melt" AND t.name = "Fluff" AND a.name = "Ilvidis"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Melt" AND t.name = "One-shot" AND a.name = "Ilvidis"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Forever After" AND t.name = "Romance" AND a.name = "Egildidnothingwrong (Lavider)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Forever After" AND t.name = "One-shot" AND a.name = "Egildidnothingwrong (Lavider)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Dreams" AND t.name = "One-shot" AND a.name = ""
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Do I Remember You?" AND t.name = "AU" AND a.name = "OathkeeperAlexis"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Do I Remember You?" AND t.name = "Fluff" AND a.name = "OathkeeperAlexis"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A step away" AND t.name = "Romance" AND a.name = "XSparklingRavenx"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A step away" AND t.name = "One-shot" AND a.name = "XSparklingRavenx"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "His Mio" AND t.name = "Fluff" AND a.name = "Ilvidis"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "His Mio" AND t.name = "One-shot" AND a.name = "Ilvidis"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Write it down or you'll forget" AND t.name = "One-shot" AND a.name = "Starcrossedsky"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Knowledge obtained" AND t.name = "One-shot" AND a.name = "Lyre (Lyrecho)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sunk Cost Fallacy" AND t.name = "One-shot" AND a.name = "ThatWindingPath"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "There is a handful of courage in my heart" AND t.name = "One-shot" AND a.name = "Lyre (Lyrecho)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Deathly loneliness attacks" AND t.name = "One-shot" AND a.name = "Lyre (Lyrecho)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Risk negation" AND t.name = "One-shot" AND a.name = "Lyrecho"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Quick to their ends our candles burn until we're free" AND t.name = "Angst" AND a.name = "Lyre (Lyrecho)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Quick to their ends our candles burn until we're free" AND t.name = "One-shot" AND a.name = "Lyre (Lyrecho)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Two souls once lost" AND t.name = "One-shot" AND a.name = "Lyre (Lyrecho)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Eleven, eleven" AND t.name = "Angst" AND a.name = "Lyre (Lyrecho)"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Eleven, eleven" AND t.name = "One-shot" AND a.name = "Lyre (Lyrecho)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Who, me?" AND t.name = "One-shot" AND a.name = "Captwaddledoo"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "'Til We Find Ourselves, Again" AND t.name = "One-shot" AND a.name = "Dsw78"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Bonding of Two" AND t.name = "Fluff" AND a.name = "EuphoricMother"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Bonding of Two" AND t.name = "One-shot" AND a.name = "EuphoricMother"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Know thy enemy" AND t.name = "One-shot" AND a.name = "Sylvalum"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Memories of what we could have been" AND t.name = "One-shot" AND a.name = "Archsage"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sundancer" AND t.name = "One-shot" AND a.name = "WisteriaJD (JD2357)"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A lot can happen between now and never" AND t.name = "Sexual content" AND a.name = "Swordlegion"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A lot can happen between now and never" AND t.name = "One-shot" AND a.name = "Swordlegion"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "How they used to Love" AND t.name = "Romance" AND a.name = "ArchivalBerethNocta"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "How they used to Love" AND t.name = "Sexual content" AND a.name = "ArchivalBerethNocta"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "How they used to Love" AND t.name = "One-shot" AND a.name = "ArchivalBerethNocta"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just a Night In Camp" AND t.name = "Friendship" AND a.name = "EuphoricMother"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Just a Night In Camp" AND t.name = "One-shot" AND a.name = "EuphoricMother"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Where We Don't Belong" AND t.name = "Time travel" AND a.name = "DewitLater"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Our Hopes and Dreams" AND t.name = "Sexual content" AND a.name = "Heronsong"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Our Hopes and Dreams" AND t.name = "One-shot" AND a.name = "Heronsong"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "For Want of a Dry Wing" AND t.name = "Time travel" AND a.name = "AliceYouWereHere"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Clock Strikes Six" AND t.name = "One-shot" AND a.name = "ThatWindingPath"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Quiet, Empty Moment" AND t.name = "Fluff" AND a.name = "Cold_Jolteon"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Quiet, Empty Moment" AND t.name = "One-shot" AND a.name = "Cold_Jolteon"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Queen's Orders" AND t.name = "One-shot" AND a.name = "Dragon_Falls"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "From the Cradle to the Grave (and back again)" AND t.name = "Angst" AND a.name = "Rosifly"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "From the Cradle to the Grave (and back again)" AND t.name = "One-shot" AND a.name = "Rosifly"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "And eat it too" AND t.name = "AU" AND a.name = "Starcrossedsky"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "What Comes Next" AND t.name = "One-shot" AND a.name = "Leonidskies"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "You Got Any Babies?" AND t.name = "One-shot" AND a.name = "RavioxHilda"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Whatever It Is, With You" AND t.name = "Angst" AND a.name = "Ratly"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Long or Short" AND t.name = "One-shot" AND a.name = "Meme_Engine"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "I am the only lonely casualty" AND t.name = "One-shot" AND a.name = "Starcrossedsky"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Promise of Morning Dew" AND t.name = "One-shot" AND a.name = "MementoVive"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Place To Be Alive" AND t.name = "Angst" AND a.name = "SilberFelx"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Not Mine" AND t.name = "Angst" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Not Mine" AND t.name = "Romance" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Not Mine" AND t.name = "One-shot" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Momentary Weakness" AND t.name = "One-shot" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Resemblances" AND t.name = "One-shot" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "None, Then Three" AND t.name = "Romance" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "None, Then Three" AND t.name = "Angst" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "None, Then Three" AND t.name = "AU" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "None, Then Three" AND t.name = "One-shot" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Talk" AND t.name = "Romance" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Talk" AND t.name = "Angst" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Talk" AND t.name = "Fluff" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fledglings" AND t.name = "Fluff" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fledglings" AND t.name = "Angst" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fledglings" AND t.name = "AU" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fledglings" AND t.name = "One-shot" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Endless Strength" AND t.name = "Romance" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Endless Strength" AND t.name = "Angst" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Endless Strength" AND t.name = "AU" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "For my part this is all I need" AND t.name = "Fluff" AND a.name = "Lioninjawarloc"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "For my part this is all I need" AND t.name = "One-shot" AND a.name = "Lioninjawarloc"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Catching up for our past lives" AND t.name = "Pwp" AND a.name = "Tsukarine"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Catching up for our past lives" AND t.name = "Sexual content" AND a.name = "Tsukarine"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sleepy Time with Noah and Mio" AND t.name = "One-shot" AND a.name = "FiliaSnowe"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Instruments of Rebirth" AND t.name = "One-shot" AND a.name = "Lumailia"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "You're Here; That's More Than Enough" AND t.name = "One-shot" AND a.name = "Ansvel_Ashe"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Duet" AND t.name = "Romance" AND a.name = "Essaysforbreakfast"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Duet" AND t.name = "One-shot" AND a.name = "Essaysforbreakfast"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Forever Interlinked Futures" AND t.name = "Romance" AND a.name = "ValorFennekin34"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sotto Voce" AND t.name = "Sexual content" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Sotto Voce" AND t.name = "Romance" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hand in Hand" AND t.name = "Romance" AND a.name = "StrayedPath"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hand in Hand" AND t.name = "Angst" AND a.name = "StrayedPath"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hand in Hand" AND t.name = "AU" AND a.name = "StrayedPath"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Consequences of Indirect Kissing" AND t.name = "Multi" AND a.name = "KwIl"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Consequences of Indirect Kissing" AND t.name = "One-shot" AND a.name = "KwIl"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "May Our Voices Reach, In Time" AND t.name = "Friendship" AND a.name = "Ansvel_Ashe"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Driver and (Artificial) Blade" AND t.name = "One-shot" AND a.name = "Worswor"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Promises are meant to be kept" AND t.name = "AU" AND a.name = "Frozenbear09"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Promises are meant to be kept" AND t.name = "Fluff" AND a.name = "Frozenbear09"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Promises are meant to be kept" AND t.name = "One-shot" AND a.name = "Frozenbear09"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Noah and the Name Game" AND t.name = "Fluff" AND a.name = "BagofChips"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Noah and the Name Game" AND t.name = "Humor" AND a.name = "BagofChips"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Noah and the Name Game" AND t.name = "One-shot" AND a.name = "BagofChips"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ad Tertium / Upon the Third" AND t.name = "AU" AND a.name = "DredgenSoul"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ad Tertium / Upon the Third" AND t.name = "Fluff" AND a.name = "DredgenSoul"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Traitor in the Mirror" AND t.name = "Angst" AND a.name = "Pachipower"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Miyabi In The Middle" AND t.name = "Multi" AND a.name = "LunarMelodia"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Miyabi In The Middle" AND t.name = "Sexual content" AND a.name = "LunarMelodia"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Miyabi In The Middle" AND t.name = "Romance" AND a.name = "LunarMelodia"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Miyabi In The Middle" AND t.name = "One-shot" AND a.name = "LunarMelodia"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Breaking the Miyabunnit" AND t.name = "Sexual content" AND a.name = "LunarMelodia"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Breaking the Miyabunnit" AND t.name = "One-shot" AND a.name = "LunarMelodia"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mio's Guide to Child Birth" AND t.name = "Humor" AND a.name = "Alucard45"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mio's Guide to Child Birth" AND t.name = "AU" AND a.name = "Alucard45"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mio's Guide to Child Birth" AND t.name = "One-shot" AND a.name = "Alucard45"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "No Nut Noah-vember" AND t.name = "Multi" AND a.name = "AbyssalAriel"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "No Nut Noah-vember" AND t.name = "One-shot" AND a.name = "AbyssalAriel"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Bridge Between Worlds" AND t.name = "Romance" AND a.name = "WriterRenEllis"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fast Travel to Flavour City" AND t.name = "Humor" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fast Travel to Flavour City" AND t.name = "Fluff" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fast Travel to Flavour City" AND t.name = "Sexual content" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Fast Travel to Flavour City" AND t.name = "One-shot" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Healers' Fate" AND t.name = "AU" AND a.name = "SomeDatsunGuy"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Healers' Fate" AND t.name = "Fluff" AND a.name = "SomeDatsunGuy"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Healers' Fate" AND t.name = "One-shot" AND a.name = "SomeDatsunGuy"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Potato Eyes of Spudding Justice" AND t.name = "Humor" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Potato Eyes of Spudding Justice" AND t.name = "Fluff" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Potato Eyes of Spudding Justice" AND t.name = "AU" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Potato Eyes of Spudding Justice" AND t.name = "One-shot" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Too Much Information" AND t.name = "AU" AND a.name = "AbyssalAriel"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Too Much Information" AND t.name = "Humor" AND a.name = "AbyssalAriel"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The simple rites of undead war-girls" AND t.name = "One-shot" AND a.name = "Lumailia"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "New Moon [Hiatus]" AND t.name = "AU" AND a.name = "LunarMelodia"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "New Moon [Hiatus]" AND t.name = "Angst" AND a.name = "LunarMelodia"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The City and Alexandria" AND t.name = "AU" AND a.name = "Raelhorn"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Letters To Our Son" AND t.name = "One-shot" AND a.name = "LunarMelodia"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Reunion" AND t.name = "One-shot" AND a.name = "Pocketcucco"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Tea Leaves and Fourtune Clovers" AND t.name = "Romance" AND a.name = "WriterRenEllis"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A chat between the Monado's Heir and Master Driver" AND t.name = "One-shot" AND a.name = "Nopeisok"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Walking Forward, Looking Back" AND t.name = "One-shot" AND a.name = "AceStarChaser"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "A Mother's Love and a Queen's Regret" AND t.name = "One-shot" AND a.name = "BEWD4133"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mirror Mirror" AND t.name = "Angst" AND a.name = "ThatWindingPath"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Mirror Mirror" AND t.name = "One-shot" AND a.name = "ThatWindingPath"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "For When The Dawn Comes Again" AND t.name = "AU" AND a.name = "DredgenSoul"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "For When The Dawn Comes Again" AND t.name = "Time travel" AND a.name = "DredgenSoul"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "For When The Dawn Comes Again" AND t.name = "One-shot" AND a.name = "DredgenSoul"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Queen in the Memorial Hall" AND t.name = "One-shot" AND a.name = "Raelhorn"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Show and Tell" AND t.name = "AU" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Show and Tell" AND t.name = "One-shot" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Life goes on" AND t.name = "Angst" AND a.name = "Gayzed"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Life goes on" AND t.name = "One-shot" AND a.name = "Gayzed"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Father, The Son, and the Rubber Duck" AND t.name = "Fluff" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Father, The Son, and the Rubber Duck" AND t.name = "One-shot" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Riki Is Bestest Grampypon!" AND t.name = "Fluff" AND a.name = "BagofChips"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Riki Is Bestest Grampypon!" AND t.name = "One-shot" AND a.name = "BagofChips"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Broken Gauntlet (SPOILERS FOR XC3FR)" AND t.name = "One-shot" AND a.name = "Mememan64"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "His Best Work's Done in the Bath" AND t.name = "Romance" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "His Best Work's Done in the Bath" AND t.name = "One-shot" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Melancholy Milton and Mythra" AND t.name = "One-shot" AND a.name = "Nopeisok"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Memories of a distant, near world" AND t.name = "AU" AND a.name = "Nth111"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Looking up from Beneath the Ripples" AND t.name = "Angst" AND a.name = "Ferry5067"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Across time and space" AND t.name = "Angst" AND a.name = "Jellijeans"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Across time and space" AND t.name = "One-shot" AND a.name = "Jellijeans"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Birdsong" AND t.name = "One-shot" AND a.name = "Sylvalum"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Full of Beans" AND t.name = "One-shot" AND a.name = "Raelhorn"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Memories of the Stoutheart and the Queen" AND t.name = "Fluff" AND a.name = "ZAD_GX"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "And Those We've Left Behind" AND t.name = "One-shot" AND a.name = "Perciatelli"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Campfire Conversations" AND t.name = "Slices of life" AND a.name = "Discar"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Many Parts of One Identity" AND t.name = "One-shot" AND a.name = "Blumbrr"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "We’ll meet again" AND t.name = "Time travel" AND a.name = "Za_Waruldo_is_MINE"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Pangram" AND t.name = "One-shot" AND a.name = "SirTeateiMoonlight"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Scavenger's Code, Number Eight" AND t.name = "One-shot" AND a.name = "Looking4Amuro"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ye Shall Be As Gods" AND t.name = "Humor" AND a.name = "AceAxolotl"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Ye Shall Be As Gods" AND t.name = "One-shot" AND a.name = "AceAxolotl"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Scars We Carry" AND t.name = "Friendship" AND a.name = "Minmei"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Moments Before Midnight" AND t.name = "One-shot" AND a.name = "Nopeisok"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The rhapsodist" AND t.name = "One-shot" AND a.name = "Archangelgf"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Origin Archive" AND t.name = "One-shot" AND a.name = "Lumailia"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love Me Like That" AND t.name = "Fluff" AND a.name = "OathkeeperAlexis"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Love Me Like That" AND t.name = "One-shot" AND a.name = "OathkeeperAlexis"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Red Left Hand of Fate" AND t.name = "AU" AND a.name = "Raelhorn"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Aionios High 101" AND t.name = "One-shot" AND a.name = "AioniosHigh"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Forever Interlinked: Futures Redeemed" AND t.name = "Romance" AND a.name = "ValorFennekin34"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Forever Interlinked: Futures Redeemed" AND t.name = "Angst" AND a.name = "ValorFennekin34"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Hot and cold" AND t.name = "One-shot" AND a.name = "Sylvalum"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "An Aegisborn in Aionios" AND t.name = "Sexual content" AND a.name = "The_Warrior_And_The_Scholar"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Power Of a Demon" AND t.name = "One-shot" AND a.name = "The_Warrior_And_The_Scholar"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Stasis" AND t.name = "Drama" AND a.name = "AceAxolotl"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Drifting soul" AND t.name = "One-shot" AND a.name = "Orpheus_under_starlight"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "As Nature Intended?" AND t.name = "One-shot" AND a.name = "KittykatOwO"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The N stands for ""Not having a good time""" AND t.name = "Angst" AND a.name = "Secret_Artistry"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The N stands for ""Not having a good time""" AND t.name = "One-shot" AND a.name = "Secret_Artistry"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Our Repentance" AND t.name = "Romance" AND a.name = "ValorFennekin34"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Our Repentance" AND t.name = "One-shot" AND a.name = "ValorFennekin34"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "All my dreams come true" AND t.name = "One-shot" AND a.name = "Tbat"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Second Chances" AND t.name = "Angst" AND a.name = "Little_Anxiety_Plant"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Second Chances" AND t.name = "Fluff" AND a.name = "Little_Anxiety_Plant"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Second Chances" AND t.name = "Sexual content" AND a.name = "Little_Anxiety_Plant"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Tales of Interlinked Worlds" AND t.name = "One-shot" AND a.name = "ArcaneMadman"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Visions of Another" AND t.name = "One-shot" AND a.name = "Secret_Artistry"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Goldenrod" AND t.name = "AU" AND a.name = "Eryth_sea"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Future Awaits" AND t.name = "One-shot" AND a.name = "Halteclare"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Storms" AND t.name = "One-shot" AND a.name = "MementoVive"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Gift of Unity" AND t.name = "Fluff" AND a.name = "DewitLater"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "The Gift of Unity" AND t.name = "One-shot" AND a.name = "DewitLater"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Triad" AND t.name = "Multi" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Triad" AND t.name = "One-shot" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Romance Stories for the Half-Homs Girl" AND t.name = "Romance" AND a.name = "Rozteka"
UNION
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Romance Stories for the Half-Homs Girl" AND t.name = "One-shot" AND a.name = "Rozteka"
UNION /************************************************************************************************************************************/
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Patience" AND t.name = "One-shot" AND a.name = "SirTeateiMoonlight";