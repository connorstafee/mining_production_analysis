--Dispatch Vs Stockpile

SELECT date,
       SUM(dispatch_tonnes) AS total_dispatch,
       SUM(stockpile_tonnes) AS total_stockpile,
       (SUM(dispatch_tonnes) - SUM(stockpile_tonnes)) AS difference
FROM production
GROUP BY date
HAVING SUM(dispatch_tonnes) > SUM(stockpile_tonnes)
ORDER BY date;
