Mine x Shift attainment ranking

SELECT
    mine,
    shift,
    ROUND(SUM(actual_tonnes) * 100.0 / SUM(target_tonnes), 2) AS attainment_pct,
    RANK() OVER (ORDER BY SUM(actual_tonnes) * 1.0 / SUM(target_tonnes) DESC) AS performance_rank
FROM production
GROUP BY mine, shift
ORDER BY performance_rank;
