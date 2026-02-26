SELECT SUM(Total)/COUNT(DISTINCT CustomerId) AS AverageCustomerSpend
FROM Invoice;