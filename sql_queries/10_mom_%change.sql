--MONTH-OVER-MONTH % CHANGE IN OUTPUT

SELECT
    mine,
    DATE_FORMAT(prod_date, '%Y-%m-01') AS month,
    SUM(actual_tonnes) AS monthly_actual,
    LAG(SUM(actual_tonnes)) OVER (
        PARTITION BY mine ORDER BY DATE_FORMAT(prod_date, '%Y-%m-01')
    ) AS prev_month_actual,
    ROUND(
        (SUM(actual_tonnes) - LAG(SUM(actual_tonnes)) OVER (
            PARTITION BY mine ORDER BY DATE_FORMAT(prod_date, '%Y-%m-01')
        )) * 100.0 / NULLIF(LAG(SUM(actual_tonnes)) OVER (
            PARTITION BY mine ORDER BY DATE_FORMAT(prod_date, '%Y-%m-01')
        ), 0), 2
    ) AS mom_pct_change
FROM production
GROUP BY mine, DATE_FORMAT(prod_date, '%Y-%m-01')
ORDER BY mine, month;
