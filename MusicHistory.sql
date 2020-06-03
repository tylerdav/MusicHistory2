--1.

--SELECT
--	Id,
--	Label
--FROM Genre

--2.

--SELECT
--	Id,
--	ArtistName,
--	YearEstablished
--From Artist
--ORDER BY ArtistName

--3.

--SELECT
--	Title,
--	ArtistId
--FROM Song

--5.

--SELECT Album.Title, Artist.ArtistName, Genre.Label
--FROM Album album
--LEFT JOIN Artist artist ON artist.Id = album.ArtistId
--LEFT JOIN Genre genre ON genre.Id = album.GenreId
--Where Album.GenreId = 2 OR Album.GenreId = 4

--6.

--SELECT 
--	Album.Title
--FROM Album album
--LEFT JOIN Song song ON album.id = song.AlbumId
--WHERE song.AlbumId IS NULL;

--7.

--INSERT INTO Artist (ArtistName, YearEstablished) 
--VALUES ('ACDC', 1973);

--8.

--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
--VALUES ('Back in Black', '7/25/1980', 2268, 'Atlantic Records', 28, 2);

--9.

--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) 
--VALUES ('Back in Black', 61, '7/25/1980', 2, 28, 23);

--10.

--SELECT
--	Song.Title AS 'Song Title', 
--	Album.Title AS 'Album Title', 
--	Artist.ArtistName AS 'Artist'
--FROM Album album
--LEFT JOIN Song song ON album.id = song.AlbumId
--LEFT JOIN Artist artist ON artist.Id = album.ArtistId
--Where Album.Id = 23

--11.

--SELECT Album.Title, COUNT(song.Id) AS 'Song Count'
--FROM Album album
--JOIN Song song ON album.id = song.AlbumId
--GROUP BY (Album.Title)

--12.

--SELECT Artist.ArtistName, COUNT(song.Id) AS 'Song Count'
--From Artist artist
--JOIN Song song ON artist.id = song.ArtistId
--GROUP BY (Artist.ArtistName)

--13.

--SELECT genre.Label, COUNT(song.Id) AS 'Song Count' 
--FROM Genre genre
--INNER JOIN Song song ON song.GenreId = genre.Id
--GROUP BY (genre.Label)
--ORDER BY COUNT(song.Id) DESC

--14.

--SELECT
--	artist.ArtistName,
--	COUNT(album.Label) AS 'RecordLabels'
--FROM Artist artist
--LEFT JOIN Album album ON album.artistId = artist.Id
--GROUP BY (artist.ArtistName)
--HAVING COUNT(album.Label) > 1;

--15.

--SELECT Album.Title, Album.AlbumLength
--FROM Album
--WHERE AlbumLength = (SELECT MAX(AlbumLength) FROM Album)

--16.

--SELECT Song.Title, Song.SongLength
--FROM Song
--WHERE SongLength = (SELECT MAX(SongLength) FROM Song)

--17.

SELECT song.Title, song.SongLength, Album.Title AS 'Album Title'
FROM Song song
LEFT JOIN Album album ON album.Id = Song.AlbumId
WHERE SongLength = (SELECT MAX(SongLength) FROM Song)