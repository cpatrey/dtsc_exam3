SELECT *
FROM customer;

SELECT LastName, FirstName, Address
FROM Employee;

SELECT t1.Name, t2.Title
FROM Track AS t1
LEFT JOIN Album AS t2
ON t1.AlbumId = t2.AlbumId;

SELECT t.Name, a.Title, r.Name
FROM Track AS t
LEFT JOIN Album AS a
ON t.AlbumId = a.AlbumId
LEFT JOIN Artist AS r
ON r.ArtistId = a.ArtistId
WHERE GenreName = 'Punk';

--add the syntax to select composers for the artist 'Insane Clown Posse'

SELECT Composer
FROM Track
WHERE AlbumId IN(SELECT AlbumId
				FROM Album
				WHERE ArtistId IN(SELECT ArtistId
								 FROM Artist
								 WHERE Name ='Insane Clown Posse'))

