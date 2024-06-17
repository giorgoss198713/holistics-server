select
crm_id, client_id_brand, ftd_day, call_day, daily_call_count, max_call_date, atomix_count, non_atomix_count
from sales_marketing.non_answering_clients_all_dbt
UNION ALL
select 
*
from sales_uticen.uticen_non_answering_clients_all