select
client_id_brand, client_id_brand_day,  transaction_date, sum
from sales_marketing.redepositor_amounts_dbt
UNION ALL
select 
*
from sales_uticen.uticen_redepositor_amounts