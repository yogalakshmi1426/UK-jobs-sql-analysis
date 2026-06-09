-- Query 7: Salary jump from entry level to senior
-- Business question: How much does experience pay off?

SELECT experience_level,
ROUND(AVG(salary_in_usd), 0) AS avg_salary,
COUNT(*) AS total,
CASE 
  WHEN AVG(salary_in_usd) < 100000 THEN 'Lower band'
  WHEN AVG(salary_in_usd) < 150000 THEN 'Mid band'
  ELSE 'Upper band'
END AS salary_band
FROM jobs
GROUP BY experience_level
ORDER BY avg_salary ASC;

-- Finding: Entry $88,535 to Senior $162,356 -- total jump of 
-- $74,000. Biggest single jump is entry to mid at $29,000.
