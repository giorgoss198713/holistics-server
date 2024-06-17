select
client_id_brand, ftd_date, redepositor
from sales_marketing.redepositor_client_dbt
UNION ALL
select 
*
from sales_uticen.uticen_redepositor_client