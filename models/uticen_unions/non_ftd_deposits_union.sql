select
usd_amount, client_id_brand_transid_isftd, client_id_brand, approved_date
from sales_marketing.non_ftd_deposits_dbt
UNION ALL
select 
*
from sales_uticen.uticen_non_ftd_deposits