UPDATE sales_marketing.brands
SET name = CASE WHEN id=1 THEN 'GIORGOS' ELSE name END