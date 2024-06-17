select
client_id_brand_day, client_id_brand_transid_isftd, client_id_brand_day_time,
client_id_brand, transaction_date, ftd_date, ftd_date_referral,
NULL AS agent, agent_id_brand_final, row_num,
client_agent_id_brand, usd_amount
from sales_marketing.first_approved_date_dbt
UNION ALL
select 
*
from sales_uticen.uticen_first_approved_date