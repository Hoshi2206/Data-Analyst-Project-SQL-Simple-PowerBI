CREATE OR REPLACE VIEW team_sales_performance AS
SELECT 
st.manager,
st.regional_office,
COUNT(CASE WHEN sp.deal_stage = 'Won' THEN sp.opportunity_id END) AS total_deals_won,
SUM(CASE WHEN sp.deal_stage = 'Won' THEN sp.close_value ELSE 0 END) AS total_revenue,
COUNT(CASE WHEN sp.deal_stage = 'Engaging' THEN 1 END) AS opportunity_sales,
ROUND(COUNT(CASE WHEN sp.deal_stage = 'Won' THEN sp.opportunity_id END)/ (COUNT(CASE WHEN sp.deal_stage = 'Won' THEN sp.opportunity_id END) + COUNT(CASE WHEN sp.deal_stage = 'Lost' THEN sp.opportunity_id END)) * 100,2) AS win_rate
FROM sales_pipeline sp
JOIN sales_teams st ON sp.sales_agent = st.sales_agent
GROUP BY st.manager, st.regional_office
ORDER BY total_revenue DESC;