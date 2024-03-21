select 
pt.brand_pool,
pt.ftd_target_daily::INT, 
pt.ftd_target_monthly::INT,
count(distinct crd.min_client_id_brand_day),
count(distinct crd.min_client_id_brand_day)::decimal/NULLIF(pt.ftd_target_monthly::INT,0)
as monthly_percentage
from sales_marketing.pool_targets_sheet1 pt
inner join sales_marketing.transactions_with_brand_dbt twb on pt.brand_pool = twb.brand_pool_final
inner join sales_marketing.conversion_rate_denominator_dbt crd on crd.client_id_brand = twb.client_id_brand
WHERE
	twb.approved_date > DATE_TRUNC('month', CURRENT_DATE)
  AND twb.approved_date < CURRENT_DATE
  AND twb.is_ftd is true
  AND twb.type ='Deposit'
group by 
pt.brand_pool,  
pt.ftd_target_daily::INT,
pt.ftd_target_monthly::INT