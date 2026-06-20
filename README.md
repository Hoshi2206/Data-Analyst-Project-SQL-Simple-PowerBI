# Data-Analyst-Project-SQL-Simple-PowerBI
End-to-end B2B CRM sales analysis project using SQL for data preparation and Power BI to build static visual reports.

# B2B CRM Sales Pipeline Visual Report

<img width="1203" height="998" alt="image" src="https://github.com/user-attachments/assets/ce0e8eae-9e3e-4d53-abaa-ac305a9d7995" />

## Project Objective
The goal of this project is to analyse a B2B sales pipeline dataset from a fictitious computer hardware company. By querying data with SQL and bringing it into Power BI, this project focuses on building clear, executive-ready visual reports to evaluate sales team performance and track product win rates.

## Dataset Overview
* **Source:** Maven Analytics Data Playground (CRM Sales Opportunities)
* **Data Scope:** Tables containing data on sales accounts, products, sales teams, and sales opportunities.

## Data Workflow & Technical Focus
1. **SQL Data Selection:** Used SQL queries to extract and isolate key metrics from the CRM tables.
2. **Power BI Visual Reporting:** Imported the data into Power BI to construct targeted, static charts and graphs that highlight key business metrics.

## Key Visual Insights Provided
* **Sales Pipeline Status:** Visualising opportunities that are won vs. lost.
* **Team Performance:** Clear charts showing top-performing sales agents.
* **Product Win Rates:** Tracking which hardware products successfully close.

## Reflection & Project Growth (Self-Assessment)
*This project represents my very first milestone in data analytics. Reviewing it honestly allows me to map out my learning path for future portfolio projects:*

* **Current Architecture:** This version focuses purely on static visual presentation and SQL data extraction. It does not yet feature a custom data model (star schema) or dynamic slicer functionality inside Power BI.
* **Next Steps for Growth:** In my upcoming projects, I am actively focusing on learning **Data Modelling** (establishing relationships between tables using primary/foreign keys) and implementing **DAX formulas** to build fully interactive dashboards with slicers.

## Business Insights & Actionable Recommendations

### 1. Regional & Team Performance Analysis
* **Insight:** The **West Region** leads overall company revenue at **$3.57M**, followed by Central ($3.35M) and East ($3.09M). However, the Central region's success is heavily reliant on a single top performer, **Melvin Marxen** team, who dominates the region's revenue by a $1M margin. 
* **Product Strategy Mapping:** High revenue does not always equal a high win rate. Teams led by Rocco Beubert team and Cara Losch team maintain lower win rates but capture high total revenue, proving a successful sales focus on high-ticket, premium hardware. Conversely, teams like Dustin Brinkman focus heavily on single categories, limiting their revenue caps.
* **Recommendation:** Deploy targeted sales training for lower-performing teams to help them diversify their product pitches and tap into premium hardware accounts.

### 2. Individual Sales Agent Performance & Bottlenecks
* **Insight:** The bottom 5 sales agents all generated under **$200K** in revenue, but their underlying strategies differ. Agents like Wilburn Farren have low win rates but higher average deal sizes (targeting premium buyers), while agents like Violet McClelland have higher win rates but lower revenue (targeting lower-value, economy items).
* **Recommendation:** Pair lagging agents with mentors based on their gaps. Agents struggling with closing premium deals should shadow premium-focused reps, while those struggling with volume should be trained on closing faster, economy-tier deals.

### 3. Quarter-over-Quarter (QoQ) Trends
* **Insight:** All regions experienced a massive performance surge in Q2, jumping from under $500K in Q1 to peaks over $1M. However, post-Q2 performance diverged heavily by geography. The **East and West regions entered a downward trend** after Q2, with the East dropping significantly from $1.02M down to $820K by Q4. Conversely, the **Central region was the only territory to sustain upward momentum into Q3**, peaking at $1.05M before experiencing a minor dip in Q4.
* **Recommendation:** Investigate the Central team's Q3 sales strategies to identify what kept their momentum alive while other regions slumped. Additionally, look into the operational or market factors that caused the severe drop-off in the East region during the second half of the year to prevent similar revenue bleed in the future.

### 4. Product Win-Rate & Revenue Maximisation
* **Insight:** While the `GTX Plus Pro` holds the highest nominal win rate at **68%**, the true revenue driver is the mid-range **`GTX Pro` (67% win rate)**, which generated **$900K more** in total revenue due to significantly higher market purchasing volume. Mid-range items (`GTX Pro`, `MG Advanced`, and `GTX Pro Plus`) dominate the top 3 revenue spots.
* **Recommendation:** The business should focus its core marketing budget and inventory stock on mid-range items, as they represent the highest customer demand and optimum profitability.
