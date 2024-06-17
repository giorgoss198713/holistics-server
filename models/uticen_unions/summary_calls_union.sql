select
created_day, username, agent_name, agent_id_brand, brand_name, pool, total_duration, hours, minutes, seconds, formatted_total_duration
from sales_marketing.summary_calls_dbt
UNION ALL
select 
*
from sales_uticen.uticen_summary_calls
