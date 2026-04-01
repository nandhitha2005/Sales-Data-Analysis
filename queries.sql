Total Sales and Profit
SELECT SUM(Sales) AS Total_Sales,
       SUM(Profit) AS Total_Profit
FROM sales;

-- Profit Percentage
SELECT ROUND(SUM(Profit)*100.0 / SUM(Sales), 2) AS Profit_Percentage
FROM sales;

-- Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Region;

-- Profit by Category
SELECT Category, SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Category;

-- Top 3 Products
SELECT Product_Name, SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 3;

-- Monthly Sales Trend
SELECT strftime('%m', Order_Date) AS Month,
       SUM(Sales) AS Total_Sales
FROM sales
GROUP BY Month
ORDER BY Month;
