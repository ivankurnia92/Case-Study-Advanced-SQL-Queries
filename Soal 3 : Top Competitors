SELECT
    h.hacker_id, 
    h.name 
FROM Submissions AS s 
    JOIN Hackers AS h ON s.hacker_id = h.hacker_id 
    JOIN Challenges AS c ON s.challenge_id = c.challenge_id
    JOIN Difficulty AS d ON c.Difficulty_level = d.Difficulty_level
WHERE s.score = d.score 
GROUP BY h.hacker_id, h.name 
HAVING count(h.hacker_id) > 1
ORDER BY count(h.hacker_id) desc, h.hacker_id;
