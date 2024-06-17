select
client_id_brand_transid_isftd, client_id_brand, approved_date, 
currency, amount, usd_amount
from sales_marketing.ftd_deposits_dbt
UNION ALL
select 
*
from sales_uticen.uticen_ftd_deposits