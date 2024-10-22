select
client_id_brand, deposits_count
from sales_marketing.withdrawals_count_dbt
UNION ALL
select 
*
from sales_uticen.uticen_withdrawals_count