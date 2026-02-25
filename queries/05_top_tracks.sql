-- Question: Which tracks have sold the most?

SELECT il.TrackId, t.Name AS Name, ar.Name AS Artist,
a.title AS Album,
SUM(il.UnitPrice * il.Quantity) AS Revenue
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album a ON t.AlbumId = a.AlbumId 
JOIN Artist ar ON a.ArtistId = ar.ArtistId
GROUP BY il.TrackId
ORDER BY Revenue DESC
LIMIT 10; 
