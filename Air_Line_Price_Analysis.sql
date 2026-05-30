create table flight (
airline varchar(60),
flight	varchar(60),
source_city	varchar(30),
departure_time varchar(50),
stops varchar(40),
arrival_time varchar(50),
destination_city varchar(40),
class varchar(50),
duration decimal(10,2),
days_left int,
price bigint 
)

select * from flight 

-- Find the total number of flights

select count(*) as Total_Flights
	from flight
 
-- Find the average ticket price

select airline,round(avg(price),2) as avg_price 
	from flight 
group by airline 


-- Find the minimum and maximum flight price

select min(price) as minimum_price,  
	   max(price) as maximum_price 
from flight 

-- Count flights by class

select airline, 
	count(airline) as Total_count
from flight  
group by airline


-- Find the most expensive flight

select * from flight 
order by price desc
limit 1


-- Count flights by source city

select source_city , 
	count(airline) as Total_flight 
from flight 
group by source_city 
order by total_flight desc


-- Number of flights with one stop

select count(*) as one_stop_flight
from flight 
where stops = 'zero'

-- Top 5 airlines by revenue

select airline, 
	sum(price) as Total_revenue
from flight 
group by airline 
order by Total_revenue desc 
limit 5

-- Average price by source and destination city

select source_city, destination_city ,
		round(avg(price),2) as avg_price 
from flight 
group by 1,2
order by avg_price desc  



-- Find airlines whose average price is above overall average

select airline,
	round(avg(price),2) as avg_price 
from flight 
group by airline 
having round(avg(price),2)>
		(select round(avg(price),2) from flight)

-- Rank airlines by average ticket price

select airline,
	round(avg(price),2) as avg_prrice ,
	rank() over(order by avg(price)) as rank 
from flight 
group by airline 
















