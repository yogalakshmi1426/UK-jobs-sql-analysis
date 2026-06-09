-- Query 12: Which categories have most entry level roles?
-- Business question: Where should I focus as a junior?

SELECT job_category,
COUNT(*) AS total,
ROUND(AVG(salary_in_usd), 0) AS avg_salary
FROM jobs
WHERE experience_level = 'Entry-level'
GROUP BY job_category
ORDER BY total DESC
LIMIT 10;

-- Finding: Data Analysis has 140 entry level roles. 
-- Data Science has more at 164 but lower entry salary.
-- Data Analysis is the strongest entry point.
