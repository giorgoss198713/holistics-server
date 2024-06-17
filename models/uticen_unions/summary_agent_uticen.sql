select
brand_name, pool_final, agent_name, brand_pool_final, ftds, depositors, "New Depositors more 1k", "New Depositors less 1k", 
"New Depositors Total", "Deposit Amount", "Withdrawal Amount", "Net Amount", client_id_brand_transid_isftd
from sales_marketing.summary_agent_dbt
UNION ALL
select 
*
from sales_uticen.uticen_summary_agent