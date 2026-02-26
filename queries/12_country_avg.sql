SELECT BillingCountry, AVG(Total) AS AverageCustomerSpend
FROM Invoice 
GROUP BY BillingCountry
ORDER BY AverageCustomerSpend DESC
;