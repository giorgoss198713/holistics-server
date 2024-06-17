select
client_id_brand_transid_isftd, usd_amount_with_minus
from sales_marketing.non_ftd_withdrawals_cb_dbt
UNION ALL
select 
*
from sales_uticen.uticen_non_ftd_withdrawals_cb