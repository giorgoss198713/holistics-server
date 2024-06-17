select distinct_agents_count, brand_pool_month_year from sales_marketing.active_agents_dbt
UNION ALL
select * from sales_uticen.uticen_active_agents

ORDER BY brand_pool_month_year
