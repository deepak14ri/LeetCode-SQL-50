-- Write your PostgreSQL query statement below
SELECT name from Customer
WHERE referee_id is null or referee_id != 2;
