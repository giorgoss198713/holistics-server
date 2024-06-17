select
id, education_site, education_cb, country, formatted_occupation, initial_occupation, occupation_group,
age, initial_marital_status, zip_code, state, cpa, depositor, brm_id, dialer_id, email, ftd_date, deposit_amount,
withdrawal_amount, last_call_date, entry_type, verified, status, pool, created_date, campaign_id, referral,
converted_date, is_ftd, brand_name, login_count, first_calling_pool_transformed, desk_manager, pool_language,
first_calling_agent, retention_agent, language, referral_brand, fname, lname, gender,full_name,
agent_id_brand, client_id_brand, campaign_id_brand, age_group, lead_atomix_id, client_in_atomix,
has_atomix, client_conversations, attempted_calls, answered_calls, answered_binary, answered_call, refunded
from sales_marketing.clients_with_brand_dbt
UNION ALL
select 
*
from sales_uticen.uticen_clients_with_brand