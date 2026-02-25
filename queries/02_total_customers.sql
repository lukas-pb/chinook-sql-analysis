-- Question: How many unique customers have made purchases?

SELECT COUNT(DISTINCT CustomerId)
FROM Invoice;