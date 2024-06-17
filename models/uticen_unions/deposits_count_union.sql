select
client_id_brand, deposits_count
from sales_marketing.deposits_count_dbt
UNION ALL
select 
*
from sales_uticen.uticen_deposits_count