-- USE ffb_main;

/*
 * Series
 */
DELETE FROM `series`;
INSERT INTO `series` (`name`, `description`) 
VALUES ("From Innocent Feelings to Post Crisis", "Tifa's journey from Nibelheim to Edge."),
("All Bets Are Off", "FFX cast into a college AU with Tidus as the sport star and Yuna as the closet student."),
("Spira series", "Sin and Vegnagun are no more, Tidus and Yuna have to discover what he is now."),
("Scenes from a Life", "A series of days in Ginny and Harry's relationship spanning the years. Portrays Ginny and Harry as having an eventual happy marriage that's polyamorous, but not before a good amount of angst."),
("Hermione in Authority", "Wherein Pansy keeps running into trouble, and Hermione is only too happy to take advantage of the fact that she has the upper hand."),
("Teenage girlhood: power dynamics and messy friendship and sex", "The Daphne/Pansy porn"),
("Voyeurism for Fun and Profit", "The other Weasley Twins business...."),
("The Domination Series", "A collection of short stories about Harry Potter and Daphne Greengrass' burgeoning relationship."),
("Contrast in Love", "A series of post war angsty, smutty, personal problem filled one shots. Pairings include: Harry Potter x Pansy Parkinson, Draco Malfoy x Hermione Granger, Blaise Zabini x Luna Lovegood, Ron Weasley x Daphne Greengrass, Neville Longbottom x Tracey Davis because I need some more rare pairs in my life. 2/5 complete."),
("The Boy Who Wanted Her Stories", ""),
("The Boy Who Lived and The Girl Who Topped", "The ongoing tales of the sex life and love life of Ginevra Weasley and Harry Potter."),
("Triplicity", ""),
("Revel", "The third part of the Triplicity series, as well as the spin-off works resulting from events in Revel(ations)"),
("We Three Seekers", ""),
("Southampton",""),
("The Importance Of Intent Collection",""),
("Novocaine", ""),
("Sybillance","Born As The Seventh Month Dies: Pre-Hogwarts. Neither Can Live While The Other Survives: 1st-3rd year. Those Who Have Thrice Defied Him: 4th year. Power The Dark Lord Knows Not: 5th year. The Two Brothers: A oneshot series from Ollie's point of view encompassing the whole series."),
("From Feral to Domesticated","Hermione with the Black Sisters."),
("Thrall or not Thrall", ""),
("Hermione's Little Whore", ""),
("A Bonding", ""),
("The Prefect's Bathroom", ""),
("Dragon Chronicles", ""),
("Brothers", ""),
("Family that Chooses You", ""),
("A Taste of Magic", ""),
("I told him, Gaby. I told him that I loved you", ""),
("Music and Mayhem", ""),
("Saving Nezzy", ""),
("Mother/Daughter Love", "The collection of Mother/Daughter Love. Only three one-shots."),
("Just Like the Folks", ""),
("Blondes in Bed", ""),
("The Blades of Elysium", ""),
("Adventures in New Alrest", "Join Rex and his friends in their adventures across New Alrest (and possibly further, later in the series). Multiple one-shots with minor story arcs. Maybe even a big one at some point. Notes: The main reason for me having all this in the same series is because for most of my Xenoblade 2 fics, the same head canon will apply, that way you don't get too confused with my lore."),
("The weight of life", "the weight of life is a collection of my xbc3 fics that are written to be roughly interconnected. you don't need to read them all, or in order, but doing so will probably grant you a greater understanding of the headcanons and worldbuilding present in the fics. Series order is roughly chronological with respect to the in game timeline. Whether it is mentioned or not, know that noah, mio, eunie and taion are all trans. as of what's posted now and my own personal takes, i read lanz and sena as cis, or at least not binary trans (i could see demigirl sena). all fics will be pre polyboros polycule, or have polyboros polycule. that's the agenda. N and m are cis. yes. i needed to absolutely make this more complicated than it had to be. Noah/mio owns my entire heart. polyboros agenda but Just Know This."),
("Momentary Weakness", "This series focuses on the relationship between the Queen of Agnus and the Zephyr of Ouroboros, both in Aionios during the course of Xenoblade Chronicles 3, and in the world they originated from in Xenoblade Chronicles 2.This series contains references to my Xenoblade Chronicles 2 longfic 'The House That Rex Built'");

