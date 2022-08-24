select concat(Name,concat("(",concat(left(Occupation,1),")"))) 
    from OCCUPATIONS 
    order by Name;
    SELECT "There are a total of", COUNT(Occupation), concat(LOWER(Occupation),"s.") 
    FROM OCCUPATIONS 
    GROUP BY Occupation 
    ORDER BY COUNT(Occupation),
    Occupation ASC;
