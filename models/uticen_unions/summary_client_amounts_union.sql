select
client_id, client_id_brand, pool, brand_name, full_name, retention_agent, status, ftd_date, 
deposit_last_day, deposit_five_days_before, client_in_email_list_cat3,
deposits, withdrawals,
net_deposits, deposits_ex_ftd, withdrawals_ex_ftd, net_deposits_ex_ftd,
deposits_count_prev_day, deposits_minus_one_interval_day,
deposits_minus_one_interval_month, deposits_count_prev_month,
deposits_prev_month
from sales_marketing.summary_client_amounts_dbt
UNION ALL
select 
*
from sales_uticen.uticen_summary_client_amounts