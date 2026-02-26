SELECT e.EmployeeId, e.FirstName || ' ' || e.LastName AS Name, SUM(i.Total) RevenueSupport
FROM Invoice i 
JOIN Customer c ON i.CustomerId = c.CustomerId 
JOIN Employee e ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId
ORDER BY RevenueSupport DESC;