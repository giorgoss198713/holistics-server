select
language, brand_name, pool_final, country, campaign_name_transformed, live_not_live, brand_pool_final, ftds, depositors, "Non FTD", anytime_depositor,
"Deposit Amount", "Withdrawal Amount", "FTD Amount", "Net Amount", client_id_brand_transid_isftd, client_id_brand, ftd_Date, approved_date, ftd_bucket,
ftd_bucket_2, ftd_bucket_3, ftd_bucket_4
from sales_marketing.campaign_table_dbt
UNION ALL
select 
*
from sales_uticen.uticen_campaign_table