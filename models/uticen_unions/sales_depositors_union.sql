select
brand_desk, client_id_brand, client_id, referral, language, brand_name, client, pool_final, country, ftd_date, first_deposit_date, total_days_ftd_to_deposit,
hot_or_cold, priority, campaign_name, total_deposits_usd
from sales_marketing.sales_depositors_dbt
UNION ALL
select 
*
from sales_uticen.uticen_sales_depositors