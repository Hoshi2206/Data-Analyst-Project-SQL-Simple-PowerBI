CREATE OR REPLACE VIEW product_performace AS 
 
SELECT
product,             
COALESCE(SUM(CASE WHEN deal_stage = 'Won' THEN close_value END),0) AS Revenue,
COUNT(CASE WHEN deal_stage = 'Won' THEN opportunity_id END) AS Deals_won,
COUNT(CASE WHEN deal_stage = 'Lost' THEN opportunity_id END) AS Deals_lost,
ROUND(COUNT(CASE WHEN deal_stage = 'Won' THEN opportunity_id END) / (COUNT(CASE WHEN deal_stage = 'Won' THEN opportunity_id END) +  COUNT(CASE WHEN deal_stage = 'Lost' THEN opportunity_id END)) * 100,2) AS Win_rate
FROM sales_pipeline sp
JOIN sales_teams st ON sp.sales_agent = st.sales_agent
GROUP BY  product
ORDER BY win_rate DESC


