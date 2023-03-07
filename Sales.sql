--total category profit
select Category ,(sum(Profit)/(select sum(Profit)
from store))*100 as total_profit
from store 
group by Category
order by total_profit desc

--total sub-category profit
select Sub_Category,sum(profit) as total_profit
from store
group by Sub_Category
order by total_profit desc

--total category sales
select Category,(sum(Sales)/(select sum(Sales)
from store))*100 as total_sales
from store
group by Category
order by total_sales desc


--total category quantity
select Category,sum(Quantity) as total_Quantity
from store 
group by Category 
order by total_Quantity desc

--total sub-category sales
select Sub_Category , sum(Sales) as total_sales
from store
group by Sub_Category
order by total_sales desc 


--total sub-category Quantity
select Sub_Category,sum(Quantity) as total_quantity
from store 
group by Sub_Category 
order by total_quantity desc


--total region sales 
select Region , (sum(Sales)/(select sum(Sales)
from store))*100 as percentage_total_sales 
from store 
group by Region 
order by percentage_total_sales desc 



--total category discount
select Category,sum(Discount) as total_discount
from store 
group by Category 
order by total_discount desc 


--total sub-category discount
select Sub_Category,sum(Discount) as total_discount
from store 
group by Sub_Category 
order by total_discount desc 



--total segment sales 
select Segment ,(sum(Sales)/(select sum(Sales)
from store))*100 as percentage_total_sales
from store 
group by Segment 
order by percentage_total_sales desc 
 

 --total ship mode Quantity 
 select Ship_Mode,sum(Quantity)as total_Quantity 
 from store 
 group by Ship_Mode 
 order by total_Quantity desc 

--profit per year
select Order_Date,sum(Profit) as total_profit 
from store 
group by Order_Date
order by Order_Date 



