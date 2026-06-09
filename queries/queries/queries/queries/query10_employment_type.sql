-- Query 10: Full-time vs contract vs freelance -- which pays more?
-- Business question: Are contract roles worth pursuing?

SELECT employment_type,
COUNT(*) AS total,
ROUND(AVG(salary_in_usd), 0) AS avg_salary
FROM jobs
GROUP BY employment_type
ORDER BY avg_salary DESC;

-- Finding: Full-time dominates with 9,310 roles at $150,630.
-- Contract pays less at $117,109. Target full-time roles.
