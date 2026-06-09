-- Query 6: Which sectors are hiring most?
-- Business question: Which industry should I target?

SELECT job_category,
COUNT(*) AS total,
ROUND(AVG(salary_in_usd), 0) AS avg_salary
FROM jobs
GROUP BY job_category
ORDER BY total DESC
LIMIT 10;

-- Finding: Data Science leads with 3,014 roles. Data Analysis 
-- third with 1,457 roles at $108,506. ML and AI pays most at $178,926.
