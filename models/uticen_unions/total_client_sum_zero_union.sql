select
client_id_brand, total_sum
from sales_marketing.total_client_sum_zero_dbt
UNION ALL
select 
*
from sales_uticen.uticen_total_client_sum_zero