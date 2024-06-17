select agent_name, agent_id_brand from sales_marketing.agent_name_current_dbt
UNION ALL
select * from sales_uticen.uticen_agent_name_current