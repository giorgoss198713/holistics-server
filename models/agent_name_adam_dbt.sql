SELECT DISTINCT
u.username as agent_username,
aru.agent_name,
twb.agent_id_brand_final
FROM
  sales_marketing.transactions_with_brand_dbt twb
  INNER JOIN sales_marketing.admin_users_dbt u on CONCAT_WS('_',u.id,u.brand_name) = twb.agent_id_brand_final
  INNER JOIN sales_marketing.adam_report_usernames aru ON aru.agent_username=u.username
  WHERE
  u.username  in (select agent_username from sales_marketing.adam_report_usernames)