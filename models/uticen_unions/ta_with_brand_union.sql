select
login, client_id, brand_name, client_id_brand, balance, abs_balance
from sales_marketing.ta_with_brand_dbt
UNION ALL
select 
login, client, brand_name, client_id_brand, balance::double precision, abs_balance::double precision
from sales_uticen.uticen_ta_with_brand