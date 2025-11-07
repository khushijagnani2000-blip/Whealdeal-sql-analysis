SELECT * FROM projects.car_sales_data;
-- PROJECT THEME: Analyzing Used Car Sales Dataset

-- Foundational Queries

-- Q1: List all distinct manufacturers available in the dataset. (basic understanding of dataset)

select manufacturer,count(model) as number_of_cars
from car_sales_data
group by Manufacturer;

-- Insight: There are 5 unique manufacturers in the dataset 

-- Q2: Find the total number of cars manufactured after and before 2015. (filtering by year)
 
SELECT 
    COUNT(CASE WHEN year_of_manufacture > 2015 THEN 1 END) AS new_stock,
    COUNT(CASE WHEN year_of_manufacture <= 2015 THEN 1 END) AS old_stock
FROM car_sales_data;

-- Insight:Out of 50,000 cars, 7811 were made after 2015, showing a less share of modern cars.

-- Q3: Show the average price of cars grouped by fuel type. (basic aggregation)
select fuel_type,avg(price)
from car_sales_data
group by Fuel_type;

-- Insight: "Hybrid cars have the highest average price, followed by petrol and diesel cars.

-- Exploratory Analysis

-- Q4: Find the top 5 most expensive cars in the dataset (manufacturer, model, price).
select Manufacturer,model
from car_sales_data
order by price desc
limit 5;
-- Insight: "Luxury brands like Porsche and BMW dominate the top 5 expensive cars.


-- Q5: Calculate the average mileage for each manufacturer, sorted by average mileage descending.
select Manufacturer, avg(mileage) 
from car_sales_data
group by Manufacturer
order by avg(mileage) desc;

-- Insight: VW cars tend to have higher mileage compared to luxury brands like Audi or Porsche.

-- Q6: Find all cars where the engine size is greater than 2.0 AND the price is below 20,000.
select model
from car_sales_data
where Engine_size>2.0 and Price<20000;

-- Insight: These cars are powerful but cheaper, possibly older models with high mileage.

-- Q7: Count the number of cars manufactured each year to see the trend over time.
select Year_of_manufacture,count(model) as stock
from car_sales_data
group by Year_of_manufacture
order by Year_of_manufacture desc;

-- Insight: Most cars were manufactured in 2018, showing peak production year.

-- Business Insights

-- Q8: Find the manufacturer whose cars have the highest average price overall.
select manufacturer, avg(price) as max_avg
from car_sales_data
group by Manufacturer
order by max_avg
limit 1;

-- Insight: VW has the highest average price, showing it’s the premium brand in this dataset.

-- Q9: For each manufacturer, show the model with the highest price (manufacturer, model, max price).

SELECT manufacturer, model, price
FROM (
    SELECT 
        manufacturer,
        model,
        price,
        RANK() OVER (PARTITION BY manufacturer ORDER BY price DESC) AS rnk
    FROM car_sales_data
) ranked
WHERE rnk = 1;

-- Insight: Each brand’s flagship/high-end model is highlighted, useful for marketing insights.


-- Q10: Find the top 3 manufacturers with the lowest average mileage, but only consider cars manufactured after 2010.

select manufacturer, avg(mileage)
from car_sales_data
where year_of_manufacture>2010
group by Manufacturer
order by avg(mileage)
limit 3
;
-- Insight:Luxury brands have lower mileage on average, possibly because they’re newer or less driven.

-- Q11: For each manufacturer, find pairs of models where one model is cheaper than the other 
SELECT a.manufacturer, 
       a.model AS cheaper_model, a.price AS cheaper_price,
       b.model AS expensive_model, b.price AS expensive_price
FROM car_sales_data a
JOIN car_sales_data b
  ON a.manufacturer = b.manufacturer 
 AND a.price < b.price;





