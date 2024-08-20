select 
agent_username, agent_name, agent_id_brand_final
from public_sales_marketing.agent_name_benjamin_dbt
UNION ALL
select * from sales_uticen.uticen_agent_name_benjamin