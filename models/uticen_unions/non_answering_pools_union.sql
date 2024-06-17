select
ftd_day, pool, client_count, status, brand_name, max_call_date, total_atomix_count, has_atomix
--*
from sales_marketing.non_answering_pools_dbt
UNION ALL
select 
*
from sales_uticen.uticen_non_answering_pools