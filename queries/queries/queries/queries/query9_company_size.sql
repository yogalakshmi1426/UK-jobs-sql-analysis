-- Query 9: Which company size hires most?
-- Business question: Should I target startups or corporations?

SELECT company_size,
COUNT(*) AS total,
ROUND(AVG(salary_in_usd), 0) AS avg_salary
FROM jobs
GROUP BY company_size
ORDER BY total DESC;

-- Finding: Medium companies dominate with 8,448 roles at 
-- $152,237 average. Target medium sized companies first.
