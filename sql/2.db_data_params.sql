-- USE ffb_main;

/*
 * Users
 */
DELETE FROM `users`;
INSERT INTO `users` (`username`,`password`,`email`,`is_admin`,`birthday`) 
VALUES ("Admin", "$2y$10$R3VHp4v5P1okSgInzICW8u/jUcbfufXzbiKqfegVW6gljo0iuwla6", "kulu57@live.com", 1, "1970-01-01 00:00:01"), 
("Fhurai", "$2y$10$B.KiKRiqYNSshmJXEWZJKuuf3g6pQVx0mNNjvf.udRMlS4hlmy3lq", "kulu57@gmail.com", 0, "1992-12-21 23:30:00");

/*
 * Fandoms
 */
DELETE FROM `fandoms`;
INSERT INTO `fandoms` (`name`) 
VALUES ("クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"), 
("Final Fantasy VII"), 
("Final Fantasy X / X-2"), 
("Hellsing"), 
("Harry Potter - Wizarding World"), 
("Mass Effect"),
("ナナとカオル | Nana to Kaoru"),
("Naruto"),
("Overwatch"),
("Parahumans Series - Wildbow"),
("StarCraft"),
("Wiedźmin | The Witcher"),
("Xenoblade Chronicles 1"),
("Xenoblade Chronicles 2"),
("Xenoblade Chronicles 3");

/*
 * Languages
 */
DELETE FROM `languages`;
INSERT INTO `languages` (`name`, `abbreviation`) 
VALUES ("Français", "FR"),
("English", "EN");

/*
 * Tags
 */
DELETE FROM `tags`;
INSERT INTO `tags` (`name`,`description`) 
VALUES ("Romance", "Story is about or mentions bit of romance between two or more characters."),
("Adventure", "Story is about or mentions bit of aventure with rather violent actions."),
("Friendship", "Story is about or mentions bit of friendship between two or more characters."),
("Family", "Story is about or mentions bit of family relationship between two or more characters."),
("Angst", "Story is about or mentions bit of deep anxiety or dread about the state of the world."),
("Drama", "Story is about or mentions bit of dramatic relationship between two or more characters."),
("Hurt | Comfort", "Story is about or mentions the physical pain or emotional distress of one character, who is cared for by another character."),
("Humor", "Story is about or mentions humoristic parts to lighten the mood."),
("Slices of life", "Story is about or mentions bits of everyday life"),
("Pre-canon", "Story takes place before the original timeline of the universe."),
("Post-canon", "Story takes place after the original timeline of the universe."),
("Previous Generation", "Story takes place while the parents of canon heroes are at the current age of their children."),
("Next Generation", "Story takes place while the children of canon heroes are at the current age of their parents."),
("Hetero / straight", "Story is about or mentions a relationship between a man and a woman."),
("Gay / Yaoi", "Story is about or mentions a relationship between two men."),
("Lesbian / Yuri", "Story is about or mentions a relationship between two women."),
("Multi", "Story is about or mentions a relationship between more than two characters."),
("Harem", "Story is about or mentions a relationship between a character and multiple other characters without another relationship."),
("Mecha", "Story is about or mentions mecha / robots."),
("Dragons", "Story is about or mentions dragons."), 
("Vampires", "Story is about or mentions vampires."), 
("Pwp", "Porn without plot, story is about or mentions porn."), 
("Sexual content", "Story is about or mentions sexual content."), 
("Femdom", "Story is about or mentions female domination."), 
("AU", "Alternative Universe, Story takes place in a different universe than the canon universe."), 
("Time travel", "Story is about or mentions time travel."), 
("Good", "A dark or evil character change allegiance to the hero side."), 
("Dark", "A nice character makes questionable choices."), 
("Evil", "A nice character change allegiance against the hero side.");

/*
 * Characters
 */
