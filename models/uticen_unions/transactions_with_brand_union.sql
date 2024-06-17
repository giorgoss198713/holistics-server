select
id, client_id, ta_login, currency, amount, usd_amount, frombm, status,
created_date, created_time, approved_date, approved_time, approved_day, isfake, type, is_ftd,
current_pool_transformed, pool_transformed, payment_method, 
NULL as psp_name, NULL AS desk_manager, NULL as group_manager,
language, brand_name,psp_id_brand, client_id_brand, ta_id_brand, fundprocessor_id_brand,
brand_pool, NULL AS agent, agent_id_brand, client_id_brand_day, client_id_brand_day_time,
client_id_brand_transid_isftd, client_id_brand_day_isftd, client_id_brand_day_isftd_type,
agent_id_brand_final, agent_id_brand_day, pool_final, brand_pool_final,
usd_amount_with_minus, answered_binary,username_brand_date, username_brand,
week_of_month,day_of_week
from sales_marketing.transactions_with_brand_dbt
UNION ALL
select 
*
from sales_uticen.uticen_transactions_with_brand