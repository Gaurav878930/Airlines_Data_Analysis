# ✈️ Flight Price Analysis Using SQL

##  Project Overview

This SQL project analyzes flight booking data to uncover pricing trends, airline performance, route popularity, and customer travel patterns.

The project demonstrates SQL skills such as:
- Data Retrieval
- Aggregations
- Joins
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- Business Analysis

---

## Database Information

Database: PostgreSQL

Table Name: flight

### Dataset Columns

| Column Name | Description |
|------------|-------------|
| airline | Airline Name |
| flight | Flight Number |
| source_city | Departure City |
| departure_time | Departure Time |
| stops | Number of Stops |
| arrival_time | Arrival Time |
| destination_city | Destination City |
| class | Flight Class |
| duration | Flight Duration |
| days_left | Days Remaining Before Departure |
| price | Ticket Price |

---

## Project Objectives

- Analyze airline performance
- Compare flight prices across airlines
- Identify expensive and affordable routes
- Study the impact of stops on pricing
- Analyze class-wise ticket prices
- Generate business insights using SQL

---

## SQL Concepts Used

### Basic SQL
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING

### Intermediate SQL
- CASE WHEN
- Subqueries
- Aggregate Functions

### Advanced SQL
- CTEs
- Window Functions
- RANK()
- DENSE_RANK()
- ROW_NUMBER()

---

##  Business Questions Solved

### 1. Total Number of Flights

```sql
select count(*) as Total_Flights
from flight;
```

### 2. Average Ticket Price by Airline

```sql
SELECT airline,
       ROUND(AVG(price),2) AS avg_price
FROM flight
GROUP BY airline
ORDER BY avg_price DESC;
```
### 4. Find the minimum and maximum flight price

```sql
SELECT  MIN(price) AS minimum_price,  
	   MAX(price) AS maximum_price 
FROM flight
```
### 5. Count flights by class
```sql
SELECT airline, 
	COUNT(airline) AS Total_count
FROM  flight  
GROUP BY  airline
```

### 6. Find the most expensive flight
```sql

SELECT  * FROM  flight 
ORDER  BY  price desc
LIMIT  1
```
### 7. Count flights by source city
```sql
SELECT  source_city , 
	COUNT(airline) AS Total_flight 
FROM  flight 
GROUP BY source_city 
ORDER BY total_flight desc
```


### 8. Top 5 Revenue Generating Airlines

```sql
SELECT airline,
       SUM(price) AS revenue
FROM flight
GROUP BY airline
ORDER BY revenue DESC
LIMIT 5;
```

### 9. Number of flights with one stop
```sql
SELECT COUNT(*) AS one_stop_flight
FROM  flight 
WHERE stops = 'zero'
```


### 10. Average price by source and destination city
```sql 
select source_city, destination_city ,
		round(avg(price),2) as avg_price 
from flight 
group by 1,2
order by avg_price desc  
```
### 11. Find airlines whose average price is above overall average
``` sql

SELECT  airline,
	ROUND(AVG(price),2) AS  avg_price 
FROM flight 
GROUP BY airline 
HAVING ROUND(AVG(price),2)>
		(SELECT ROUND(AVG(price),2) FROM flight)
```
### 12. Rank airlines by average ticket price
```sql
SELECT  airline,
	ROUND(AVG(price),2) AS avg_prrice ,
	RANK() OVER(ORDER BY AVG(price)) AS rank 
FROM flight 
GROUP BY  airline 
``` 

##  Key Insights

- Business class tickets are significantly more expensive than Economy class.
- Ticket prices increase as departure dates get closer.
- Some airlines consistently charge higher fares than competitors.
- Direct flights generally have higher average ticket prices.
- Certain routes generate the highest revenue for airlines.

---

## Skills Demonstrated

 SQL Query Writing

 Data Analysis

 Data Aggregation

 Window Functions

 Business Intelligence

 Problem Solving

 PostgreSQL

---

##  Project Outcome

Successfully analyzed flight booking data and generated actionable business insights using SQL. The project showcases the ability to solve real-world business problems through database querying and analytical thinking.

---

##  Author

Gaurav Kumar

Data Analyst | SQL | Power BI | Python | Excel

LinkedIn: (www.linkedin.com/in/gaurav-rajput-7736933b7)
