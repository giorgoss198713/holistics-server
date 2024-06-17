select 
agent_name, last_login, agent_id_brand_final
from sales_marketing.agent_name_final_dbt
UNION ALL
select * from sales_uticen.uticen_agent_name_final