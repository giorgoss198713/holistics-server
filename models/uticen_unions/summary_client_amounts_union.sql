select
login, client_id, client_id_brand, brand_name, ftd_date, deposits, withdrawals,
net_deposits, deposits_ex_ftd, withdrawals_ex_ftd, net_deposits_ex_ftd
from sales_marketing.summary_client_amounts_dbt
UNION ALL
select 
*
from sales_uticen.uticen_summary_client_amounts
