--Equipment efficiency

SELECT mine,
       ROUND(AVG(equipment_availability_pct),2) AS avg_availability
FROM production
GROUP BY mine
ORDER BY avg_availability DESC;
