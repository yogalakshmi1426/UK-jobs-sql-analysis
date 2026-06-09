-- Query 1: Which job titles appear most in the market?
-- Business question: Where is the real demand in the job market?

SELECT job_title, COUNT(*) AS total
FROM jobs
GROUP BY job_title
ORDER BY total DESC
LIMIT 10;

-- Finding: Data Engineer leads with 2,195 roles. Data Analyst 
-- is third with 1,388 -- confirming strong demand for this role.
