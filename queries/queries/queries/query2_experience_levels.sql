-- Query 2: Which experience levels are hiring and what do they pay?
-- Business question: Is there room for entry level candidates?

SELECT experience_level, COUNT(*) AS total,
ROUND(AVG(salary_in_usd), 0) AS avg_salary
FROM jobs
GROUP BY experience_level
ORDER BY total DESC;

-- Finding: Senior dominates with 6,709 roles. Entry-level has 
-- 496 roles at $88,535 average. Jump from entry to mid-level 
-- adds $29,000 -- highest return investment for a junior analyst.
