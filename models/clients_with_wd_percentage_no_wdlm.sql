SELECT cl.id, cl.brand_name, concat_ws('_',cl.id,cl.brand_name) as client_id_brand, tr.login , cwc.withdrawal_percentage
FROM sales_marketing.clients_with_brand_dbt cl
left join imports.crm_manager_trading_accounts tr
ON concat_ws('_',cl.id,cl.brand_name)=concat_ws('_',tr.client_id,tr.brand_name)
left join public_staging.dbt_clients_with_contracts cwc 
ON cwc.login=tr.login
left join sales_marketing.withdrawals_all_dbt wd 
ON wd.client_id_brand=cl.client_id_brand 
AND DATE_TRUNC('month', wd.approved_day) = DATE_TRUNC('month', CURRENT_DATE - INTERVAL '1 month')
where
cwc.withdrawal_percentage is not null
AND wd.client_id_brand IS NULL