select
id,brand_name,client_id_brand, updatedby_id,updatedby_name, note_title,
NULL AS note,
note_updated_date
from sales_marketing.client_last_note_dbt
UNION ALL
select 
*
from sales_uticen.uticen_client_last_note