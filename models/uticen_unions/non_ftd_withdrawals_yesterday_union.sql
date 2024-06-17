select
client_id_brand, pool_final, currency, usd_amount_with_minus, brand_pool_final
from sales_marketing.non_ftd_withdrawals_yesterday_dbt
UNION ALL
select 
*
from sales_uticen.uticen_non_ftd_withdrawals_yesterday