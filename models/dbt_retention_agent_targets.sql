{{ config(schema="sales_marketing") }}
select    cast(date_trunc('Minute',_airbyte_emitted_at + interval '{{ var('time') }} hours') as timestamp without time zone) as "snapshot",
    "concat" as "agent_brand_month_year",    "Brand Name" as "brand_name",
    "Month Year" as "month_year",    cast(replace("Agent Target", ',', '') as double precision) as "agent_target",
    "Team Name" as "team_name",    cast(replace("Team Target", ',', '') as double precision) as "team_target",
    "Agent Name Final" as "agent_name_final",    "Pool status" as "pool_status",
    "Pool Final" as "pool_final",    "Agent Name CRM" as "agent_name_crm"
from google_sheets.ret__agents_targets