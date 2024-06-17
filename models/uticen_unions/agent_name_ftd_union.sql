select 
agent_name,agent_id_brand_final,agent_id_brand_day,id,brand_name
from sales_marketing.agent_name_ftd_dbt
UNION ALL
select * from sales_uticen.uticen_agent_name_ftd