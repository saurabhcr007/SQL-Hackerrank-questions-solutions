(select CITY, length(CITY) from STATION order by length(CITY) ASC, CITY ASC LIMIT 1)
 UNION
(select CITY, length(CITY) from STATION order by length(CITY) DESC, CITY DESC LIMIT 1)