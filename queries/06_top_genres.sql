SELECT g.Name AS Genre, SUM(il.UnitPrice * il.Quantity) AS Revenue
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId 
JOIN Genre g ON t.GenreId = g.GenreId
GROUP BY g.GenreId
ORDER BY Revenue DESC
LIMIT 5;  