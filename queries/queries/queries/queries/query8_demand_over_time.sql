-- Query 8: Is demand growing or shrinking over time?
-- Business question: Is now a good time to enter data field?

SELECT work_year,
COUNT(*) AS total_jobs,
ROUND(AVG(salary_in_usd), 0) AS avg_salary
FROM jobs
GROUP BY work_year
ORDER BY work_year ASC;

-- Finding: Jobs grew from 71 in 2020 to 7,453 in 2023 -- 
-- a 10,392% increase. Salary grew 47% in same period.
