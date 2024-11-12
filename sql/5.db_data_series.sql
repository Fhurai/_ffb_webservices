-- USE ffb_main;

/*
 * Series
 */
DELETE FROM `series`;
INSERT INTO `series` (`name`, `description`) 
VALUES ("From Innocent Feelings to Post Crisis", "Tifa's journey from Nibelheim to Edge."),
("All Bets Are Off", "FFX cast into a college AU with Tidus as the sport star and Yuna as the closet student."),
("Spira series", "Sin and Vegnagun are no more, Tidus and Yuna have to discover what he is now.")
;

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
SELECT s.id, f.id, 4 FROM series s, fanfictions f INNER JOIN authors a ON a.id=f.author_id WHERE s.name = "Spira series" AND f.name = "Spira's Revenge" AND a.name = "M'jai";
