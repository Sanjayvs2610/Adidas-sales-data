use addidas_sales;

-- Retailer wise the Total amount of sales
select Retailer , Total_Sales from sales
group by Retailer
order by Total_Sales desc; 

-- Region wise number of state and number of cities in each region
select Region,count(state),count(City) from sales
group by Region
order by Region;

-- Sales method wise total Sales
select Sales_Method , Total_Sales from Sales
group by Sales_Method;

-- Units sold is greater than 1000 and their product_category name 
select Units_Sold , product_category from Sales
where Units_Sold>1000
group by product_category;  


select product_category,operating_margin from sales
where Operating_Margin>0.50
group by Product_Category;
/* These are the products whose profit are gretaer than 50% 