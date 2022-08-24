SELECT s.Name
FROM Friends f
INNER JOIN Students s
ON f.ID = s.ID
INNER JOIN Packages p
ON s.ID = p.ID
INNER JOIN Packages p1
ON f.Friend_ID = p1.ID
WHERE p1.Salary > p.Salary
ORDER BY p1.Salary