DELETE FROM `characters`; 
INSERT INTO `characters` (`name`, `fandom_id`) 
SELECT "Angelise Ikaruga Misurugi", `id` from `fandoms` WHERE `name` = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT "Hilda Schlievogt", `id` from `fandoms` WHERE `name` = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT "Salamandinay", `id` from `fandoms` WHERE `name` = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT "Salia Tereshkova", `id` from `fandoms` WHERE `name` = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT "Tusk", `id` from `fandoms` WHERE `name` = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT "Momoka Oginome", `id` from `fandoms` WHERE `name` = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION 
SELECT "OC", `id` from `fandoms` WHERE `name` = "クロスアンジュ 天使と竜の輪舞 | CROSS ANGE Rondo of Angel and Dragon"
UNION /************************************************************************************************************************************/
SELECT "Cloud Strife", `id` from `fandoms` WHERE `name` = "Final Fantasy VII"
UNION 
SELECT "Tifa Lockheart", `id` from `fandoms` WHERE `name` = "Final Fantasy VII"
UNION 
SELECT "Barret Wallace", `id` from `fandoms` WHERE `name` = "Final Fantasy VII"
UNION 
SELECT "Aerith Gainsborough", `id` from `fandoms` WHERE `name` = "Final Fantasy VII"
UNION 
SELECT "Nanaki | Red XIII", `id` from `fandoms` WHERE `name` = "Final Fantasy VII"
UNION 
SELECT "Yuffie Kisaragi", `id` from `fandoms` WHERE `name` = "Final Fantasy VII"
UNION 
SELECT "Vincent Valentine", `id` from `fandoms` WHERE `name` = "Final Fantasy VII"
UNION 
SELECT "Cid Highwind", `id` from `fandoms` WHERE `name` = "Final Fantasy VII"
UNION 
SELECT "Biggs", `id` from `fandoms` WHERE `name` = "Final Fantasy VII"
UNION 
SELECT "Wedge", `id` from `fandoms` WHERE `name` = "Final Fantasy VII"
UNION 
SELECT "Jessie", `id` from `fandoms` WHERE `name` = "Final Fantasy VII"
UNION 
SELECT "Marlene Wallace", `id` from `fandoms` WHERE `name` = "Final Fantasy VII"
UNION 
SELECT "Denzel", `id` from `fandoms` WHERE `name` = "Final Fantasy VII"
UNION 
SELECT "Zack Fair", `id` from `fandoms` WHERE `name` = "Final Fantasy VII"
UNION
SELECT "Zangan", `id` from `fandoms` WHERE `name` = "Final Fantasy VII"
UNION /************************************************************************************************************************************/
SELECT "Yuna", `id` from `fandoms` WHERE `name` = "Final Fantasy X / X-2"
UNION 
SELECT "Tidus", `id` from `fandoms` WHERE `name` = "Final Fantasy X / X-2"
UNION 
SELECT "Wakka", `id` from `fandoms` WHERE `name` = "Final Fantasy X / X-2"
UNION 
SELECT "Lulu", `id` from `fandoms` WHERE `name` = "Final Fantasy X / X-2"
UNION 
SELECT "Kimahri Ronso", `id` from `fandoms` WHERE `name` = "Final Fantasy X / X-2"
UNION 
SELECT "Auron", `id` from `fandoms` WHERE `name` = "Final Fantasy X / X-2"
UNION 
SELECT "Rikku", `id` from `fandoms` WHERE `name` = "Final Fantasy X / X-2"
UNION 
SELECT "OC", `id` from `fandoms` WHERE `name` = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT "Integra Hellsing", `id` from `fandoms` WHERE `name` = "Hellsing"
UNION 
SELECT "Alucard", `id` from `fandoms` WHERE `name` = "Hellsing"
UNION 
SELECT "Seras Victoria", `id` from `fandoms` WHERE `name` = "Hellsing"
UNION 
SELECT "Walter C. Dornez", `id` from `fandoms` WHERE `name` = "Hellsing"
UNION /************************************************************************************************************************************/
SELECT "Harry Potter", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Hermione Granger", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Ronald 'Ron' Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Ginevra 'Ginny' Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Daphne Greengrass", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Fleur Delacour", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Gabrielle Delacour", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Pansy Parkinson", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Luna Lovegood", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Alicia Spinnet", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "William 'Bill' Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Edward 'Teddy' Lupin", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Perceval 'Percy' Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Scorpius Malfoy", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Albus Severus Potter", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "James Sirius Potter", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Lily Luna Potter", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Rose Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Hugo Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Victoire Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Dominique Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Louis Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Molly II Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Lucy Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Roxanne Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Frederick II Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Nymphadora Tonks", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Neville Longbottom", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Dean Thomas", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Seamus Finnigan", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "James Potter", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Sirius Black", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Lily Evans Potter", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Remus Lupin", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Peter Pettigrow", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Draco Malfoy", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Angelina Johnson", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Katie Bell", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Frederick 'Fred' Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "George Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Oliver Wood", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Lavender Brown", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Parvati Patil", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Padma Patil", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Terry Boot", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Kingsley Shacklebolt", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Charles 'Charlie' Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Blaise Zabini", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Rita Skeeter", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Gawain Robards", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Milicent Bulstrode", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Hannah Abbott", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Susan Bones", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Romilda Vane", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Lee Jordan", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Narcissa Black Malfoy", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Tom Elvis Jedusor | Voldemort", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Lucius Malfoy", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Rodolphus Lestrange", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Rabastan Lestrange", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Bellatrix Black Lestrange", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Alecto Carrow", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Amycus Carrow", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Andromeda Black Tonks", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Cho Chang", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Cedric Diggory", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Viktor Krum", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Cormac McLaggen", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Astoria Greengrass", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Theodore Nott", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Tracey Davis", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Arthur Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Molly Weasley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Augusta Longbottom", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Severus Snape", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Ernie McMillan", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Madam Hooch", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Albus Dumbledore", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Minerva McGonagall", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Filius Flitwick", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Amelia Bones", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Madam Rosmerta", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Moaning Myrtle", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Vernon Dursley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Petunia Evans Dursley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Dudley Dursley", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "John Dawlish", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Delores Umbridge", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Hestia Jones", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Rubeus Hagrid", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Griphook", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Dobby", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Kreacher", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Winky", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Cornelius Fudge", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Poppy Pomfrey", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Fawkes", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Barnabus Cuffe", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Pomona Sprout", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Sybill Trelawney", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Marcus Flint", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Gilderoy Lockhart", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Quirinus Quirell", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Alastor 'Mad-Eye' Moody", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Rufus Scrimgeour", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Arabella Figg", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Bartemius Crouch Sr.", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Bartemius Crouch Jr.", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION 
SELECT "Garrick Ollivander", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION
SELECT "OMC", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION
SELECT "OFC", `id` from `fandoms` WHERE `name` = "Harry Potter - Wizarding World"
UNION /************************************************************************************************************************************/
SELECT "Shepard (F)", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Shepard (M)", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Liara T'Soni", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Garrus Vakarian", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Ashley Williams", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Kaidan Alenko", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Tali'Zorah", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Urdnot Wrex", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "David Anderson", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Nihlus Kryik", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Saren Arterius", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Desolas Arterius", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Steven Hackett", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Shiala", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Benezia T'Soni", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Councilor Tevos", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Councilor Sparatus", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Councilor Valern", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Miranda Lawson", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Jacob Taylor", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Mordin Solus", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Jack", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Urdnot Grunt", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Kasumi Goto", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Zaeed Massani", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Thane Krios", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Samara", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Morinth", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Legion", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "James Vega", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "EDI", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Javik", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Jeff 'Joker' Moreau", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Charles Pressly", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Karin Chakwas", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Greg Adams", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Jack Harper | The Illusive Man", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Kai Leng", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Aria T'Loak", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Sovereign", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION 
SELECT "Harbringer", `id` from `fandoms` WHERE `name` = "Mass Effect"
UNION /************************************************************************************************************************************/
SELECT "Chigusa Nana", `id` from `fandoms` WHERE `name` = "ナナとカオル | Nana to Kaoru"
UNION 
SELECT "Sugimura Kaoru", `id` from `fandoms` WHERE `name` = "ナナとカオル | Nana to Kaoru"
UNION 
SELECT "Tachibana Mitsuko", `id` from `fandoms` WHERE `name` = "ナナとカオル | Nana to Kaoru"
UNION 
SELECT "Tachi Ryoko", `id` from `fandoms` WHERE `name` = "ナナとカオル | Nana to Kaoru"
UNION 
SELECT "Sarashina Shuutarou", `id` from `fandoms` WHERE `name` = "ナナとカオル | Nana to Kaoru"
UNION /************************************************************************************************************************************/
SELECT "Uzumaki Naruto", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Umino Iruka", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Haruno Sakura", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Uchiwa Sasuke", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Hyuuga Hinata", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Hatake Kakashi", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Namikaze Minato", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Uzumaki Kushina", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Inuzuka Kiba", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Aburame Shino", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Sai", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Yamanaka Ino", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Nara Shikamaru", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Akimichi Choji", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Rock Lee", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Hyuuga Neji", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Tenten", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Sabaku no Gaara", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Sabaku no Kankuro", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Sabaku no Temari", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Sarutobi Hiruzen", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Sarutobi Asuma", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Sarutobi Konohamaru", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Yuhi Kurenai", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Maito Gai", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Ebisu", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Orochimaru", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Jiraya", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Senju Tsunade", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Shizune", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Yuki Haku", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Momochi Zabuza", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Jirobo", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Kidomarou", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Sakon", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Ukon", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Tayuya", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Kaguya Kimimaro", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Yakushi Kabuto", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Akasuna no Sasori", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Deidara", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Hidan", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Kakuzu", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Kisame", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Uchiwa Itachi", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Karui", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Samui", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Omoi", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Killer Bee", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Tobi | Uchiwa Obito", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Pein | Uzumaki Nagato", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Konan", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Yahiko", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Zetsu", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Uchiwa Madara", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Senju Hashirama", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Senju Tobirama", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Ootsutsuki Hagoromo", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Ootsutsuki Hamura", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Ootsutsuki Ashura", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Ootsutsuki Indra", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Kyubi | Kurama", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Hachibi | Gyuki", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Nanabi | Chomei", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Rokubi | Saiken", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Gobi | Kokuo", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Yonbi | Songoku", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Sanbi | Isobu", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Nibi | Matatabi", `id` from `fandoms` WHERE `name` = "Naruto"
UNION 
SELECT "Ichibi | Shukaku", `id` from `fandoms` WHERE `name` = "Naruto"
UNION /************************************************************************************************************************************/
SELECT "Tracer | Lena Oxton", `id` from `fandoms` WHERE `name` = "Overwatch"
UNION 
SELECT "Widowmaker | Amelie Lacroix", `id` from `fandoms` WHERE `name` = "Overwatch"
UNION /************************************************************************************************************************************/
SELECT "Taylor Hebert", `id` from `fandoms` WHERE `name` = "Parahumans Series - Wildbow"
UNION /************************************************************************************************************************************/
SELECT "James Raynor", `id` from `fandoms` WHERE `name` = "Starcraft"
UNION 
SELECT "Sarah Kerrigan", `id` from `fandoms` WHERE `name` = "Starcraft"
UNION 
SELECT "Artanis", `id` from `fandoms` WHERE `name` = "Starcraft"
UNION 
SELECT "Zeratul", `id` from `fandoms` WHERE `name` = "Starcraft"
UNION 
SELECT "Tassadar", `id` from `fandoms` WHERE `name` = "Starcraft"
UNION 
SELECT "Matt Horner", `id` from `fandoms` WHERE `name` = "Starcraft"
UNION 
SELECT "November 'Nova' Terra", `id` from `fandoms` WHERE `name` = "Starcraft"
UNION 
SELECT "Acturus Mengsk", `id` from `fandoms` WHERE `name` = "Starcraft"
UNION 
SELECT "Valerian Mengsk", `id` from `fandoms` WHERE `name` = "Starcraft"
UNION 
SELECT "Gerard Dugalle", `id` from `fandoms` WHERE `name` = "Starcraft"
UNION 
SELECT "Fenix", `id` from `fandoms` WHERE `name` = "Starcraft"
UNION 
SELECT "Raszagal", `id` from `fandoms` WHERE `name` = "Starcraft"
UNION 
SELECT "Tychus Findlay", `id` from `fandoms` WHERE `name` = "Starcraft"
UNION 
SELECT "Samir Duran", `id` from `fandoms` WHERE `name` = "Starcraft"
UNION /************************************************************************************************************************************/
SELECT "Geralt z Rivii | Geralt of Rivia", `id` from `fandoms` WHERE `name` = "Wiedźmin | The Witcher"
UNION 
SELECT "Yennefer z Vengerbergu | Yennefer of Vengerberg", `id` from `fandoms` WHERE `name` = "Wiedźmin | The Witcher"
UNION 
SELECT "Lambert", `id` from `fandoms` WHERE `name` = "Wiedźmin | The Witcher"
UNION 
SELECT "Cirilla Fiona Elen Riannon", `id` from `fandoms` WHERE `name` = "Wiedźmin | The Witcher"
UNION 
SELECT "Morvran Voorhis", `id` from `fandoms` WHERE `name` = "Wiedźmin | The Witcher"
UNION 
SELECT "Philippa Eilhart", `id` from `fandoms` WHERE `name` = "Wiedźmin | The Witcher"
UNION 
SELECT "Eskel", `id` from `fandoms` WHERE `name` = "Wiedźmin | The Witcher"
UNION 
SELECT "Vesemir", `id` from `fandoms` WHERE `name` = "Wiedźmin | The Witcher"
UNION 
SELECT "Jaskier | Dandelion", `id` from `fandoms` WHERE `name` = "Wiedźmin | The Witcher"
UNION 
SELECT "Zoltan Chivay", `id` from `fandoms` WHERE `name` = "Wiedźmin | The Witcher"
UNION 
SELECT "Emiel Regis Rohellec Terzieff-Godefroy", `id` from `fandoms` WHERE `name` = "Wiedźmin | The Witcher"
UNION /************************************************************************************************************************************/
SELECT "Shulk", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 1"
UNION 
SELECT "Reyn", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 1"
UNION 
SELECT "Fiorung | Fiora", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 1"
UNION 
SELECT "Carna | Sharla", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 1"
UNION 
SELECT "Dunban", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 1"
UNION 
SELECT "Riki", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 1"
UNION 
SELECT "Melia Ancient | Melia Antiqua", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 1"
UNION 
SELECT "Alvis", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 1"
UNION 
SELECT "Zanza", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 1"
UNION /************************************************************************************************************************************/
SELECT "Rex", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Metsu | Malos", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Hikari | Mythra", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Homura | Pyra", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Seiryuu | Azurda", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Shin | Jin", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Niyah | Nia", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Byakko | Dromarch", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Meleph | Mòrag Ladair", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Kagutsuchi | Brighid", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Hana | Poppi", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Tora", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Yew", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Zuo", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Ozychlyrus Brounev Tantal | Zeke von Genbu", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Saika | Pandoria", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Aquila Paronet Sol Esteriole | Vandham", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Marubeeni | Amalthus", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Yoshitsune | Akhos", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Benkei | Patroka", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION 
SELECT "Satahiko | Mikhail", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 2"
UNION /************************************************************************************************************************************/
SELECT "Mio", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Noah", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Eunie", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Taion", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Sena", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Lanz", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Kagiroi | Glimmer", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Nikol", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Alpha", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "A", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Ghondor Vandham Sr.", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Ghondor Vandham Jr.", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Monica Vandham", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Guernica Vandham", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "M(io)", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "N(oah)", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "C(rys)", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "D(irk)", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "J(oran)", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Ino", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Masha", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Ethel", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Valdi", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Zeon", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Riku", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Manana", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Shidou | Teach", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Gray", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Nina | Alexandria", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Isurugi | Isurd", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Nami | Nimue", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Yuzuriha | Juniper", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Ashera", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Fiona", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "T(riton)", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Cammuravi", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Segiri", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "X", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Y", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Z", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3"
UNION 
SELECT "Miyabi", `id` from `fandoms` WHERE `name` = "Xenoblade Chronicles 3";

