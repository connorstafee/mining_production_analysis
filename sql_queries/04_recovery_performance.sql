--Recovery performance

SELECT department,
       ROUND(AVG(recovery_pct),2) AS avg_recovery
FROM production
GROUP BY department
ORDER BY avg_recovery DESC;
