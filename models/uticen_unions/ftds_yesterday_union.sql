select
min_client_id_brand_day, client_id_brand,
pool_final, brand_pool_final
from sales_marketing.ftds_yesterday_dbt
UNION ALL
select 
*
from sales_uticen.uticen_ftds_yesterday
