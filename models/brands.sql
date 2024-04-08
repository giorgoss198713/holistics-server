SELECT 
    crm_link,
    md5(name) as name_hashed,
    api_link,
    id
FROM sales_marketing.brands