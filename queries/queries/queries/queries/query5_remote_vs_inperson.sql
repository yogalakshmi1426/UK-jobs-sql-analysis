-- Query 5: Remote vs Hybrid vs In-person -- who pays more?
-- Business question: Does remote work mean higher salary?

SELECT work_setting,
ROUND(AVG(salary_in_usd), 0) AS avg_salary,
COUNT(*) AS total
FROM jobs
GROUP BY work_setting
ORDER BY avg_salary DESC;

-- Finding: In-person pays most at $155,524. Remote is close 
-- at $144,996. Hybrid significantly lower at $88,912.
-- Remote does not automatically mean higher pay.
