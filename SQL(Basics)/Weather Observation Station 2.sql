SELECT 
    ROUND(SUM(lat_n), 2) as 'lat_n_sum', 
    ROUND(SUM(long_w), 2) as 'long_w_sum'
FROM station;