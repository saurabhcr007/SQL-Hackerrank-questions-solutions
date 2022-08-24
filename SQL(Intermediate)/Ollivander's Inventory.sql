SELECT w.id, wp.age, w.coins_needed, w.power
FROM wands AS w
LEFT JOIN wands_property AS wp
ON w.code = wp.code
WHERE wp.is_evil = 0 AND 
      w.coins_needed IN (SELECT MIN(wa.coins_needed)
                         FROM wands AS wa
                         WHERE wa.code = wp.code
                         GROUP BY wa.power)
ORDER BY power DESC, age DESC