/*
 * Relations
 */
DELETE FROM `relations`;
INSERT INTO `relations` (`name`) 
VALUES ("Angelise Ikaruga Misurugi / Tusk"),
("Angelise Ikaruga Misurugi / Hilda Schlievogt / Tusk"),
/************************************************************************************************************************************/
("Cloud Strife / Tifa Lockheart"),
("Cloud Strife / Jessie / Tifa Lockheart"),
("Aerith Gainsborough / Cloud Strife / Tifa Lockheart"),
("Aerith Gainsborough / Zack Fair"),
/************************************************************************************************************************************/
("Tidus / Yuna"),
("Lulu / Wakka"),
("Auron / OC"),
/************************************************************************************************************************************/
("Ginevra 'Ginny' Weasley / Harry Potter"),
("Hermione Granger / Ronald 'Ron' Weasley"),
("Hermione Granger / Luna Lovegood"),
("Ginevra 'Ginny' Weasley / Luna Lovegood"),
("Harry Potter / Luna Lovegood"),
("Ginevra 'Ginny' Weasley / Hermione Granger"),
("Harry Potter / Hermione Granger"),
("Fleur Delacour / William 'Bill' Weasley"),
("Angelina Johnson / George Weasley"),
("James Potter / Lily Evans Potter"),
("Lucius Malfoy / Narcissa Black Malfoy"),
("Cedric Diggory / Cho Chang"),
("Arthur Weasley / Molly Weasley"),
("Harry Potter / OMC"),
("Alicia Spinnet / Ginevra 'Ginny' Weasley"),
("Dean Thomas / Ginevra 'Ginny' Weasley"),
("Ginevra 'Ginny' Weasley / OFC"),
("Albus Severus Potter / Scorpius Malfoy"),
("Harry Potter / Neville Longbottom"),
("Ginevra 'Ginny' Weasley / Harry Potter / OFC"),
("Harry Potter / OFC"),
("Harry Potter / Nymphadora Tonks"),
("Harry Potter / Pansy Parkinson"),
("Draco Malfoy / Pansy Parkinson"),
/************************************************************************************************************************************/
("Liara T'Soni / Shepard (F)"),
("Aria T'Loak / Councilor Tevos"),
/************************************************************************************************************************************/
("Chigusa Nana / Sugimura Kaoru"),
/************************************************************************************************************************************/
("Hyuuga Hinata / Uzumaki Naruto"),
("Haruno Sakura / Uchiwa Sasuke"),
("Namikaze Minato / Uzumaki Kushina"),
("Sai / Yamanaka Ino"),
("Nara Shikamaru / Sabaku no Temari"),
("Akimichi Choji / Karui"),
("Hyuuga Neji / Tenten"),
("Sarutobi Asuma / Yuhi Kurenai"),
/************************************************************************************************************************************/
("Tracer | Lena Oxton / Widowmaker | Amelie Lacroix"),
/************************************************************************************************************************************/
("Geralt z Rivii | Geralt of Rivia / Yennefer z Vengerbergu | Yennefer of Vengerberg"),
/************************************************************************************************************************************/
("Fiorung | Fiora / Melia Ancient | Melia Antiqua / Shulk"),
("Fiorung | Fiora / Shulk"),
/************************************************************************************************************************************/
("Hikari | Mythra / Homura | Pyra / Niyah | Nia / Rex"),
("Hikari | Mythra / Rex"),
("Homura | Pyra / Rex"),
("Niyah | Nia / Rex"),
("Ozychlyrus Brounev Tantal | Zeke von Genbu / Saika | Pandoria"),
/************************************************************************************************************************************/
("Mio / Noah"),
("Eunie / Taion"),
("M(io) / N(oah)");

