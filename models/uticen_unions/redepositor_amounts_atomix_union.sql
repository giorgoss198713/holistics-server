select
client_id_brand_transid_isftd, client_id_brand, approved_date, usd_amount_with_minus
from sales_marketing.redepositor_amounts_atomix_dbt
UNION ALL
select 
*
from sales_uticen.uticen_redepositor_amounts_atomix