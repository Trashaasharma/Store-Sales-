CREATE DATABASE IF NOT exists  Store_sales;

USE Store_sales;

Select 
ROUND(SUM(Amount),2) 
AS total_revenue,
COUNT(*) 
AS total_orders,
ROUND((SUM(Amount)/COUNT(*)),2) 
AS avg_order_value,
ROUND(AVG(ItemRating),2) 
AS avg_rating,
ROUND(AVG('DiscountApplied(%)'),1)
AS avg_discount_pct,
Round(100.0 * SUM( Case WHEN 'DiscountApplied(%)' > 0 THEN 1 ELSE 0 END)/Count(*),1)
AS Discounted_share_pct,
ROUND(100.0 * SUM( CASE WHEN PreviousPurchases > 0 THEN 1 ELSE 0 END)/COUNT(*),1)
AS repeat_customer_share_pct
FROM Sales;




