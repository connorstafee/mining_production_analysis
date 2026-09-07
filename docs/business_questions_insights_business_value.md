### QUESTION 1: Which mine consistently meets or exceeds its production targets? 
- **SQL QUERY:** See `sql_queries/01_target_vs_actual.sql`

- **INSIGHTS:**
The query calculates total target tonnes vs total actual tonnes for each mine.
The achievement_pct column shows how close each mine is to meeting or exceeding its planned targets.
From your dataset, most mines are achieving above 99% of their targets, with small variations:
South Mine slightly leads (~99.4%).
Central Mine follows (~99.3%).
East Mine and North Mine are just below (~99.2% and ~99.0%).

- **BUSINESS VALUE:**
Consistently high achievement percentages (>99%) show strong alignment between planning and execution.
Management can trust production forecasts for resource allocation and financial planning.
Even small differences (South Mine outperforming slightly) highlight opportunities to replicate best practices across other mines.
This metric is a core KPI for performance dashboards.

### QUESTION 2: Which department (Plant vs Underground) has higher average downtime hours across all mines?
-**SQL QUERY:** See 'sql_queries/02_downtime_analysis.sql'

- **INSIGHTS:**
The difference between Plant (1.17 hrs) and Underground (1.16 hrs) is negligible — essentially both departments experience similar downtime.
Downtime is well‑controlled across both environments, showing balanced maintenance practices.

- **BUSINESS VALUE:**
Management can be confident that downtime is not disproportionately affecting one department.
Preventive maintenance programs appear to be working equally well in both Plant and Underground.
Since downtime is nearly identical, improvement efforts should target specific mines or shifts rather than departments overall.

### Question 3: Which mine has the highest average equipment availability percentage?
-**SQL QUERY:** See 'sql_queries/03_equipment_efficiency.sql'

- **INSIGHTS:**
South Mine leads with the highest average equipment availability (85.12%), closely followed by East Mine (85.08%).
North Mine lags behind at 83.88%, showing slightly lower reliability compared to the others.
The differences are small but meaningful — even a 1% drop in availability can translate into significant production losses over time.

- **BUSINESS VALUE:**
High equipment availability ensures fewer disruptions and maximizes productive working hours.
South Mine’s maintenance and equipment management practices could be studied and replicated across other mines.
North Mine’s lower availability highlights potential risks — management may need to investigate causes (e.g., aging machinery, maintenance schedules).
This shows that operational KPIs (availability) can be connected  with business outcomes (production reliability and risk mitigation).

### Question 4: Which department achieves the highest average recovery percentage?
-**SQL QUERY:** See 'sql_queries/04_recovery_performance.sql'

- **INSIGHTS:**
The difference between Underground (85.96%) and Plant (85.95%) is almost negligible — essentially both departments are achieving the same recovery efficiency.
This indicates a highly standardized process across departments, with no major gaps in recovery performance.
It also suggests that both environments are equally effective in converting ore into usable manganese output.

- **BUSINESS VALUE:**
Recovery efficiency is uniform across departments, which is a strong indicator of standardized operational practices.
High recovery percentages (>85%) mean minimal losses during processing, directly improving profitability.
Since both departments are nearly identical, management should focus on mine‑level or grade‑level recovery differences rather than department‑level.

### Question 5: On which days did dispatch tonnes exceed stockpile tonnes across all mines?
-**SQL QUERY:** See 'sql_queries/05_dispatch_vs_stockpile.sql'

- **INSIGHTS:**
On every single day listed, dispatch tonnes exceeded stockpile tonnes.
The differences are often very large (e.g., Jan 1: +2,093 tonnes, Feb 4: +6,657 tonnes, Dec 15: +7,705 tonnes).
This indicates that production is being moved out efficiently, with minimal accumulation in stockpiles.
Occasional smaller differences (e.g., Apr 24: +1,467 tonnes, Aug 29: +1,245 tonnes) show days where dispatch was closer to stockpile levels, but still higher.

- **BUSINESS VALUE:**
Consistently higher dispatch than stockpile means material is reaching customers quickly, reducing holding costs.
Lower stockpile levels reduce the need for storage space and tied‑up capital, improving cash flow.
High dispatch volumes signal strong fulfillment capability, which builds trust with buyers.
Days with unusually high differences (e.g., >6,000 tonnes) may indicate peak demand or special contracts — useful for forecasting and planning logistics.

### Question 6: Which grade (Mn 28‑30%, Mn 30‑32%, Mn 32‑34%, Mn 34%+) contributes the most to actual production?
-**SQL QUERY:** See 'sql_queries/06_grade_contribution.sql'

- **INSIGHTS:**
Mn 28‑30% grade contributes the largest share of production (≈35%).
Mn 30‑32% is close behind at ≈32%, together making up two‑thirds of total output.
Higher grades (Mn 32‑34% and Mn 34%+) contribute less overall, showing that the mines are more heavily skewed toward lower‑grade ore.
This distribution reflects the natural ore composition of the mines — bulk production is lower grade, while higher grades are rarer.

- **BUSINESS VALUE:**
Since most output is lower grade, pricing and contracts should focus on bulk supply agreements for Mn 28‑30% and Mn 30‑32%.
Higher grades (Mn 32‑34% and Mn 34%+) are smaller in volume but likely command premium prices — management can position them as niche, high‑margin products.
Knowing grade contribution helps optimize blending strategies to meet customer specifications.

