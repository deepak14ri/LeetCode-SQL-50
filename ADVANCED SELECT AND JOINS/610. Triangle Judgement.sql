# Write your MySQL query statement below
-- Using the triangle inequality:

-- x + y > z
-- x + z > y
-- y + z > x

SELECT x, y, z, CASE WHEN (x+y) > z AND (x+z) > y AND (y+z) > x THEN
'Yes' ELSE 'No' END AS triangle
FROM Triangle;
