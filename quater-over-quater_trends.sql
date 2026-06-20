CREATE OR REPLACE VIEW QUATER_TO_QUATER_TRENDS AS 

SELECT 
sp.product,
st.regional_office,
CONCAT(YEAR(STR_TO_DATE(sp.close_date, '%m/%d/%Y')), '-Q', QUARTER(STR_TO_DATE(sp.close_date, '%m/%d/%Y'))) AS quater_year,
COUNT(CASE WHEN deal_stage = 'Won' THEN opportunity_id END) AS Deals_won,
COUNT(CASE WHEN deal_stage = 'Lost' THEN opportunity_id END) AS Deals_lost,
ROUND(COUNT(CASE WHEN sp.deal_stage = 'Won' THEN sp.opportunity_id END) / COUNT(sp.opportunity_id) * 100, 2) AS win_rate, 
COALESCE(SUM(CASE WHEN deal_stage = 'Won' THEN close_value END),0) AS revenue_generated
FROM sales_pipeline sp
JOIN sales_teams st ON sp.sales_agent = st.sales_agent
WHERE deal_stage IN ('Won','Lost')
GROUP BY sp.product, st.regional_office, quater_year
ORDER BY  revenue_generated DESC
