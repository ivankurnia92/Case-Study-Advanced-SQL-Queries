WITH students_cte AS
    (SELECT
        s.Name,
        g.Grade, 
        s.Marks
    FROM students s
    INNER JOIN grades g
    ON  g.max_mark >= s.marks and  s.marks  >= g.min_mark)

SELECT 
    CASE 
    WHEN grade >= 8 THEN name 
    ELSE NULL
    END AS Name, 
    Grade, 
    Marks 
FROM students_cte
ORDER BY Grade DESC,  Name ASC, Marks ASC;
