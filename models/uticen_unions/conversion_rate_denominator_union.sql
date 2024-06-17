select
min_client_id_brand_day, client_id_brand, client_id_brand_transid_isftd, 
agent_id_brand_final, row_num, client_agent_id_brand
from sales_marketing.conversion_rate_denominator_dbt
UNION ALL
select 
*
from sales_uticen.uticen_conversion_rate_denominator