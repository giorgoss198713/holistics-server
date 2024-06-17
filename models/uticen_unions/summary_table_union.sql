select
language, brand_name, pool_final, brand_pool_final, ftds, depositors, "Deposit Amount", "Withdrawal Amount", "Net Amount", client_id_brand_transid_isftd, agent_name, approved_date,
brand_pool_month_year
from sales_marketing.summary_table_dbt
UNION ALL
select 
*
from sales_uticen.uticen_summary_table