-- Question: Who are the top 10 customers by total spending?

SELECT i.CustomerId, (c.FirstName || ' ' || c.LastName) AS Name, SUM(i.Total) AS CustomerSpend, c.Country 
FROM Invoice i
JOIN Customer c 
ON i.CustomerId = c.CustomerId
GROUP BY i.CustomerId
ORDER BY CustomerSpend DESC
LIMIT 10;

