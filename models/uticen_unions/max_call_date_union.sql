select
crm_id, brand_name, client_id_brand, last_call_date
from sales_marketing.max_call_date_dbt
UNION ALL
select 
*
from sales_uticen.uticen_max_call_date