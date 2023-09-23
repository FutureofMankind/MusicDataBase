INSERT INTO Genres(name) values
('Blues'),
('Country'),
('Heavy Metal'),
('Jazz'),
('Classic Rock');

INSERT INTO Artists(name) values
('Avenged Sevenfold'),
('Megadeth'),
('Johnny Cash'),
('Gary Moore'),
('The Cure'),
('Five Finger Death Punch'),
('Слот'),
('Cradle of Filth'),
('El Di Meola');

INSERT INTO GenresArtists values
(1, 2),
(1, 3),
(2, 3),
(3, 1),
(3, 2),
(3, 5),
(3, 8),
(3, 7),
(4, 9),
(5, 5);

INSERT INTO Albums(name, year) values
('Got Your Six', 2015),
('Nightmare', 2010),
('Nymphetamine', 2004),
('American Capitalist', 2011),
('Septima', 2016),
('Endgame', 2009),
('F8', 2020),
('Johnny 99', 1983),
('After Hours', 1992),
('The Top', 1984),
('Ин да хаос. Re-play', 2020),
('Consequence of Chaos', 2006),
('Across the Universe', 2020);

INSERT INTO ArtistsAlbums values
(1, 6),
(2, 1),
(3, 8),
(4, 6),
(5, 7),
(6, 2),
(7, 6),
(8, 3),
(9, 4),
(10, 5),
(11, 7),
(12, 9),
(13, 9);

INSERT INTO Tracks(name, album_id, duration) values
('No Sudden Movement', 1, '3:21'),
('Hell to Pay', 1, '3:09'),
('Question Everything', 1, '5:06'),
('Buried Alive', 2, '6:44'),
('God Hates Us', 2, '5:19'),
('Gabrielle', 3, '5:27'),
('Absinthe with Faust', 3, '5:14'),
('Mother of Abominations', 3, '7:33'),
('Back for More', 4, '3:22'),
('Реинкарнация', 5, '3:51'),
('Круги на воде', 5, '4:41'),
('The Right to Go Insane', 6, '4:20'),
('Inside Out', 7, '3:46'),
('Darkness Settles In', 7, '4:41'),
('Making Monsters', 7, '3:03'),
('Highway Patrolman', 8, '5:17'),
('Cold Day in Hell', 9, '4:28'),
('The Empty World', 10, '2:36'),
('Хаос', 11, '3:22'),
('Red Moon', 12, '4:30'),
('Norwegian Wood', 13, '6:06');

INSERT INTO Compilations(name, year) values
('A Decade of Destruction, Volume 2', 2020),
('Warheads on Foreheads', 2019),
('The Best Of…', 2010),
('Lovecraft & Witch Hearts', 2002);

INSERT INTO CompilationsTracks values
(1, 2),
(2, 12),
(3, 19),
(4, 6);