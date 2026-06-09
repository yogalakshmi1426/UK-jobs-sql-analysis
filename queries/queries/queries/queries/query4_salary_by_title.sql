-- Query 4: What is the average salary by job title?
-- Business question: What salary should I expect and target?

SELECT job_title, 
ROUND(AVG(salary_in_usd), 0) AS avg_salary,
COUNT(*) AS total
FROM jobs
GROUP BY job_title
HAVING COUNT(*) > 10
ORDER BY avg_salary DESC
LIMIT 15;

-- Specific Data Analyst salary check:
SELECT job_title,
ROUND(AVG(salary_in_usd), 0) AS avg_salary,
COUNT(*) AS total
FROM jobs
WHERE job_title = 'Data Analyst'
GROUP BY job_title;

-- Finding: AI Architect highest at $250,328. 
-- Data Analyst averages $109,911 across 1,388 postings.
-- Clear upward path into ML roles paying $180,000+.
