SELECT ROUND(LAT_N, 4) FROM (SELECT LAT_N, ROW_NUMBER() OVER(ORDER BY LAT_N) AS RN FROM station) AS a 
    WHERE RN=CEIL((SELECT COUNT(*) FROM station)/2);