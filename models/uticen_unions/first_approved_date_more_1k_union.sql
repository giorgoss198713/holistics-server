select
client_id_brand_day_time,client_id_brand_day_min,
sum, row_num
from sales_marketing.first_approved_date_more_1k_dbt
UNION ALL
select 
*
from sales_uticen.uticen_first_approved_date_more_1k