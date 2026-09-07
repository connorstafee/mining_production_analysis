--Grade contribution

SELECT grade,
       SUM(actual_tonnes) AS total_actual,
       ROUND(SUM(actual_tonnes) * 100.0 / (SELECT SUM(actual_tonnes) FROM production),2) AS contribution_pct
FROM production
GROUP BY grade
ORDER BY total_actual DESC;
