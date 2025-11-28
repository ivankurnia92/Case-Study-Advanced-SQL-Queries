SELECT 
    h.hacker_id, 
    h.name, SUM(s.score) AS total_score 
FROM 
    (
        SELECT 
            hacker_id, 
            challenge_id, 
            max(score) AS score
        FROM Submissions 
        GROUP BY hacker_id, challenge_id) AS s 
JOIN Hackers AS h ON s.hacker_id = h.hacker_id
GROUP BY h.hacker_id, h.name
HAVING total_score > 0
ORDER BY total_score DESC, h.hacker_id;
