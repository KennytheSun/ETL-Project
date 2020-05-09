--Create Tables to store dataset information
drop table median_income_by_state;
Create table Median_Income_By_State(
	id serial primary key,
	State varchar,
	Median_Household_Income int,
	Median_Family_Income int
);

drop table sales_price_by_state;
Create table Sales_Price_by_State(
	id serial primary key,
	State varchar,
	Average_Sales_09_13 int
);

select * from sales_price_by_state;

select sales_price_by_state.state, sales_price_by_state.average_sales_09_13, median_income_by_state.median_household_income
from sales_price_by_state
inner join median_income_by_state
on sales_price_by_state.state = median_income_by_state.state;
