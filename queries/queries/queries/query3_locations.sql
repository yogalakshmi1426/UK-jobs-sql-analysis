-- Query 3: Which locations have the most data roles?
-- Business question: Where should I target my job search?

SELECT company_location, COUNT(*) AS total
FROM jobs
GROUP BY company_location
ORDER BY total DESC
LIMIT 15;

-- Finding: United States dominates with 8,132 roles. 
-- United Kingdom is second with 449 -- highest in Europe.
-- Germany has 72, France 50, Netherlands 21.
