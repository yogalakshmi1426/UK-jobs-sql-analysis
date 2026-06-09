-- Query 11: UK specific market analysis
-- Business question: What does the UK market look like for me?

SELECT job_title,
COUNT(*) AS total,
ROUND(AVG(salary_in_usd), 0) AS avg_salary
FROM jobs
WHERE company_location = 'United Kingdom'
GROUP BY job_title
HAVING COUNT(*) > 3
ORDER BY total DESC
LIMIT 10;

-- Finding: Data Analyst second most hired in UK with 85 roles
-- at $88,412 average (approx £70,000). Active UK market.