/*
 * Series fanfictions
 */
DELETE FROM `series_fanfictions`;
INSERT INTO `series_fanfictions` (`series_id`,`fanfiction_id`, `ranking`)
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "From Innocent Feelings to Post Crisis" AND f.name = "Innocent Feelings" AND a.name = "Senigata"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "From Innocent Feelings to Post Crisis" AND f.name = "Journey of a Barmaid" AND a.name = "Senigata"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "From Innocent Feelings to Post Crisis" AND f.name = "Emerald Dream" AND a.name = "Senigata"
UNION
SELECT s.id, f.id, 4 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "From Innocent Feelings to Post Crisis" AND f.name = "Golden Respite" AND a.name = "Senigata"
UNION
SELECT s.id, f.id, 5 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "From Innocent Feelings to Post Crisis" AND f.name = "Lost Heart" AND a.name = "Senigata"
UNION
SELECT s.id, f.id, 6 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "From Innocent Feelings to Post Crisis" AND f.name = "Fractured Mind" AND a.name = "Senigata"
UNION
SELECT s.id, f.id, 7 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "From Innocent Feelings to Post Crisis" AND f.name = "Starlight" AND a.name = "Senigata"
UNION
SELECT s.id, f.id, 8 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "From Innocent Feelings to Post Crisis" AND f.name = "Post Crisis" AND a.name = "Senigata"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "All Bets Are Off" AND f.name = "Final Fantasy X: All Bets Are Off" AND a.name = "Selphie800"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "All Bets Are Off" AND f.name = "All Bets Are Off: The Sequel" AND a.name = "Selphie800"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "All Bets Are Off" AND f.name = "FFX: All Bets Are Off 3: Tidus & Yuna Forever" AND a.name = "Selphie800"
UNION
SELECT s.id, f.id, 4 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "All Bets Are Off" AND f.name = "FFX: All Bets Are Off 4: For the Love of Tidus" AND a.name = "Selphie800"
UNION
SELECT s.id, f.id, 5 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "All Bets Are Off" AND f.name = "All Bets Are Off V: The Conclusion" AND a.name = "Selphie800"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Spira series" AND f.name = "Neo-Genesis" AND a.name = "M'jai"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Spira series" AND f.name = "Spira's Dream" AND a.name = "M'jai"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Spira series" AND f.name = "Spira's Sphere" AND a.name = "M'jai"
UNION
SELECT s.id, f.id, 4 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Spira series" AND f.name = "Spira's Revenge" AND a.name = "M'jai"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Scenes from a Life" AND f.name = "Mixed Up Dreams" AND a.name = "Phoenixgal"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Scenes from a Life" AND f.name = "Lost in Muggle London" AND a.name = "Phoenixgal"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Scenes from a Life" AND f.name = "The Perils of Too Much Calming Potion" AND a.name = "Phoenixgal"
UNION
SELECT s.id, f.id, 4 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Scenes from a Life" AND f.name = "Second String" AND a.name = "Phoenixgal"
UNION
SELECT s.id, f.id, 5 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Scenes from a Life" AND f.name = "Family" AND a.name = "Phoenixgal"
UNION
SELECT s.id, f.id, 6 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Scenes from a Life" AND f.name = "No Rules" AND a.name = "Phoenixgal"
UNION
SELECT s.id, f.id, 7 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Scenes from a Life" AND f.name = "Muggle Relations" AND a.name = "Phoenixgal"
UNION
SELECT s.id, f.id, 8 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Scenes from a Life" AND f.name = "Family Time" AND a.name = "Phoenixgal"
UNION
SELECT s.id, f.id, 9 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Scenes from a Life" AND f.name = "Lucky Kids" AND a.name = "Phoenixgal"
UNION
SELECT s.id, f.id, 10 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Scenes from a Life" AND f.name = "Expanding Bed Charms" AND a.name = "Phoenixgal"
UNION
SELECT s.id, f.id, 11 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Scenes from a Life" AND f.name = "Not a Phase" AND a.name = "Phoenixgal"
UNION
SELECT s.id, f.id, 12 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Scenes from a Life" AND f.name = "Awkward Lunch" AND a.name = "Phoenixgal"
UNION
SELECT s.id, f.id, 13 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Scenes from a Life" AND f.name = "At the Hogsnock Baths" AND a.name = "Phoenixgal"
UNION
SELECT s.id, f.id, 14 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Scenes from a Life" AND f.name = "Perfect Gingerbread Men" AND a.name = "Phoenixgal"
UNION
SELECT s.id, f.id, 15 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Scenes from a Life" AND f.name = "Outsider" AND a.name = "Phoenixgal"
UNION
SELECT s.id, f.id, 16 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Scenes from a Life" AND f.name = "Greek Holiday" AND a.name = "Phoenixgal"
UNION
SELECT s.id, f.id, 17 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Scenes from a Life" AND f.name = "The Daily Prophet Is Still a Gossip Rag" AND a.name = "Phoenixgal"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Hermione in Authority" AND f.name = "Another Kind of Lesson" AND a.name = "Twisted_Mind"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Hermione in Authority" AND f.name = "Another Kind of Teacher" AND a.name = "Twisted_Mind"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Hermione in Authority" AND f.name = "Another Kind of Punishment" AND a.name = "Twisted_Mind"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Teenage girlhood: power dynamics and messy friendship and sex" AND f.name = "Walkies" AND a.name = "Lokifan"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Teenage girlhood: power dynamics and messy friendship and sex" AND f.name = "You Did Say ""Anything""" AND a.name = "Lokifan"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Voyeurism for Fun and Profit" AND f.name = "The Shagging Spot" AND a.name = "hollywoodland"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Voyeurism for Fun and Profit" AND f.name = "The Encore" AND a.name = "hollywoodland"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Domination Series" AND f.name = "Dominating Daphne" AND a.name = "ThatsRealMagic"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Domination Series" AND f.name = "Daphne Dominates" AND a.name = "ThatsRealMagic"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Domination Series" AND f.name = "Daytime Domination" AND a.name = "ThatsRealMagic"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Contrast in Love" AND f.name = "Restorative" AND a.name = ""
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Contrast in Love" AND f.name = "Addictive" AND a.name = ""
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Boy Who Wanted Her Stories" AND f.name = "The Boy Who Wanted Her" AND a.name = "likebunnies"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Boy Who Wanted Her Stories" AND f.name = "The Boy Who Was Hers" AND a.name = "likebunnies"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Boy Who Lived and The Girl Who Topped" AND f.name = "A Memorable Farewell" AND a.name = "pommedeplume"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Boy Who Lived and The Girl Who Topped" AND f.name = "Yearning Hearts" AND a.name = "pommedeplume"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Boy Who Lived and The Girl Who Topped" AND f.name = "Open to Love" AND a.name = "pommedeplume"
UNION
SELECT s.id, f.id, 4 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Boy Who Lived and The Girl Who Topped" AND f.name = "Things to Do in Berlin (When You're Bored)" AND a.name = "pommedeplume"
UNION
SELECT s.id, f.id, 5 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Boy Who Lived and The Girl Who Topped" AND f.name = "Normal Things" AND a.name = "pommedeplume"
UNION
SELECT s.id, f.id, 6 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Boy Who Lived and The Girl Who Topped" AND f.name = "The Girl Who Topped" AND a.name = "pommedeplume"
UNION
SELECT s.id, f.id, 7 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Boy Who Lived and The Girl Who Topped" AND f.name = "Sort of Friends and Lovers" AND a.name = "pommedeplume"
UNION
SELECT s.id, f.id, 8 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Boy Who Lived and The Girl Who Topped" AND f.name = "Various Climaxes" AND a.name = "pommedeplume"
UNION
SELECT s.id, f.id, 9 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Boy Who Lived and The Girl Who Topped" AND f.name = "Luna's Desires" AND a.name = "pommedeplume"
UNION
SELECT s.id, f.id, 10 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Boy Who Lived and The Girl Who Topped" AND f.name = "The Art of Being Slytherin" AND a.name = "pommedeplume"
UNION
SELECT s.id, f.id, 11 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Boy Who Lived and The Girl Who Topped" AND f.name = "Welcome to the Family" AND a.name = "pommedeplume"
UNION
SELECT s.id, f.id, 12 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Boy Who Lived and The Girl Who Topped" AND f.name = "Open Doors" AND a.name = "pommedeplume"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Triplicity" AND f.name = "Best Behaviour" AND a.name = "Idleside"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Triplicity" AND f.name = "The World's a Stage" AND a.name = "Idleside"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Triplicity" AND f.name = "(Revel)ations" AND a.name = "Idleside"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Triplicity" AND f.name = "Blood and Bones" AND a.name = "Idleside"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Revel" AND f.name = "(Revel)ations" AND a.name = "Idleside"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Revel" AND f.name = "Helping Hands" AND a.name = "Idleside"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Revel" AND f.name = "Cosmopolitan" AND a.name = "Idleside"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "We Three Seekers" AND f.name = "We Three Seekers" AND a.name = "Farbautidottir"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "We Three Seekers" AND f.name = "Best Friends, Always" AND a.name = "Farbautidottir"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Southampton" AND f.name = "From Southampton to New York and Beyond" AND a.name = "Dorothea_Greengrass"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Southampton" AND f.name = "Memorial Week" AND a.name = "Dorothea_Greengrass"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Importance Of Intent Collection" AND f.name = "Daphne Greengrass and the Importance Of Intent" AND a.name = "PetrificusSomewhatus"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Importance Of Intent Collection" AND f.name = "The Importance Of Intent: After The Credits" AND a.name = "PetrificusSomewhatus"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Novocaine" AND f.name = "Novocaine" AND a.name = "Stardust_Warrior"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Novocaine" AND f.name = "Panacea" AND a.name = "Stardust_Warrior"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Sybillance" AND f.name = "Born As The Seventh Month Dies" AND a.name = "Aspionage"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Sybillance" AND f.name = "Neither Can Live While The Other Survives" AND a.name = "Aspionage"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Sybillance" AND f.name = "Those Who Have Thrice Defied Him" AND a.name = "Aspionage"
UNION
SELECT s.id, f.id, 4 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Sybillance" AND f.name = "Power The Dark Lord Knows Not" AND a.name = "Aspionage"
UNION
SELECT s.id, f.id, 5 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Sybillance" AND f.name = "The Two Brothers" AND a.name = "Aspionage"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "From Feral to Domesticated" AND f.name = "Feral" AND a.name = "TsyberRhaegal"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "From Feral to Domesticated" AND f.name = "Domesticated" AND a.name = "TsyberRhaegal"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "From Feral to Domesticated" AND f.name = "Godfather Neville" AND a.name = "TsyberRhaegal"
UNION
SELECT s.id, f.id, 4 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "From Feral to Domesticated" AND f.name = "Voyeurism is such a strong word" AND a.name = "TsyberRhaegal"
UNION
SELECT s.id, f.id, 5 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "From Feral to Domesticated" AND f.name = "Reciprocation is key" AND a.name = "TsyberRhaegal"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Thrall or not Thrall" AND f.name = "Thrall or not Thrall, that Is the Question" AND a.name = "Listen-to"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Thrall or not Thrall" AND f.name = "Shifting towards Eachother" AND a.name = "Listen-to"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Hermione's Little Whore" AND f.name = "Hermione's Little Whore" AND a.name = "Writerfreakssss"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Hermione's Little Whore" AND f.name = "Remember My Name" AND a.name = "Writerfreakssss"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Hermione's Little Whore" AND f.name = "Luna Joins the Fun" AND a.name = "Writerfreakssss"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "A Bonding" AND f.name = "A Bonding" AND a.name = "Flowerchild33"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "A Bonding" AND f.name = "46 Hours" AND a.name = "Flowerchild33"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "A Bonding" AND f.name = "Creating a Balance" AND a.name = "Flowerchild33"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Prefect's Bathroom" AND f.name = "The Prefect's Bathroom" AND a.name = "MobBob"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Prefect's Bathroom" AND f.name = "Love Under the Invisibility Cloak" AND a.name = "MobBob"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Dragon Chronicles 1: Muggle-Raised Champion" AND f.name = "The Prefect's Bathroom" AND a.name = "MobBob"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Dragon Chronicles 2: Harry Potter, Dragon Whisperer" AND f.name = "Love Under the Invisibility Cloak" AND a.name = "MobBob"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Brothers" AND f.name = "Brothers" AND a.name = "Writing Sins Not Tragedies"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Brothers" AND f.name = "Brothers: The Second Chapter" AND a.name = "Writing Sins Not Tragedies"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Family that Chooses You" AND f.name = "The Family that Chooses You" AND a.name = "WokFriedIce"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Family that Chooses You" AND f.name = "The Family that Heals" AND a.name = "WokFriedIce"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Family that Chooses You" AND f.name = "Extended Family" AND a.name = "WokFriedIce"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "A Taste of Magic" AND f.name = "A Taste of Magic" AND a.name = "WokFriedIce"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "A Taste of Magic" AND f.name = "Side Dishes" AND a.name = "WokFriedIce"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "I told him, Gaby. I told him that I loved you" AND f.name = "I told him, Gaby I told him that I loved you" AND a.name = "Floaw"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "I told him, Gaby. I told him that I loved you" AND f.name = "How it all started" AND a.name = "Floaw"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Music and Mayhem" AND f.name = "Check... and Mate" AND a.name = "Grace Kay (Drummerchick7)"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Music and Mayhem" AND f.name = "That Which Matters Most" AND a.name = "Grace Kay (Drummerchick7)"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Music and Mayhem" AND f.name = "Moving On" AND a.name = "Grace Kay (Drummerchick7)"
UNION
SELECT s.id, f.id, 4 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Music and Mayhem" AND f.name = "Innocence Asunder" AND a.name = " Grace Kay (Drummerchick7)"
UNION
SELECT s.id, f.id, 5 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Music and Mayhem" AND f.name = "A Very Merry Christmas Indeed" AND a.name = "Grace Kay (Drummerchick7)"
UNION
SELECT s.id, f.id, 6 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Music and Mayhem" AND f.name = "Sharing" AND a.name = "Grace Kay (Drummerchick7)"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Saving Nezzy" AND f.name = "Saving Nezzy" AND a.name = " BlueRaith"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Saving Nezzy" AND f.name = "Saving Sanity" AND a.name = "BlueRaith"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Mother/Daughter LoveSeries" AND f.name = "Mother/Daughter LoveSeries" AND a.name = "McCrazy23"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Mother/Daughter LoveSeries" AND f.name = "Mother/Daughter Love: Sequel One" AND a.name = "McCrazy23"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Hokage and the Pink Medical Kunoichi" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Hokage and the Violet Flower" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Hokage and the Red Flute Player" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 4 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Hokage and the Purple Snake" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 5 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Hokage and the Yellow Sand Sickle" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 6 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Fox and the Maroon Vixen" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 7 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Fox and the Golden Firefly" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 8 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Fox and the Mint Beetle" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 9 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Hokage and the Russet Doctor" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 10 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Fox and the Brown Hound" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 11 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Hokage and the Lavender Byakugan Hime" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 12 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Fox and the Blue Origami Angel" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 13 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Hokage and the Auburn Mizukage" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 14 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Fox and the Black Nadeshiko Warrior" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 15 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Fox and the Crimson Healer" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 16 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Fox and the Glacial Princess" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 17 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Fox and the Carmine Queen" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 18 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Fox and the Jasmine Legendary Sucker" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 19 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Fox and the Chestnut Weapons Minx" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 20 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Just Like the Folks" AND f.name = "Just Like the Folks: The Orange Fox and the Chocolate Strawberry" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Blondes in Bed" AND f.name = "Blondes in Bed: The Leaf and The Cloud" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Blondes in Bed" AND f.name = "Blondes in Bed: The Yellow Flash and The Golden Goddess" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Blondes in Bed" AND f.name = "Blondes in Bed: The Leaf and The Firefly Heiress" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 4 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Blondes in Bed" AND f.name = "Blondes in Bed: Two Leaves" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 5 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Blondes in Bed" AND f.name = "Blondes in Bed: The Leaf and The Sand" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 6 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Blondes in Bed" AND f.name = "Blondes in Bed: The Fox and The Cat" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 7 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Blondes in Bed" AND f.name = "Blondes in Bed: The Leaf and Two Clouds" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 8 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Blondes in Bed" AND f.name = "Blondes in Bed: Two Leaves and The Sand" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 9 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Blondes in Bed" AND f.name = "Blondes in Bed: The Leaf, The Cloud, and The Firefly" AND a.name = "Raptorcloak"
UNION
SELECT s.id, f.id, 10 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Blondes in Bed" AND f.name = "Blondes in Bed: The Leaf and The Heavenly Harem" AND a.name = "Raptorcloak"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Blades of Elysium" AND f.name = "Xenoblade Chronicles 2: Atonement" AND a.name = " kiben007"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Blades of Elysium" AND f.name = "Shadows of Alrest" AND a.name = "kiben007"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Adventures in New Alrest" AND f.name = "New Frontier" AND a.name = "Kingcrustnip"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Adventures in New Alrest" AND f.name = "The New World
" AND a.name = "Kingcrustnip"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Adventures in New Alrest" AND f.name = "The Heros Return" AND a.name = "Kingcrustnip"
UNION
SELECT s.id, f.id, 4 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Adventures in New Alrest" AND f.name = "Settling In" AND a.name = "Kingcrustnip"
UNION
SELECT s.id, f.id, 5 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Adventures in New Alrest" AND f.name = "Beach!" AND a.name = "Kingcrustnip"
UNION
SELECT s.id, f.id, 6 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Adventures in New Alrest" AND f.name = "Moving In" AND a.name = "Kingcrustnip"
UNION
SELECT s.id, f.id, 7 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Adventures in New Alrest" AND f.name = "Let's Go for a Ride" AND a.name = "Kingcrustnip"
UNION
SELECT s.id, f.id, 8 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Adventures in New Alrest" AND f.name = "I Will Always Be By Your Side" AND a.name = "Kingcrustnip"
UNION
SELECT s.id, f.id, 9 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Adventures in New Alrest" AND f.name = "Popcorn!" AND a.name = "Kingcrustnip"
UNION
SELECT s.id, f.id, 10 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Adventures in New Alrest" AND f.name = "Family" AND a.name = "Kingcrustnip"
UNION
SELECT s.id, f.id, 11 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Adventures in New Alrest" AND f.name = "Where we came from" AND a.name = "BlazingSoul500"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The weight of life" AND f.name = "Knowledge obtained" AND a.name = "Lyre (Lyrecho)"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The weight of life" AND f.name = "Deathly loneliness attacks" AND a.name = "Lyre (Lyrecho)"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The weight of life" AND f.name = "Risk negation" AND a.name = "Lyrecho"
UNION
SELECT s.id, f.id, 4 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The weight of life" AND f.name = "Quick to their ends our candles burn until we're free" AND a.name = "Lyre (Lyrecho)"
UNION
SELECT s.id, f.id, 5 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The weight of life" AND f.name = "There is a handful of courage in my heart" AND a.name = "Lyre (Lyrecho)"
UNION
SELECT s.id, f.id, 6 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The weight of life" AND f.name = "Two souls once lost" AND a.name = "Lyre (Lyrecho)"
UNION
SELECT s.id, f.id, 7 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The weight of life" AND f.name = "Eleven, eleven" AND a.name = "Lyre (Lyrecho)"
UNION /************************************************************************************************************************************/
SELECT s.id, f.id, 1 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Momentary Weakness" AND f.name = "Momentary Weakness" AND a.name = "Rozteka"
UNION
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Momentary Weakness" AND f.name = "Resemblances" AND a.name = "Rozteka"
UNION
SELECT s.id, f.id, 3 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Momentary Weakness" AND f.name = "None, Then Three" AND a.name = "Rozteka"
UNION
SELECT s.id, f.id, 4 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Momentary Weakness" AND f.name = "The Talk" AND a.name = "Rozteka"
UNION
SELECT s.id, f.id, 5 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Momentary Weakness" AND f.name = "Fledglings" AND a.name = "Rozteka"
UNION
SELECT s.id, f.id, 6 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Momentary Weakness" AND f.name = "Endless Strength" AND a.name = "Rozteka";