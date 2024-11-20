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
SELECT ff.id, t.id FROM `tags` t, `fanfictions` ff INNER JOIN `authors` a on a.id=ff.author_id WHERE ff.name = "Voyeurism is such a strong word" AND t.name = "One-shot" AND a.name = "TsyberRhaegal";