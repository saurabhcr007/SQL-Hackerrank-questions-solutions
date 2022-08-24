SELECT t2.hacker_id, t1.name, COUNT(t2.challenge_id) AS challenges
FROM Hackers t1
JOIN Challenges t2 on t1.hacker_id = t2.hacker_id
GROUP BY 1, 2
HAVING challenges IN 
    (SELECT MAX(chal_count) FROM
    (SELECT COUNT(challenge_id) AS chal_count FROM Challenges
    GROUP BY hacker_id) AS t3)
    OR challenges IN
    (SELECT chal_count FROM
    (SELECT COUNT(challenge_id) AS chal_count FROM Challenges
    GROUP BY hacker_id) AS t4 
    GROUP BY 1 HAVING COUNT(chal_count) = 1)
ORDER BY 3 DESC, 1