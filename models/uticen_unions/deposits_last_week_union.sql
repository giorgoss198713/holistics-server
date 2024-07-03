select
client_id_brand, last_deposit_date, deposit_last_week
from sales_marketing.deposits_last_week_dbt
UNION ALL
select 
*
from sales_uticen.uticen_deposit_last_week