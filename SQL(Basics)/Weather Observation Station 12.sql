select distinct(CITY) from STATION 
    where lower(substr(CITY,1,1)) in ('b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z') and 
        lower(substr(CITY,-1,1))in('b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z')