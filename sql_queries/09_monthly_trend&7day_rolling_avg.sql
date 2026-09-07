--MONTHLY TREND + 7-DAY ROLLING AVERAGE (per mine)

SELECT
    mine,
    prod_date,
    actual_tonnes,
    ROUND(AVG(actual_tonnes) OVER (
        PARTITION BY mine
        ORDER BY prod_date
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ), 1) AS rolling_7day_avg
FROM production
ORDER BY mine, prod_date;
