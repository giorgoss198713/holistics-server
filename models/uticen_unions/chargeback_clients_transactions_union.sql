select
client_id_brand, client_id_brand_transid_isftd, chargeback_amount
from sales_marketing.chargeback_clients_transactions_dbt
UNION ALL
select 
*
from sales_uticen.uticen_chargeback_clients_transactions