/*
 * Relations characters
 */
DELETE FROM `relations_characters`; 
INSERT INTO `relations_characters`(`relation_id`, `character_id`) 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Angelise Ikaruga Misurugi / Tusk" AND c.`name` = "Angelise Ikaruga Misurugi"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Angelise Ikaruga Misurugi / Tusk" AND c.`name` = "Tusk"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Angelise Ikaruga Misurugi / Hilda Schlievogt / Tusk" AND c.`name` = "Angelise Ikaruga Misurugi"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Angelise Ikaruga Misurugi / Hilda Schlievogt / Tusk" AND c.`name` = "Hilda Schlievogt"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Angelise Ikaruga Misurugi / Hilda Schlievogt / Tusk" AND c.`name` = "Tusk"
UNION /************************************************************************************************************************************/
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Cloud Strife / Tifa Lockheart" AND c.`name` = "Cloud Strife"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Cloud Strife / Tifa Lockheart" AND c.`name` = "Tifa Lockheart"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Cloud Strife / Jessie / Tifa Lockheart" AND c.`name` = "Cloud Strife"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Cloud Strife / Jessie / Tifa Lockheart" AND c.`name` = "Jessie"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Cloud Strife / Jessie / Tifa Lockheart" AND c.`name` = "Tifa Lockheart"
UNION
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Aerith Gainsborough / Cloud Strife / Tifa Lockheart" AND c.`name` = "Aerith Gainsborough"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Aerith Gainsborough / Cloud Strife / Tifa Lockheart" AND c.`name` = "Cloud Strife"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Aerith Gainsborough / Cloud Strife / Tifa Lockheart" AND c.`name` = "Tifa Lockheart"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Aerith Gainsborough / Zack Fair" AND c.`name` = "Aerith Gainsborough"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Aerith Gainsborough / Zack Fair" AND c.`name` = "Zack Fair"
UNION /************************************************************************************************************************************/
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Tidus / Yuna" AND c.`name` = "Tidus"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Tidus / Yuna" AND c.`name` = "Yuna"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Lulu / Wakka" AND c.`name` = "Lulu"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Lulu / Wakka" AND c.`name` = "Wakka"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Auron / OC" AND c.`name` = "Auron"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c INNER JOIN fandoms f ON f.id = c.fandom_id WHERE r.`name` = "Auron / OC" AND c.`name` = "OC" AND f.`name` = "Final Fantasy X / X-2"
UNION /************************************************************************************************************************************/
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Ginevra 'Ginny' Weasley / Harry Potter" AND c.`name` = "Ginevra 'Ginny' Weasley"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Ginevra 'Ginny' Weasley / Harry Potter" AND c.`name` = "Harry Potter"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Hermione Granger / Luna Lovegood" AND c.`name` = "Hermione Granger"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Hermione Granger / Luna Lovegood" AND c.`name` = "Luna Lovegood"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Ginevra 'Ginny' Weasley / Luna Lovegood" AND c.`name` = "Ginevra 'Ginny' Weasley"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Ginevra 'Ginny' Weasley / Luna Lovegood" AND c.`name` = "Luna Lovegood"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Harry Potter / Luna Lovegood" AND c.`name` = "Harry Potter"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Harry Potter / Luna Lovegood" AND c.`name` = "Luna Lovegood"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Ginevra 'Ginny' Weasley / Hermione Granger" AND c.`name` = "Ginevra 'Ginny' Weasley"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Ginevra 'Ginny' Weasley / Hermione Granger" AND c.`name` = "Hermione Granger"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Harry Potter / Hermione Granger" AND c.`name` = "Harry Potter"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Harry Potter / Hermione Granger" AND c.`name` = "Hermione Granger"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Hermione Granger / Ronald 'Ron' Weasley" AND c.`name` = "Hermione Granger"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Hermione Granger / Ronald 'Ron' Weasley" AND c.`name` = "Ronald 'Ron' Weasley"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Fleur Delacour / William 'Bill' Weasley" AND c.`name` = "Fleur Delacour"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Fleur Delacour / William 'Bill' Weasley" AND c.`name` = "William 'Bill' Weasley"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Angelina Johnson / George Weasley" AND c.`name` = "Angelina Johnson"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Angelina Johnson / George Weasley" AND c.`name` = "George Weasley"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "James Potter / Lily Evans Potter" AND c.`name` = "James Potter"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "James Potter / Lily Evans Potter" AND c.`name` = "Lily Evans Potter"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Lucius Malfoy / Narcissa Black Malfoy" AND c.`name` = "Lucius Malfoy"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Lucius Malfoy / Narcissa Black Malfoy" AND c.`name` = "Narcissa Black Malfoy"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Cedric Diggory / Cho Chang" AND c.`name` = "Cedric Diggory"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Cedric Diggory / Cho Chang" AND c.`name` = "Cho Chang"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Arthur Weasley / Molly Weasley" AND c.`name` = "Arthur Weasley"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Arthur Weasley / Molly Weasley" AND c.`name` = "Molly Weasley"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Harry Potter / OMC" AND c.`name` = "Harry Potter"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Harry Potter / OMC" AND c.`name` = "OMC"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Alicia Spinnet / Ginevra 'Ginny' Weasley" AND c.`name` = "Alicia Spinnet"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Alicia Spinnet / Ginevra 'Ginny' Weasley" AND c.`name` = "Ginevra 'Ginny' Weasley"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Dean Thomas / Ginevra 'Ginny' Weasley" AND c.`name` = "Dean Thomas"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Dean Thomas / Ginevra 'Ginny' Weasley" AND c.`name` = "Ginevra 'Ginny' Weasley"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Ginevra 'Ginny' Weasley / OFC" AND c.`name` = "Ginevra 'Ginny' Weasley"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Ginevra 'Ginny' Weasley / OFC" AND c.`name` = "OFC"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Albus Severus Potter / Scorpius Malfoy" AND c.`name` = "Albus Severus Potter"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Albus Severus Potter / Scorpius Malfoy" AND c.`name` = "Scorpius Malfoy"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Harry Potter / Neville Longbottom" AND c.`name` = "Harry Potter"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Harry Potter / Neville Longbottom" AND c.`name` = "Neville Longbottom"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Ginevra 'Ginny' Weasley / Harry Potter / OFC" AND c.`name` = "Ginevra 'Ginny' Weasley"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Ginevra 'Ginny' Weasley / Harry Potter / OFC" AND c.`name` = "Harry Potter"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Ginevra 'Ginny' Weasley / Harry Potter / OFC" AND c.`name` = "OFC"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Harry Potter / OFC" AND c.`name` = "Harry Potter"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Harry Potter / OFC" AND c.`name` = "OFC"
UNION
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Harry Potter / Nymphadora Tonks" AND c.`name` = "Harry Potter"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Harry Potter / Nymphadora Tonks" AND c.`name` = "Nymphadora Tonks"
UNION
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Harry Potter / Pansy Parkinson" AND c.`name` = "Harry Potter"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Harry Potter / Pansy Parkinson" AND c.`name` = "Pansy Parkinson"
UNION
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Draco Malfoy / Pansy Parkinson" AND c.`name` = "Draco Malfoy"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Draco Malfoy / Pansy Parkinson" AND c.`name` = "Pansy Parkinson"
UNION /************************************************************************************************************************************/
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Liara T'Soni / Shepard (F)" AND c.`name` = "Liara T'Soni"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Liara T'Soni / Shepard (F)" AND c.`name` = "Shepard (F)"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Aria T'Loak / Councilor Tevos" AND c.`name` = "Aria T'Loak"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Aria T'Loak / Councilor Tevos" AND c.`name` = "Councilor Tevos"
UNION /************************************************************************************************************************************/
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Chigusa Nana / Sugimura Kaoru" AND c.`name` = "Chigusa Nana"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Chigusa Nana / Sugimura Kaoru" AND c.`name` = "Sugimura Kaoru"
UNION /************************************************************************************************************************************/
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Hyuuga Hinata / Uzumaki Naruto" AND c.`name` = "Hyuuga Hinata"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Hyuuga Hinata / Uzumaki Naruto" AND c.`name` = "Uzumaki Naruto"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Haruno Sakura / Uchiwa Sasuke" AND c.`name` = "Haruno Sakura"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Haruno Sakura / Uchiwa Sasuke" AND c.`name` = "Uchiwa Sasuke"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Namikaze Minato / Uzumaki Kushina" AND c.`name` = "Namikaze Minato"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Namikaze Minato / Uzumaki Kushina" AND c.`name` = "Uzumaki Kushina"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Sai / Yamanaka Ino" AND c.`name` = "Sai"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Sai / Yamanaka Ino" AND c.`name` = "Yamanaka Ino"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Nara Shikamaru / Sabaku no Temari" AND c.`name` = "Nara Shikamaru"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Nara Shikamaru / Sabaku no Temari" AND c.`name` = "Sabaku no Temari"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Akimichi Choji / Karui" AND c.`name` = "Akimichi Choji"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Akimichi Choji / Karui" AND c.`name` = "Karui"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Hyuuga Neji / Tenten" AND c.`name` = "Hyuuga Neji"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Hyuuga Neji / Tenten" AND c.`name` = "Tenten"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Sarutobi Asuma / Yuhi Kurenai" AND c.`name` = "Sarutobi Asuma"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Sarutobi Asuma / Yuhi Kurenai" AND c.`name` = "Yuhi Kurenai"
UNION /************************************************************************************************************************************/
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Tracer | Lena Oxton / Widowmaker | Amelie Lacroix" AND c.`name` = "Tracer | Lena Oxton"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Tracer | Lena Oxton / Widowmaker | Amelie Lacroix" AND c.`name` = "Widowmaker | Amelie Lacroix"
UNION /************************************************************************************************************************************/
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Geralt z Rivii | Geralt of Rivia / Yennefer z Vengerbergu | Yennefer of Vengerberg" AND c.`name` = "Geralt z Rivii | Geralt of Rivia"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Geralt z Rivii | Geralt of Rivia / Yennefer z Vengerbergu | Yennefer of Vengerberg" AND c.`name` = "Yennefer z Vengerbergu | Yennefer of Vengerberg"
UNION /************************************************************************************************************************************/
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Fiorung | Fiora / Melia Ancient | Melia Antiqua / Shulk" AND c.`name` = "Fiorung | Fiora"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Fiorung | Fiora / Melia Ancient | Melia Antiqua / Shulk" AND c.`name` = "Melia Ancient | Melia Antiqua"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Fiorung | Fiora / Melia Ancient | Melia Antiqua / Shulk" AND c.`name` = "Shulk"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Fiorung | Fiora / Shulk" AND c.`name` = "Fiorung | Fiora"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Fiorung | Fiora / Shulk" AND c.`name` = "Shulk"
UNION /************************************************************************************************************************************/
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Hikari | Mythra / Homura | Pyra / Niyah | Nia / Rex" AND c.`name` = "Hikari | Mythra"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Hikari | Mythra / Homura | Pyra / Niyah | Nia / Rex" AND c.`name` = "Homura | Pyra"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Hikari | Mythra / Homura | Pyra / Niyah | Nia / Rex" AND c.`name` = "Niyah | Nia"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Hikari | Mythra / Homura | Pyra / Niyah | Nia / Rex" AND c.`name` = "Rex"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Hikari | Mythra / Rex" AND c.`name` = "Hikari | Mythra"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Hikari | Mythra / Rex" AND c.`name` = "Rex"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Homura | Pyra / Rex" AND c.`name` = "Homura | Pyra"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Homura | Pyra / Rex" AND c.`name` = "Rex"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Niyah | Nia / Rex" AND c.`name` = "Niyah | Nia"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Niyah | Nia / Rex" AND c.`name` = "Rex"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Ozychlyrus Brounev Tantal | Zeke von Genbu / Saika | Pandoria" AND c.`name` = "Ozychlyrus Brounev Tantal | Zeke von Genbu"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Ozychlyrus Brounev Tantal | Zeke von Genbu / Saika | Pandoria" AND c.`name` = "Saika | Pandoria"
UNION /************************************************************************************************************************************/
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Mio / Noah" AND c.`name` = "Mio"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Mio / Noah" AND c.`name` = "Noah"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Eunie / Taion" AND c.`name` = "Eunie"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "Eunie / Taion" AND c.`name` = "Taion"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "M(io) / N(oah)" AND c.`name` = "M(io)"
UNION 
SELECT r.`id`, c.`id` FROM `relations` r, `characters` c WHERE r.`name` = "M(io) / N(oah)" AND c.`name` = "N(oah)";