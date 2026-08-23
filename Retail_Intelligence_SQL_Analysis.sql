SELECT * FROM project_retail.superstore;
SELECT COUNT(*)
FROM project_retail.superstore WHERE Sales IS NULL;
UPDATE project_retail.superstore
SET OrderDate = STR_TO_DATE(OrderDate, '%d-%m-%Y');
ALTER TABLE project_retail.superstore MODIFY COLUMN OrderDate date ;

UPDATE project_retail.superstore
SET Ship_Date = STR_TO_DATE(Ship_Date, '%d-%m-%Y');
ALTER TABLE project_retail.superstore MODIFY COLUMN Ship_Date date ;
DESCRIBE project_retail.superstore;
					  #Sales Analysis-
SELECT SUM(Sales) as Total_Sales from project_retail.superstore;
SELECT AVG(Sales) as Average_Sales from project_retail.superstore;
#year wise sales
SELECT YEAR(OrderDate) as year,SUM(Sales) as Total_sales_each_year from project_retail.superstore group by YEAR(OrderDate);
#top Categories by total sales
SELECT Category ,SUM(Sales) as Total_sales from project_retail.superstore group by Category ORDER BY SUM(Sales) DESC;
                       #Profit Analysis-
#Total profit
SELECT SUM(Profit) as Total_Profit from project_retail.superstore;
#profit margin
SELECT 
    SUM(Profit) / SUM(Sales) * 100 AS Profit_Margin
FROM project_retail.superstore;
#High-Profit Products
SELECT Product_Name AS Product , SUM(Profit) as Total_Profit from project_retail.superstore group by Product_Name Order by  SUM(Profit) DESC;
#Count of Loss-making Products
SELECT COUNT(DISTINCT(Product_Name)) as Total_Product_Count from project_retail.superstore ;
SELECT count(DISTINCT(Product_Name)) as Loss_Making_Product_Count FROM (
SELECT Product_Name from project_retail.superstore group by Product_Name 
having  sum(Profit) < 0 ) as Loss_Products ;
#Loss-making categories
SELECT Category ,SUM(Sales) as Total_Profit from project_retail.superstore group by Category;
#op 10 proucts by total_profit
WITH cte AS ( SELECT Product_Name AS Product , SUM(Profit) as Total_Profit from project_retail.superstore group by Product_Name ) , ranked AS 
(SELECT * , DENSE_RANK() OVER ( ORDER BY  Total_Profit  DESC)as rnk from cte )
SELECT Product from ranked where rnk <=10;
            #Customer Analysis
#Top Customers by Sales
SELECT Customer_Name, SUM(Sales) AS Total_Sales,SUM(Profit) AS Total_Profit
FROM project_retail.superstore
GROUP BY Customer_Name
ORDER BY Total_Sales DESC
LIMIT 10;   
#Which Segment with most profit & sales
SELECT Segment , SUM(Sales) AS Total_Sales,ROUND(SUM(Profit),2) AS Total_Profit , ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS Profit_Margin
FROM project_retail.superstore
GROUP BY Segment ORDER BY SUM(Sales) DESC;
#High Sales – Low Profit Customers
WITH customer_summary AS (
    SELECT
        Customer_Name,
        SUM(Sales) AS Total_Sales,
        SUM(Profit) AS Total_Profit
    FROM project_retail.superstore
    GROUP BY Customer_Name
)
SELECT *FROM customer_summary 
WHERE Total_Sales > (
    SELECT AVG(Total_Sales)
    FROM customer_summary
)AND Total_Profit < (
    SELECT AVG(Total_Profit)
    FROM customer_summary
)ORDER BY Total_Sales DESC;
#Best-selling products → based on Quantity
SELECT Product_Name, SUM(Quantity) AS Total_Quantity_Sold
FROM project_retail.superstore
GROUP BY Product_Name
ORDER BY Total_Quantity_Sold DESC LIMIT 5;
             #Regional Performace difference
SELECT Region ,SUM(Sales) AS Total_Sales,SUM(Profit) AS Total_Profit
FROM project_retail.superstore
GROUP BY Region ORDER BY SUM(Profit) DESC;