select
id, education_site, education_cb, country, formatted_occupation, initial_occupation, occupation_group,
age, initial_marital_status, zip_code, state, cpa, depositor, brm_id, dialer_id, email, ftd_date, deposit_amount,
withdrawal_amount, last_call_date, entry_type, verified, status, pool, created_date, cl.campaign_id, 
cb.campaign_name_transformed as campaign_name,
referral, converted_date, is_ftd, cl.brand_name, login_count, first_calling_pool_transformed, desk_manager, pool_language,
first_calling_agent, retention_agent, language, referral_brand, fname, lname, gender,full_name,
agent_id_brand, client_id_brand, cl.campaign_id_brand, age_group, lead_atomix_id, client_in_atomix,
has_atomix, client_conversations, attempted_calls, answered_calls, answered_binary, answered_call, refunded,
NULL AS UTMSource, NULL AS UTMMedium
from sales_marketing.clients_with_brand_dbt cl
LEFT JOIN sales_marketing.campaign_brand_dbt cb ON cl.campaign_id_brand=cb.campaign_id_brand
UNION ALL
select 
*
from sales_uticen.uticen_clients_with_brand