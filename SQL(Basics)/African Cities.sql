select s.NAME from CITY s JOIN COUNTRY c 
    where s.COUNTRYCODE=c.CODE and c.CONTINENT='Africa'