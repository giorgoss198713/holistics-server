select
client_id_brand, client_id_brand_transid_isftd, max_wd_date, usd_amount_with_minus
from sales_marketing.refunded_clients_transactions_dbt
UNION ALL
select 
*
from sales_uticen.uticen_refunded_clients_transactions