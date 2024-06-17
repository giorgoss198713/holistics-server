select
client_id_brand, approved_date, usd_amount
from sales_marketing.non_ftd_transactions_dbt
UNION ALL
select 
*
from sales_uticen.uticen_non_ftd_transactions