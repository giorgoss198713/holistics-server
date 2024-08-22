select 
    cdr_id,
    crm_id,
    client_id_brand,
    brand_name,
    pool,
    agent_id,
    duration,
	hours,
	minutes,
	seconds,
	formatted_duration,
    created_date,
    webphone_status,
    call_type,
    username,
    type,
    role_type,
	conversation_successful_count,
    no_answer_count,
    answered_short_conversation_count,
    call_failed_count
from sales_marketing.calls_count_all_dbt
UNION ALL
select * from sales_uticen.uticen_calls_count_all