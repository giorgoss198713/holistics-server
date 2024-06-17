select
usd_amount_with_minus, client_id_brand_transid_isftd, client_id_brand
from sales_marketing.pv_numerator_dbt
UNION ALL
select 
*
from sales_uticen.uticen_pv_numerator