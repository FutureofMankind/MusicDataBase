--название и продолжительность самого длительного трека
SELECT name FROM Tracks
WHERE duration = (SELECT MAX(duration) FROM Tracks);

--название треков, продолжительность которых не менее 3,5 минуты
SELECT name FROM Tracks
WHERE duration >= '3:30';

--названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name, year FROM Compilations
WHERE year BETWEEN 2018 AND 2020;

--исполнители, чье имя состоит из 1 слова
SELECT name FROM Artists
WHERE name NOT LIKE '% %';

--название треков, которые содержат слово "мой"/"my"
SELECT name FROM Tracks
WHERE name ILIKE 'my %' OR name ILIKE '% my' OR name ILIKE '% my %' OR name = 'my'
OR name ILIKE 'мой %' OR name ILIKE '% мой' OR name ILIKE '% мой %' OR name = 'мой';

--Количество исполнителей в каждом жанре
select name, count(Artist_id) from Genres 
join GenresArtist on Genres.Genre_id = GenresArtists.Genre_id
group by name;

--Количество треков, вошедших в альбомы 2019-2020 годов
select count(name) from Tracks
join Albums on Tracks.Album_id = Albums.Album_id
where album_year >= '20190101' and album_year <= '20201231';

--Средняя продолжительность треков по каждому альбому
select Album_name, avg(duration) from Tracks
join Albums on Tracks.Album_id = Albums.Album_id
group by Album_name;

--Все исполнители, которые не выпустили альбомы в 2020 году
SELECT artists.name FROM Artists
JOIN
    (SELECT DISTINCT artists.id, artists.name FROM Artists
     join ArtistsAlbums on Artists.id = ArtistsAlbums.Artist_id
     join Albums on Albums.id = ArtistsAlbums.Album_id
     WHERE albums.year = 2020)
     AS artists2020
ON artists.id = artists2020.id
WHERE artists2020.id IS NULL;

--Названия сборников, в которых присутствует конкретный исполнитель (Cradle of Filth)
select compilations.name from Compilations
join CompilationsTracks on CompilationsTracks.Compilation_id = Compilations.id
join Tracks on CompilationsTracks.Track_id = Tracks.id
join Albums on Tracks.Album_id = Albums.id
join ArtistsAlbums on ArtistsAlbums.Album_id = Albums.id
join Artists on ArtistsAlbums.Artist_id = Artists.id
where Artists.name = 'Cradle of Filth'