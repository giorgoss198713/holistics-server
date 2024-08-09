with normalized_google_sheet AS (SELECT concat, "Brand Name" as brand_name, "Team Name" as team_name, "Month Year" as month_year,
"Agent Name Final" as agent_name_final, "1st Agent Target" as "1st_agent_target", "Pool status" as pool_status, 
"1st Team Target" as "1st_team_target", "Pool Final" as pool_final, "Agent Name CRM" as agent_name_crm, 
"2nd Team Target" as "2nd_team_target", "2nd Agent Target" as "2nd_agent_target"
FROM sales_marketing.ret__agents_targets),

start_end_date AS (
SELECT a.*,
	DATE_TRUNC('MONTH', TO_DATE(month_year, 'Month YYYY')) AS start_date,
    DATE_TRUNC('MONTH', TO_DATE(month_year, 'Month YYYY')) + INTERVAL '1 month' - INTERVAL '1 day' AS end_date
from normalized_google_sheet a
)
,
working_days AS (
select agent_name_crm, agent_name_final, brand_name, pool_status, replace("1st_agent_target",',','')::numeric as first_agent_target, 
replace("2nd_agent_target",',','')::numeric as second_agent_target,
concat as agent_brand_month_year, pool_final, month_year, start_date, team_name, 
replace("1st_team_target",',','')::numeric as first_team_target, replace("2nd_team_target",',','')::numeric as second_team_target,
count(*) as working_days_count
from 
start_end_date,
generate_series(start_date,end_date, interval '1' day) as t(dt)
where extract(dow from dt) between 1 and 5
GROUP BY start_date, agent_brand_month_year, pool_final, month_year, agent_name_crm, agent_name_final, brand_name, pool_status, first_agent_target, 
second_agent_target, team_name,
first_team_target, second_team_target
)
,
current_datetime AS (
select concat as agent_brand_month_year, pool_final, month_year, current_date, 
	count(*) as current_day_count
from 
start_end_date,
generate_series(start_date,current_date, interval '1' day) as t(dt)
where extract(dow from dt) between 1 and 5
GROUP BY current_date, agent_brand_month_year, pool_final, month_year
)
SELECT
  w.*,
  COALESCE(
    CASE
      WHEN CURRENT_DATE > DATE_TRUNC('MONTH', TO_DATE(w.month_year, 'Month YYYY')) + INTERVAL '1 MONTH' - INTERVAL '1 day' THEN 0
      WHEN first_agent_target IS NULL THEN 0
      ELSE w.working_days_count - cd.current_day_count + 1
    END) AS days_left
FROM
  working_days w
  LEFT JOIN current_datetime cd ON concat_ws('_',cd.agent_brand_month_year,cd.pool_final)=concat_ws('_',w.agent_brand_month_year,w.pool_final)
  ORDER BY w.month_year