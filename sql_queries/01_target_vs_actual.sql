-- Production Achievement 

SELECT mine,
       SUM(target_tonnes) AS total_target,
       SUM(actual_tonnes) AS total_actual,
       ROUND(SUM(actual_tonnes)/SUM(target_tonnes)*100,2) AS achievement_pct
FROM production
GROUP BY mine
ORDER BY achievement_pct DESC;
