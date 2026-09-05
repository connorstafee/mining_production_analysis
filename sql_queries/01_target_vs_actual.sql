SELECT	Mine,
		SUM(Target_Tonnes) AS Total_Target,
        SUM(Actual_Tonnes) AS Total_Actual,
        (SUM(Actual_Tonnes)/SUM(Target_Tonnes))*100 AS Achievement_Percentage
FROM moil_data
GROUP BY Mine
ORDER BY Achievement_Percentage DESC;
