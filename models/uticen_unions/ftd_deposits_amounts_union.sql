select
client_id_brand, language, pool_final, min, ftd_usd_amount, 
ftd_bucket, ftd_bucket_2, ftd_bucket_3, ftd_bucket_4, ftd_bucket_5,
ftd_bucket_6, ftd_bucket_7,ftd_bucket_8, ftd_bucket_9
from sales_marketing.ftd_deposits_buckets_dbt
UNION ALL
select 
*
from sales_uticen.uticen_ftd_amount_buckets