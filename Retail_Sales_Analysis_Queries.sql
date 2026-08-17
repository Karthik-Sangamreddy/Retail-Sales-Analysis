# Retail Sales Analysis

#1 KPI Cards
select sum(`Total Amount`) as Total_sales,
count(distinct `Transaction ID`) as Total_Transactions,
count(distinct `Customer ID`) as Total_Customers,
sum(Quantity) as Total_Quantity_Sold
from retail_analysis.retail_sales;


#2 Revenue BY Product Category
select `Product Category`,
sum(`Total Amount`) as Total_Revenue
from retail_analysis.retail_sales
group by `Product Category`
order by Total_Revenue desc


#3 Monthly Sales Trends
select Month,
sum(`Total Amount`) as Monthly_Revenue
from retail_analysis.retail_sales
group by month
order by Monthly_Revenue desc


#4 Quarterly Sales Trend
select Quarter,
sum(`Total Amount`) as Quarterly_Revenue
from retail_analysis.retail_sales
group by Quarter
order by Quarterly_Revenue desc


#5 Top Customers
select `Customer ID`,
sum(`Total Amount`) as Customer_Revenue
from retail_analysis.retail_sales
group by `Customer ID`
order by Customer_Revenue desc
limit 10;


#6 Customer Revenue Ranking
select `Customer ID`,
sum(`Total Amount`) as Total_Sales,
rank() over (order by sum(`Total Amount`)) as Revenue_rank
from retail_analysis.retail_sales
group by `Customer ID`
Order by Revenue_rank
limit 10;


#7 Quarterly Category Analysis
select Quarter, `Product Category`, sum(`Total Amount`) as Quarterly_Revenue
from retail_analysis.retail_sales
group by Quarter, `Product Category`
order by Quarter, Quarterly_Revenue desc;






