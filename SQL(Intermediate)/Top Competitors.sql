select h.hacker_id,name from hackers h 
join Difficulty d 
join challenges c 
join submissions s 
on h.hacker_id=s.hacker_id and d.difficulty_level=c.difficulty_level and c.challenge_id=s.challenge_id 
where d.difficulty_level=c.difficulty_level and c.challenge_id=s.challenge_id and s.score=d.score
group by h.hacker_id, h.name
having count(s.hacker_id) > 1
order by count(s.hacker_id) desc, s.hacker_id asc