SELECT c.class
FROM class c
JOIN score s ON c.name = s.name
WHERE s.score = (
    SELECT DISTINCT score
    FROM score
    ORDER BY score DESC
    LIMIT 1 OFFSET 1
);
