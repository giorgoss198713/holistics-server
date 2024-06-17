select
client_id_brand,sum_usd_amount
from sales_marketing.non_ftd_total_dbt
UNION ALL
select 
*
from sales_uticen.uticen_non_ftd_total