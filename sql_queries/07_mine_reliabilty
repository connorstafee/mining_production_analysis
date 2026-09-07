--Mine reliability

SELECT mine,
       ROUND(AVG(ABS(target_tonnes - actual_tonnes)),2) AS avg_variance
FROM production
GROUP BY mine
ORDER BY avg_variance ASC;
