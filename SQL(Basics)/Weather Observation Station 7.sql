select distinct(CITY) from STATION 
    where lower(substr(CITY,-1,1)) in ('a','e','i','o','u')