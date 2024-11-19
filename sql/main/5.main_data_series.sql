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
("The Importance Of Intent Collection","");

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
SELECT s.id, f.id, 2 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "The Importance Of Intent Collection" AND f.name = "The Importance Of Intent: After The Credits" AND a.name = "PetrificusSomewhatus";