### Question 7: Which shift (A, B, C) consistently delivers the highest actual tonnes?
-**SQL QUERY:** See 'sql_queries/07_mine_reliability.sql'

- **INSIGHTS:**
Shift A is the most productive, contributing nearly 35% of total output.
Shift B is close behind at 34%, showing strong consistency.
Shift C lags slightly at 31%, which could be due to factors like workforce fatigue, equipment scheduling, or operational timing.
The distribution is fairly balanced, but the small gap suggests optimization opportunities.

- **BUSINESS VALUE:**
Shift A’s higher productivity may be linked to fresher workforce energy or better equipment availability — lessons can be applied to Shift C.
Management can investigate whether Shift C faces systemic challenges (e.g., night shift constraints, maintenance overlaps).
Even a 3% improvement in Shift C could add thousands of tonnes annually, directly boosting revenue.


### Question 8: Which mine‑shift combinations deliver the highest attainment percentage, and which one is the weakest performer that management should fix first?
-**SQL QUERY:** See 'sql_queries/08_mine_shift_attainment.sql'

- **INSIGHTS:**
South Mine dominates the top 4 ranks, proving it’s consistently strong across all shifts.
North Mine (Shift A) is the weakest performer at 98.38%, the lowest attainment in the dataset.
The spread between best and worst is small (~1.2%), but in high‑volume mining operations, even this gap can represent thousands of tonnes.

- **BUSINESS VALUE:**
South Mine’s shift management practices (especially Shift A) should be studied and replicated across other mines.
North Mine’s Shift A needs immediate attention — management can investigate workforce scheduling, equipment availability, or planning accuracy.
Ranking by mine × shift highlights that performance issues are not just mine‑specific but can be tied to particular shifts.
Mines with higher variance may face challenges in demand fulfillment or cost control — identifying and addressing these gaps improves operational stability.

### Question 9: How does monthly production evolve across mines, and what does a 7‑day rolling average reveal about short‑term fluctuations versus long‑term stability?
-**SQL QUERY:** See 'sql_queries/09_monthly_trend&7day_rolling_avg.sql'

- **INSIGHTS:**
Actual tonnes swing widely (from ~340 to ~530 in Central Mine, similar ranges in others), showing natural operational ups and downs.
Despite daily swings, the 7‑day rolling averages for each mine tend to stabilize in the 420–460 tonne range, smoothing out noise.
Monthly patterns (all mines):
  Early months (Jan–Feb): Rolling averages generally climb, indicating improving consistency after the start of the year.
  March–April: Several mines show dips back toward ~420 tonnes, suggesting possible disruptions (maintenance, ore quality, or workforce).
  May–June: Recovery toward ~450 tonnes, showing stabilization across mines.
  July–September: Rolling averages hover around ~430–450, plateauing with occasional peaks above 460, suggesting steady but slightly flattened performance.
Across all mines, production stabilizes around the mid‑400s, with only temporary dips, showing strong operational control.

- **BUSINESS VALUE:**
Rolling averages provide management with a clearer monthly picture, avoiding overreaction to one‑day spikes or dips.
By looking at rolling averages per mine, management can identify which mines are more stable and which face recurring volatility.
Periods of dips (e.g., March–April) highlight when multiple mines may have faced disruptions — useful for root‑cause analysis.
Stable rolling averages across mines mean the company can rely on predictable monthly output, critical for contracts and dispatch planning.

### Question 10: How does monthly output change from one month to the next across mines, and which mines show the strongest growth or decline in production?
-**SQL QUERY:** See 'sql_queries/10_mom_%change.sql'

- **INSIGHTS:**
Central Mine:
  Saw declines in Feb (‑7.38%), Apr (‑14.68%), Jun (‑7.59%), Jul (‑7.60%), Aug (‑3.89%), Oct (‑10.05%).
  Strong rebounds in Mar (+7.29%), May (+14.79%), Sep (+29.38%), Nov (+8.99%), Dec (+13.35%).
  Overall: Volatile, but ends the year on a strong upward trend.
East Mine:
  Big growth in May (+20.65%), Aug (+31.62%), Oct (+20.27%).
  Sharp declines in Jul (‑22.37%), Nov (‑13.71%), Dec (‑11.75%).
  Overall: Highly inconsistent, alternating between strong gains and steep drops.
North Mine:
  Huge surge in May (+34.40%) and Dec (+46.54%).
  Severe decline in Nov (‑29.70%).
  Overall: Very volatile, but capable of massive growth spurts.
South Mine:
  Worst dip in Jul (‑31.87%), followed by a strong rebound in Aug (+34.66%).
  Smaller swings in other months, ending with steady growth in Dec (+9.32%).
  Overall: The most unstable mine, but shows recovery capacity.

- **BUSINESS VALUE:**
Month‑over‑month analysis highlights which mines are reliable and which are volatile. Central and North Mines show big swings, so forecasts must account for risk.
South Mine’s July collapse (‑31.87%) is a red flag — management should investigate causes (equipment downtime, labor, or ore grade).
North Mine’s December surge (+46.54%) suggests untapped capacity — management could explore scaling strategies there.
East Mine’s alternating gains and losses show inconsistent operations; stabilizing processes here could unlock steady growth.

