# Write your MySQL query statement below
SELECT 
    CASE
        WHEN id = (SELECT MAX(id) FROM seat) AND id % 2 = 1
            THEN id
        WHEN id % 2 = 1
            THEN id + 1
        WHEN id % 2 = 0
            THEN id - 1
    END as id, student
FROM seat
ORDER BY id;

