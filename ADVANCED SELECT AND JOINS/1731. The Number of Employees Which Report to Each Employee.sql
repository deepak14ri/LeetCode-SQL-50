# Write your MySQL query statement below
SELECT m.employee_id,
        m.name,
        count(e.employee_id) AS reports_count,
        round(avg(e.age)) AS average_age
FROM
    employees e JOIN employees m
ON
    e.reports_to = m.employee_id
GROUP BY 
    employee_id 
ORDER BY
    employee_id;