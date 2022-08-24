select distinct(CITY) from STATION 
    WHERE lower(substr(CITY,1,1)) in ('a','e','i','o','u')