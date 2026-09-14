-- ==========================================
-- RETAIL SALES INTELLIGENCE
-- DATA EXPLORATION
-- ==========================================
use RetailSalesDB
go

-- ==========================================
-- 1. Preview Data
-- ==========================================
SELECT top 20 * 
from Sales

-- ==========================================
-- 2. Count Rows
-- ==========================================
select COUNT (*)
from Sales

-- ==========================================
-- 3. Check Date Range
-- ==========================================
select 
	min(orderdate) as FirstOrderDate,
	max(orderdate) as LastOrderDate
from sales

-- ==========================================
-- 4. Check Categories
-- ==========================================
select distinct Category
from Sales

-- ==========================================
-- 5. Check Cities
-- ==========================================
select distinct City
from Sales

-- ==========================================
-- 6. Check Sales Channels
-- ==========================================
select distinct SalesChannel
from Sales

-- ==========================================
-- 7. Check Payment Methods
-- ==========================================
select distinct PaymentMethod
from sales

-- ==========================================
-- 8. Check Order Status
-- ==========================================
select distinct OrderStatus
from sales

-- ==========================================
-- 9. Check Sales Statistics
--MIN,MAX,AVG,SUM
-- ==========================================
select 
	MIN(SalesAmount) as MinSales,
	MAX(SalesAmount) as MaxSales,
	Avg(SalesAmount) as AvgSales,
	Sum(SalesAmount) as TotalSales
from sales

-- ==========================================
-- 10. Check Profit Statistics
----MIN,MAX,AVG,SUM
-- ==========================================
Select
	Min(Profit) as MinProfit,
	Max(Profit) as MaxProfit,
	Avg(Profit) as AvgProfit,
	Sum(Profit) as MinProfit
from Sales
