SELECT ar.Name AS Artist, SUM(il.UnitPrice * Quantity) AS Revenue, 
COUNT(*) AS Sales
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId 
JOIN Album a ON t.AlbumId = a.AlbumId 
JOIN Artist ar ON a.ArtistId = ar.ArtistId
GROUP BY ar.ArtistId
ORDER BY Revenue DESC
LIMIT 10;

