select agent_name, agent_id_brand_final
from sales_marketing.agent_name_redepositor_dbt
UNION ALL
select * from sales_uticen.uticen_agent_name_redepositor