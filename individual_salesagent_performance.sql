CREATE OR REPLACE VIEW sales_team_performance AS 

SELECT 
sales_agent,
SUM(CASE WHEN deal_stage = 'Won' THEN (COALESCE(close_value, 0)) END) AS close_value,
SUM(CASE WHEN deal_stage = 'Won' THEN 1 ElSE 0 END) AS deals_won,
SUM(CASE WHEN deal_stage = 'Engaging' THEN 1 ElSE 0 END) AS pending_sales,
SUM(CASE WHEN deal_stage = 'Lost' THEN 1 ElSE 0 END) AS deals_lost
FROM sales_pipeline
GROUP BY sales_agent
ORDER BY deals_won;


